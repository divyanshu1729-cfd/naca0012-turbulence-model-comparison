/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  13
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    format      ascii;
    class       volScalarField;
    object      nut;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
//
//  CRITICAL FIX: nutkWallFunction → nutLowReWallFunction
//
//  nutkWallFunction: uses log-law to compute νt from u_τ.
//    Assumes y+ = 30–300. Returns νt = κ·u_τ·y⁺ / (log(E·y⁺)) – ν
//    At y+ < 5 this formula gives negative or nonsensical νt → explosion.
//
//  nutLowReWallFunction: returns νt = 0 at wall (viscous BC), correct for
//    wall-resolved approach. Compatible with omegaWallFunction on omega.
//    Required when y+ < 1 everywhere on the airfoil.
//
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -1 0 0 0 0];

internalField   uniform 5.37e-6;   // k/omega = 3.9e-3/727

boundaryField
{
    inlet
    {
        type            calculated;
        value           uniform 5.37e-6;
    }
    outlet
    {
        type            calculated;
        value           uniform 5.37e-6;
    }
    top
    {
        type            calculated;
        value           uniform 5.37e-6;
    }
    bottom
    {
        type            calculated;
        value           uniform 5.37e-6;
    }

    airfoil
    {
        // Low-Re wall function: νt = 0 at wall. Correct for y+ < 1.
        type            nutLowReWallFunction;
        value           uniform 0;
    }

    frontAndBack
    {
        type            empty;
    }
}

// ************************************************************************* //
