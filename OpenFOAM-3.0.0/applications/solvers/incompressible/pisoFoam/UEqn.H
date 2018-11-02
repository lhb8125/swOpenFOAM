// Solve the Momentum equation

MRF.correctBoundaryVelocity(U);

Timer::startTimer("construct UEqn");
fvVectorMatrix UEqn
(
    fvm::ddt(U) + fvm::div(phi, U)
  + MRF.DDt(U)
  + turbulence->divDevReff(U)
 ==
    fvOptions(U)
);
Timer::endTimer("construct UEqn");

UEqn.relax();

fvOptions.constrain(UEqn);

if (piso.momentumPredictor())
{
Timer::startTimer("solve UEqn");
    solve(UEqn == -fvc::grad(p));
Timer::endTimer("solve UEqn");

    fvOptions.correct(U);
}
