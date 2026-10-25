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
    object      k;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
//
//  k freestream  = 3.9e-3 m²/s²
//  TI            = 0.1%  (√(2k/3)/U = √(2×3.9e-3/3)/51 = 0.001 ✓)
//  νt/ν          = k/(ω×ν) = 3.9e-3/(727×2.55e-5) = 0.21  (matches SA)
//
//  Wall BC: fixedValue 0
//    Required for wall-resolved SST (y+ < 1).
//    k=0 at the wall is the exact viscous BC.
//    Do NOT use kqRWallFunction — that is a zero-gradient (Neumann) BC
//    appropriate only for wall-function mode (y+ = 30-300).
//
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 3.9e-3;

boundaryField
{
    inlet
    {
        type            freestream;
        freestreamValue uniform 3.9e-3;
    }
    outlet
    {
        type            freestream;
        freestreamValue uniform 3.9e-3;
    }
    top
    {
        type            freestream;
        freestreamValue uniform 3.9e-3;
    }
    bottom
    {
        type            freestream;
        freestreamValue uniform 3.9e-3;
    }

    airfoil
    {
        // Wall-resolved: k = 0 exactly at wall (viscous BC)
        type            fixedValue;
        value           uniform 0;
    }

    frontAndBack
    {
        type            empty;
    }
}

// ************************************************************************* //
