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
    object      k;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 0.007384;

boundaryField
{

    inlet
    {
        type            fixedValue; 
        value           uniform 0.007384;
    }

    outlet
    {
        type            zeroGradient;
        
    }
    
    blade
    {
        type            kqRWallFunction;
        //type            fixedValue; 
        value           uniform  0.007384;
    }
    
    wall
    {
        type            slip;
    }
    
    masterAMI
    {
        type            cyclicAMI;
  value           uniform 0.007384;
    }

    slaveAMI
    {
        type            cyclicAMI;
  value           uniform 0.007384;
    }

}

// ************************************************************************* //
