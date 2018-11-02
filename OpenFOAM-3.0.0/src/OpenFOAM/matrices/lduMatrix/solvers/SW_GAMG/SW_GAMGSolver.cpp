/*---------------------------------------------------------------------------*\
Copyright (C) 2011 OpenFOAM Foundation
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

#include "SW_GAMGSolver.hpp"
#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include "SW_Amul_translate.hpp"
#include "SW_ChebyIfpack2srPCG.hpp"
#include <sstream>
#include <assert.h>
#include "sw_struct.h"
#include "vectorOps.h"
#include "mpi.h"

#if(SWTIMER)
#include "Timers.hpp"
#endif

// * * * * * * * * * * * * * * Static Data Members * * * * * * * * * * * * * //

namespace Foam
{
    defineTypeNameAndDebug(SW_GAMGSolver, 0);

    lduMatrix::solver::addsymMatrixConstructorToTable<SW_GAMGSolver>
        addSW_GAMGSolverMatrixConstructorToTable_;

    lduMatrix::solver::addasymMatrixConstructorToTable<SW_GAMGSolver>
        addSW_GAMGAsymSolverMatrixConstructorToTable_;

    amul_translate_array ** SW_GAMGSolver::_matrix_traslate;
    amul_para *SW_GAMGSolver::_amul_parameter;
    int SW_GAMGSolver::if_first = 1;
    refilltion *SW_GAMGSolver::_refill;
    int SW_GAMGSolver::_coarseLevel;
}


// * * * * * * * * * * * * * * * * Constructors  * * * * * * * * * * * * * * //

Foam::SW_GAMGSolver::SW_GAMGSolver
(
    const word& fieldName,
    const lduMatrix& matrix,
    const FieldField<Field, scalar>& interfaceBouCoeffs,
    const FieldField<Field, scalar>& interfaceIntCoeffs,
    const lduInterfaceFieldPtrsList& interfaces,
    const dictionary& solverControls
)
:
    GAMGSolver
    (
        fieldName,
        matrix,
        interfaceBouCoeffs,
        interfaceIntCoeffs,
        interfaces,
        solverControls
    ),
    usingSmootherCoarest_(false)
{

    MAX_SW_USING_CORASE_LEVELS = init_MAX_SW_USING_CORASE_LEVELS();
    // init using SmootherCoarsest

    controlDict_.readIfPresent("usingSmootherCoarest", usingSmootherCoarest_);
    // int using_coaseLevels;

    //my_printf_int(MAX_SW_USING_CORASE_LEVELS);
    //controlDict_.readIfPresent("maxSWUingCoarseLevels",MAX_SW_USING_CORASE_LEVELS);
    if(MAX_SW_USING_CORASE_LEVELS > 0 )
    {
        register  label nFaces = matrix.upper().size();
        const scalar* upperPtr = matrix.upper().begin();
        const scalar* lowerPtr = matrix.lower().begin();
        const label* uPtr = matrix.lduAddr().upperAddr().begin();
        const label* lPtr = matrix.lduAddr().lowerAddr().begin();
        const scalar* diagPtr =matrix.diag().begin();

        int coarseLevel_num = matrixLevels_.size();
        int coarseLevel_i;
        if(if_first)
        {
            SW_ChebyIfpack2srPCG::SET_MAX_SW_USING_CORASE_LEVELS(MAX_SW_USING_CORASE_LEVELS);
            _matrix_traslate = (amul_translate_array**) malloc(sizeof(amul_translate_array*)*(coarseLevel_num+1));
            _amul_parameter = (amul_para*)malloc(sizeof(amul_para)*(coarseLevel_num+1));
            _refill = (refilltion*)malloc(sizeof(refilltion)*(coarseLevel_num+1));
            register label nCells = matrix.diag().size();

            _amul_parameter[0].diagPtr = (SCALAR*)(&diagPtr[0]);

            _amul_parameter[0].lowerPtr = (SCALAR*)(&lowerPtr[0]);
            _amul_parameter[0].upperPtr = (SCALAR*)(&upperPtr[0]);
            _amul_parameter[0].lPtr = (LABEL*)(&lPtr[0]);
            _amul_parameter[0].uPtr = (LABEL*)(&uPtr[0]);
            _amul_parameter[0].nFaces = nFaces;
            _amul_parameter[0].nCells = nCells;

            int _amul_parameter_clumn_size = ROUNDING_UP(nCells,OFFSET_SIZE);

            _refill[0] = translate_matrix_matrix(_matrix_traslate[0],
                                                 &_amul_parameter[0],
                                                 _amul_parameter_clumn_size,
                                                 OFFSET_SIZE);

            for(coarseLevel_i=0; coarseLevel_i<MAX_SW_USING_CORASE_LEVELS-1; coarseLevel_i++)
            {
                const lduMatrix & tmpmatrix = matrixLevels_[coarseLevel_i];
                nCells = tmpmatrix.diag().size();
                nFaces = tmpmatrix.upper().size();
                upperPtr = tmpmatrix.upper().begin();
                lowerPtr = tmpmatrix.lower().begin();
                uPtr = tmpmatrix.lduAddr().upperAddr().begin();
                lPtr = tmpmatrix.lduAddr().lowerAddr().begin();
                diagPtr = tmpmatrix.diag().begin();

                _amul_parameter[coarseLevel_i+1].diagPtr = (SCALAR*)(&diagPtr[0]);

                _amul_parameter[coarseLevel_i+1].lowerPtr = (SCALAR*)(&lowerPtr[0]);
                _amul_parameter[coarseLevel_i+1].upperPtr = (SCALAR*)(&upperPtr[0]);
                _amul_parameter[coarseLevel_i+1].lPtr = (LABEL*)(&lPtr[0]);
                _amul_parameter[coarseLevel_i+1].uPtr = (LABEL*)(&uPtr[0]);
                _amul_parameter[coarseLevel_i+1].nFaces = nFaces;
                _amul_parameter[coarseLevel_i+1].nCells = nCells;
                _amul_parameter_clumn_size = ROUNDING_UP(nCells, OFFSET_SIZE);
                _refill[coarseLevel_i+1] = translate_matrix_matrix((_matrix_traslate[coarseLevel_i+1]),
                                                                   &(_amul_parameter[coarseLevel_i+1]),
                                                                   _amul_parameter_clumn_size,
                                                                   OFFSET_SIZE);
            }
            if_first = 0 ;
        }
        else
        {
            diagPtr = matrix.diag().begin();
            _amul_parameter[0].diagPtr = (SCALAR*)(&diagPtr[0]);

            _refill[0].lowerPtr = (SCALAR*)&(lowerPtr[0]);
            _refill[0].upperPtr = (SCALAR*)&(upperPtr[0]);
            translate_refill_data(&_refill[0]) ;
            for(coarseLevel_i = 0 ; coarseLevel_i < MAX_SW_USING_CORASE_LEVELS - 1; coarseLevel_i++)
            {
                const lduMatrix & tmpmatrix = matrixLevels_[coarseLevel_i];

                diagPtr = tmpmatrix.diag().begin();
                upperPtr = tmpmatrix.upper().begin();
                lowerPtr = tmpmatrix.lower().begin();

                _amul_parameter[coarseLevel_i+1].diagPtr = (SCALAR*)(&diagPtr[0]);

                _refill[coarseLevel_i+1].lowerPtr = (SCALAR*)&(lowerPtr[0]);
                _refill[coarseLevel_i+1].upperPtr = (SCALAR*)&(upperPtr[0]);
                translate_refill_data(&_refill[coarseLevel_i+1]) ;
            }
        }
    }
}

int Foam::SW_GAMGSolver::init_MAX_SW_USING_CORASE_LEVELS()
{
    int i = 0 ;
    const int coarseLevel_num = matrixLevels_.size();
    for (i=0; i<coarseLevel_num; ++i)
    {
        const lduMatrix & tmpmatrix = matrixLevels_[i];
        int nCells = tmpmatrix.diag().size();
        if(nCells < MAXCELLS )
        {
            break;
        }
    }
    return i + 1 ;
}

Foam::solverPerformance Foam::SW_GAMGSolver::solve
(
    scalarField& psi,
    const scalarField& source,
    const direction cmpt
) const
{
    // Setup class containing solver performance data
    solverPerformance solverPerf(typeName, fieldName_);

    label xSize = psi.size();
    MVM_Arrays arrays1;

    // Calculate A.psi used to calculate the initial residual
    scalarField Apsi(xSize);

#if(SWTIMER)
Timer::startTimer("swGAMG Amul");
#endif
    // matrix_.Amul(Apsi, psi, interfaceBouCoeffs_, interfaces_, cmpt);
    SW_AMUL_COARSE_RELATION_REDESIGNED(matrix_,
                            Apsi,
                            psi,
                            interfaceBouCoeffs_,
                            interfaces_,
                            cmpt,
                            &_amul_parameter[0],
                            _matrix_traslate[0],
                            0);
#if(SWTIMER)
Timer::endTimer("swGAMG Amul");
#endif

    // Create the storage for the finestCorrection which may be used as a
    // temporary in normFactor
    scalarField finestCorrection(xSize);

    // Calculate normalisation factor and initial residual
    scalarField finestResidual(xSize);

    scalar vec_temp1[2], vec_temp2[2];
    if(xSize < accUsingSize)
    {
        finestResidual = source - Apsi;
        vec_temp1[0] = sumMag(finestResidual);
        vec_temp1[1] = sumMag(source);
    }
    else
    {
        init_MVM_Arrays(&arrays1, xSize);
        arrays1.A1Ptr = (SCALAR*)&(finestResidual[0]);
        arrays1.A2Ptr = (SCALAR*)&(source[0]);
        arrays1.A3Ptr = (SCALAR*)&(Apsi[0]);
        arrays1.k1Ptr = &vec_temp1[0];
        arrays1.k2Ptr = &vec_temp1[1];
        // finestResidual = source - Apsi;
        // normFactor += fabs(source)
        residualNormFactor_host(&arrays1);
    }

#if(SWTIMER)
Timer::startTimer("swGAMG reduce");
#endif
    if(UPstream::parRun())
    {
        MPI_Allreduce(&vec_temp1, &vec_temp2, 2, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
    }
    else
    {
        vec_temp2[0] = vec_temp1[0];
        vec_temp2[1] = vec_temp1[1];
    }
#if(SWTIMER)
Timer::endTimer("swGAMG reduce");
#endif

    const scalar normFactor = 2 * vec_temp2[1] + solverPerf.small_;
    solverPerf.initialResidual() = vec_temp2[0] / normFactor;

    // Calculate normalisation factor
    // scalar normFactor = this->normFactor(psi, source, Apsi, finestCorrection);

    // if (debug >= 2)
    // {
    //     Pout<< "   Normalisation factor = " << normFactor << endl;
    // }

    // // Calculate initial finest-grid residual field
    // scalarField finestResidual(source - Apsi);

    // // Calculate normalised residual for convergence test
    // solverPerf.initialResidual() = gSumMag(finestResidual)/normFactor;

    // Calculate normalised residual for convergence test
    solverPerf.finalResidual() = solverPerf.initialResidual();

    // Check convergence, solve if not converged
    if
    (
        minIter_ > 0
     || !solverPerf.checkConvergence(tolerance_, relTol_)
    )
    {
        // Create coarse grid correction fields
        PtrList<scalarField> coarseCorrFields;

        // Create coarse grid sources
        PtrList<scalarField> coarseSources;

        // Create the smoothers for all levels
        PtrList<lduMatrix::smoother> smoothers;

        // Initialise the above data structures
        initVcycle(coarseCorrFields, coarseSources, smoothers);

        do
        {
#if(SWTIMER)
Timer::startTimer("Vcycle");
#endif
            Vcycle
            (
                smoothers,
                psi,
                source,
                Apsi,
                finestCorrection,
                finestResidual,
                coarseCorrFields,
                coarseSources,
                cmpt
            );
#if(SWTIMER)
Timer::endTimer("Vcycle");
#endif

#if(SWTIMER)
Timer::startTimer("swGAMG Amul");
#endif
            // Calculate finest level residual field
            // matrix_.Amul(Apsi, psi, interfaceBouCoeffs_, interfaces_, cmpt);
            SW_AMUL_COARSE_RELATION_REDESIGNED(matrix_,
                                    Apsi,
                                    psi,
                                    interfaceBouCoeffs_,
                                    interfaces_,
                                    cmpt,
                                    &_amul_parameter[0],
                                    _matrix_traslate[0],
                                    0);
#if(SWTIMER)
Timer::endTimer("swGAMG Amul");
#endif

            if(xSize < accUsingSize)
            {
                finestResidual = source - Apsi;
                solverPerf.finalResidual() = gSumMag(finestResidual)/normFactor;
            }
            else
            {
                scalar rTemp;
                init_MVM_Arrays(&arrays1, xSize);
                arrays1.A1Ptr = (SCALAR*)&(finestResidual[0]);
                arrays1.A2Ptr = (SCALAR*)&(source[0]);
                arrays1.A3Ptr = (SCALAR*)&(Apsi[0]);
                arrays1.k1Ptr = &rTemp;
                // finestResidual = source - Apsi;
                gSum_host(&arrays1, &slave_userFunc_residualSum);
#if(SWTIMER)
Timer::startTimer("swGAMG reduce");
#endif
                reduce(rTemp, sumOp<scalar>());
#if(SWTIMER)
Timer::endTimer("swGAMG reduce");
#endif
                solverPerf.finalResidual() = rTemp/normFactor;
            }
            // Info << "After one Vcycle" << endl;

            if (debug >= 2)
            {
                solverPerf.print(Info.masterStream(matrix().mesh().comm()));
            }
        } while
        (
            (
              ++solverPerf.nIterations() < maxIter_
            && !solverPerf.checkConvergence(tolerance_, relTol_)
            )
         || solverPerf.nIterations() < minIter_
        );
    }

    return solverPerf;
}

// * * * * * * * * * * * * * * * * Destructor  * * * * * * * * * * * * * * * //

Foam::SW_GAMGSolver::~SW_GAMGSolver()
{

}


// * * * * * * * * * * * * * Private Member Functions  * * * * * * * * * * * //


// ************************************************************************* //
