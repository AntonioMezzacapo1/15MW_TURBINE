/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  9
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
  
    format      ascii;
    class       volScalarField;
    location    "0";
    object      nut;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -1 0 0 0 0];

internalField   uniform 0;

boundaryField
{

    inlet
    {
        type            calculated; 
        value           uniform 0;
    }
    outlet
    {
        type            calculated;
        value           uniform 0;
    }
    blade
    {
        type            nutkWallFunction;
        value           uniform 0;
    }
    wall
    {
        type            slip;
    }
    masterAMI
    {
        type            cyclicAMI;
    value           uniform 0;

    }
    slaveAMI
    {
        type            cyclicAMI;
    value           uniform 0;
    }

}

// ************************************************************************* //
