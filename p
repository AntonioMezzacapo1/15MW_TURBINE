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
    object      p;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

pOut            101325;

dimensions      [1 -1 -2 0 0 0 0];

// dimensions      [0 2 -2 0 0 0 0];


    
internalField   uniform $pOut;

boundaryField
{
    inlet
    {
        type            zeroGradient;
    }

    outlet
    {
        type            fixedValue;
        value           $internalField;
    }
    
    wall
    {
        type            zeroGradient;
    }

    
    blade
    {
    	type            zeroGradient;
    }

    masterAMI
    {
        type            cyclicAMI;
       value           $internalField;
    }

    slaveAMI
    {
        type            cyclicAMI;
       value           $internalField;
    }

   
}


    #includeEtc "caseDicts/setConstraintTypes"

// ************************************************************************* //
