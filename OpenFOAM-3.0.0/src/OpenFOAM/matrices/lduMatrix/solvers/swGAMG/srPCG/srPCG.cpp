/*---------------------------------------------------------------------------*\
Copyright (C) 2011 OpenFOAM Foundation
Copyright (C) 2014 Applied CCM
-------------------------------------------------------------------------------
License
    This file is part of CAELUS.

    CAELUS is free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    CAELUS is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
    FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
    for more details.

    You should have received a copy of the GNU General Public License
    along with CAELUS.  If not, see <http://www.gnu.org/licenses/>.

\*---------------------------------------------------------------------------*/

#include "srPCG.hpp"
#include "vector2D.H"
#include "mpi.h"

#include "SW_Amul.h"

#if(SWTIMER)
#include "Timers.hpp"
#endif

namespace Foam
{
    defineTypeNameAndDebug(srPCG, 0);

    lduMatrix::solver::addsymMatrixConstructorToTable<srPCG>
        addsrPCGSymMatrixConstructorToTable_;
}

Foam::srPCG::srPCG
(
    const word& fieldName,
    const lduMatrix& matrix,
    const FieldField<Field, scalar>& interfaceBouCoeffs,
    const FieldField<Field, scalar>& interfaceIntCoeffs,
    const lduInterfaceFieldPtrsList& interfaces,
    const dictionary& solverControls
)
:
    lduMatrix::solver
    (
        fieldName,
        matrix,
        interfaceBouCoeffs,
        interfaceIntCoeffs,
        interfaces,
        solverControls
    )
{}

Foam::srPCG::srPCG
(
    const word& fieldName,
    const lduMatrix& matrix,
    const FieldField<Field, scalar>& interfaceBouCoeffs,
    const FieldField<Field, scalar>& interfaceIntCoeffs,
    const lduInterfaceFieldPtrsList& interfaces,
    const scalar tolerance,
    const scalar relTol
)
:
    lduMatrix::solver
    (
        fieldName,
        matrix,
        interfaceBouCoeffs,
        interfaceIntCoeffs,
        interfaces,
        solverDict(tolerance, relTol)
    )
{}


Foam::dictionary Foam::srPCG::solverDict
(
    const scalar tol,
    const scalar relTol
)
{
    dictionary dict(IStringStream("solver PCG; preconditioner DIC;")());
    dict.add("tolerance", tol);
    dict.add("relTol", relTol);

    return dict;
}


Foam::dictionary Foam::srPCG::solverDict
(
    Istream& is
)
{
    scalar tol(readScalar(is));
    scalar relTol(readScalar(is));

    return solverDict(tol, relTol);
}

