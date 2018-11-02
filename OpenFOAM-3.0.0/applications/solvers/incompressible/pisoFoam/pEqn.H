volScalarField rAU(1.0/UEqn.A());
volVectorField HbyA("HbyA", U);
HbyA = rAU*UEqn.H();
Timer::startTimer("phiHbyA pEqn");
surfaceScalarField phiHbyA
(
    "phiHbyA",
    (fvc::interpolate(HbyA) & mesh.Sf())
  + fvc::interpolate(rAU)*fvc::ddtCorr(U, phi)
);
Timer::endTimer("phiHbyA pEqn");

MRF.makeRelative(phiHbyA);

adjustPhi(phiHbyA, U, p);

// Non-orthogonal pressure corrector loop
while (piso.correctNonOrthogonal())
{
    // Pressure corrector

Timer::startTimer("construct pEqn");
    fvScalarMatrix pEqn
    (
        fvm::laplacian(rAU, p) == fvc::div(phiHbyA)
    );
Timer::endTimer("construct pEqn");

    pEqn.setReference(pRefCell, pRefValue);

Timer::startTimer("solve pEqn");
    pEqn.solve(mesh.solver(p.select(piso.finalInnerIter())));
Timer::endTimer("solve pEqn");

    if (piso.finalNonOrthogonalIter())
    {
        phi = phiHbyA - pEqn.flux();
    }
}

Timer::startTimer("grad pEqn");
#include "continuityErrs.H"

U = HbyA - rAU*fvc::grad(p);
U.correctBoundaryConditions();
fvOptions.correct(U);
Timer::endTimer("grad pEqn");
