// 1. build an object array of distances(sample for sample code only, give in m as in maps)

distanceInput = 5010



// 2. declare distance variable
// - -  can call distance.valueOf(); OR set variable in js where called in text; declare carbon variables


// Transit Type - wrap in a function
// emissions variables in kgCO2e per km
function getEmissions(){
  distanceInput = 5010
  var emissionsGasCar = 0.23606;
  var emissionsHeavyRail = 0.04885;
  var emissionsLRT = 0.05363;
  var emissionsLocalBus = 0.10172
  var emissionsSubway = 0.05789
  var emissionsFerry = 0.11606
    function calculateEmissions(distance, transit) {
      emissions = distance * transit;
      console.log(emissions);
    }; //this function works when called
  return calculateEmissions(distanceInput, emissionsGasCar);
};//use this for switch

getEmissions();

// Vehicle Type - wrap in a function
// car emissions rates from US values
var driveEmissionsGas = 0.23606;
var emissionsGasScooter = 0.11978; //UK value
var driveEmissionsDiesel = 0.27361;
var driveEmissionsHybrid = 0.16459;
var driveEmissionsMotorcycle = 0.12762;
var driveEmissionsFourByFour = 0.23514;
var driveEmissionsFourSports = 0.23691;




// 3. choosing mode of transit:
// switch (cases) - walking, driving, transit
  // if transit; ask whether subway, streetcar, bus, train in dropdown (can break it down by legs at a future point)



  // if driving, ask what type of car in dropdown

// 4. setup metrics

// 5. calculated score

// 6. return result + scores
