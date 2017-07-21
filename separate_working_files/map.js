// 1. build an object array of distances(sample for sample code only, give in m as in maps)

distanceInput = 13157;

function calculateEmissions(distance, transit) {
  distance = distanceInput / 1000;
  emissions = (distance * transit);
  console.log(emissions);
}; //this function works when called

// 2. declare distance variable
// - -  can call distance.valueOf(); OR set variable in js where called in text; declare carbon variables

// 3. choosing mode of transit:
// switch (cases) - walking, driving, transit
  // if transit; ask whether subway, streetcar, bus, train in dropdown (can break it down by legs at a future point)

  // 4. setup metrics

// Transit Type - wrap in a function
// emissions variables in kgCO2e per km
function getTransitEmissions(){
  var emissionsGasCar = 0.23606;
  var emissionsHeavyRail = 0.04885;
  var emissionsLRT = 0.05363;
  var emissionsLocalBus = 0.10172
  var emissionsSubway = 0.05789
  var emissionsFerry = 0.11606
  // if #transit-types id=
  calculateEmissions(distanceInput, emissionsLocalBus)
};//use this for switch cases; options laid out in test_map.html


getTransitEmissions();

// form starts here- still trying to append the result
// finalTransitEmissions = getTransitEmissions();
// var selectTransit = document.selectElementById('transit_display');
// selectTransit.innerHTML = finalResult;
// form ends here

// event listener

varheavyRailSelect = document.forms['#heavy-rail'];
var emissionsHeavyRail = 0.04885;


// Vehicle Type - wrap in a function
// car emissions rates from US values

// if driving, ask what type of car in dropdown

function getDriveEmissions(){
  var driveEmissionsGas = 0.23606;
  var driveEmissionsGasScooter = 0.11978; //UK value
  var driveEmissionsDiesel = 0.27361;
  var driveEmissionsHybrid = 0.16459;
  var driveEmissionsMotorcycle = 0.12762;
  var driveEmissionsFourByFour = 0.23514;
  var driveEmissionsSports = 0.23691;
  return calculateEmissions(distanceInput, driveEmissionsSports)
};

getDriveEmissions();




// 5. calculated score

// 6. return result + scores