Foam::solverPerformance Foam::srPCG::solve
(
    scalarField& x,
    const scalarField& b,
    const direction cmpt
) const
{
    // Setup class containing solver performance data
    solverPerformance solverPerf
    (
        lduMatrix::preconditioner::getName(controlDict_) + typeName,
        fieldName_
    );

    register label nCells = x.size();

    scalar* __restrict__ xPtr = x.begin();

    scalarField p(nCells);
    scalar* __restrict__ pPtr = p.begin();

    scalarField w(nCells);
    scalar* __restrict__ wPtr = w.begin();

    scalar rho = solverPerf.great_;
    scalar rhoOld = rho;

#if(SWTIMER)
Timer::startTimer("srPCG Amul");
#endif
    // Calculate A.x
    // matrix_.Amul(w, x, interfaceBouCoeffs_, interfaces_, cmpt);
    GAMGAmulRedesigned(matrix_, w, x, interfaceBouCoeffs_, interfaces_, cmpt);
#if(SWTIMER)
Timer::endTimer("srPCG Amul");
#endif

    // Calculate initial residual field
    scalarField r(b - w);
    scalar* __restrict__ rPtr = r.begin();

    scalarField niu(nCells);
    scalar* __restrict__ niuPtr = niu.begin();

    scalarField s(nCells);
    scalar* __restrict__ sPtr = s.begin();

    // Calculate normalisation factor
    scalar normFactor = this->normFactor(x, b, w, p);

    if (lduMatrix::debug >= 2)
    {
        Info<< "   Normalisation factor = " << normFactor << endl;
    }

#if(SWTIMER)
Timer::startTimer("srPCG reduce");
#endif
    // Calculate normalised residual norm
    solverPerf.initialResidual() = gSumMag(r)/normFactor;
#if(SWTIMER)
Timer::endTimer("srPCG reduce");
#endif

    solverPerf.finalResidual() = solverPerf.initialResidual();

    // Check convergence, solve if not converged
    if
    (
        minIter_ > 0
     || !solverPerf.checkConvergence(tolerance_, relTol_)
    )
    {
        // Select and construct the preconditioner
        autoPtr<lduMatrix::preconditioner> preconPtr =
        lduMatrix::preconditioner::New
        (
            *this,
            controlDict_
        );

        scalar wApA = 0.0;

        do
        {
            rhoOld = rho;
            rho    = 0.0;

#if(SWTIMER)
Timer::startTimer("srPCG precondition");
#endif
            // Apply preconditioner
            preconPtr->precondition(w, r, cmpt);
#if(SWTIMER)
Timer::endTimer("srPCG precondition");
#endif

            for (register label cell=0; cell<nCells; cell++)
            {
                rho +=  wPtr[cell] * rPtr[cell];
            }

            if (solverPerf.nIterations() == 0)
            {
                for (register label cell=0; cell<nCells; ++cell)
                {
                    pPtr[cell] = wPtr[cell];
                }

#if(SWTIMER)
Timer::startTimer("srPCG Amul");
#endif
                // Update preconditioned residual
                // matrix_.Amul(niu, p, interfaceBouCoeffs_, interfaces_, cmpt);
                GAMGAmulRedesigned(matrix_, niu, p, interfaceBouCoeffs_, interfaces_, cmpt);
#if(SWTIMER)
Timer::endTimer("srPCG Amul");
#endif

                wApA = 0.0;
                for (register label cell=0; cell<nCells; cell++)
                {
                    wApA +=  niuPtr[cell] * pPtr[cell];
                }
                scalar rd1[2], rd2[2];
                rd1[0] = rho;
                rd1[1] = wApA;
#if(SWTIMER)
Timer::startTimer("srPCG reduce");
#endif
                if(UPstream::parRun())
                {
                    MPI_Allreduce(&rd1, &rd2, 2, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
                    rho   = rd2[0];
                    wApA  = rd2[1];
                }
#if(SWTIMER)
Timer::endTimer("srPCG reduce");
#endif
            }
            else
            {
#if(SWTIMER)
Timer::startTimer("srPCG Amul");
#endif
                // matrix_.Amul(s, w, interfaceBouCoeffs_, interfaces_, cmpt);
                GAMGAmulRedesigned(matrix_, s, w, interfaceBouCoeffs_, interfaces_, cmpt);
#if(SWTIMER)
Timer::endTimer("srPCG Amul");
#endif

                scalar delta = 0.0;
                for (register label cell=0; cell<nCells; ++cell)
                {
                    delta += wPtr[cell] * sPtr[cell];
                }

                scalar rd1[2], rd2[2];
                rd1[0] = rho;
                rd1[1] = delta;
#if(SWTIMER)
Timer::startTimer("srPCG reduce");
#endif
                if(UPstream::parRun())
                {
                    MPI_Allreduce(&rd1, &rd2, 2, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
                    rho   = rd2[0];
                    delta = rd2[1];
                }
#if(SWTIMER)
Timer::endTimer("srPCG reduce");
#endif

                scalar beta = rho / rhoOld;

                for (register label cell=0; cell<nCells; ++cell)
                {
                    pPtr[cell]   = wPtr[cell] + beta*pPtr[cell];
                    niuPtr[cell] = sPtr[cell] + beta*niuPtr[cell];
                }

                wApA  = delta - beta * beta * wApA;
            }

            // Update solution and residual:
            scalar alpha = rho / wApA;

            for (register label cell=0; cell<nCells; ++cell)
            {
                xPtr[cell] += alpha * pPtr[cell];
                rPtr[cell] -= alpha * niuPtr[cell];
            }

#if(SWTIMER)
Timer::startTimer("srPCG reduce");
#endif
            solverPerf.finalResidual() = gSumMag(r)/normFactor;
#if(SWTIMER)
Timer::endTimer("srPCG reduce");
#endif

        }while
        (
            (
                solverPerf.nIterations()++ < maxIter_
            && !solverPerf.checkConvergence(tolerance_, relTol_)
            )
         || solverPerf.nIterations() < minIter_
        );
    }
    return solverPerf;
}


