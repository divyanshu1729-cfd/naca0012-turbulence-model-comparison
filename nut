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
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -1 0 0 0 0];

internalField   uniform 7.65e-5;

boundaryField
{
    inlet
    {
        type            calculated;
        value           uniform 7.65e-5;
    }

    outlet
    {
        type            calculated;
        value           uniform 7.65e-5;
    }

    top
    {
        type            calculated;
        value           uniform 7.65e-5;
    }

    bottom
    {
        type            calculated;
        value           uniform 7.65e-5;
    }

    airfoil
    {
        type            nutLowReWallFunction;
        value           uniform 0;
    }

    frontAndBack
    {
        type            empty;
    }
}

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
