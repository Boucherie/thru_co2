console.log('in calculators.js');



function calculateEmissions(distanceInput, transit) {
  distanceInKilometers = distanceInput / 1000;
  emissions = (distanceInKilometers * transit);
  console.log(emissions);
}; //this function works when called



function getTransitOptions(distanceInput){
  var t = document.getElementById("transit-options");
  var transitOptions = t.options[t.selectedIndex].value;
  var transit = parseFloat(transitOptions);
  console.log(transit);
  calculateEmissions(distanceInput, transit);
};

function getDrivingOptions(distanceInput){
  var d = document.getElementById("transit-options");
  var transitOptions = d.options[d.selectedIndex].value;
  var transit = parseFloat(DrivingOptions);
  console.log(transit);
  calculateEmissions(distanceInput, transit);
};

function getBicyclingOptions(distanceInput){
  var transit = 0.025;
  console.log(transit);
  calculateEmissions(distanceInput, transit);
};

function getWalkingOptions(distanceInput){
  var transit = 0.04;
  console.log(transit);
  calculateEmissions(distanceInput, transit);
};

// choosing an option
function clickWalkButton(distanceInput){
var chooseWalk = document.querySelector('#pick-walking')
chooseWalk.addEventListener('click', function(distanceInput) {
    e.preventDefault();
    getWalkingOptions(distanceInput);
  });
};

function clickBicyclingButton(distanceInput){
var chooseBike = document.querySelector('#pick-bicycling')
chooseBike.addEventListener('click', function(distanceInput) {
    e.preventDefault();
    getBicyclingOptions(distanceInput);
  });
};

function clickTransitButton(distanceInput){
var chooseTransit = document.querySelector('#pick-transit')
chooseTransit.addEventListener('click', function(distanceInput) {
    e.preventDefault();
    getTransitOptions(distanceInput);
  });
};

function clickDrivingButton(distanceInput){
var chooseDriving = document.querySelector('#pick-driving')
chooseDriving.addEventListener('click', function(distanceInput) {
    e.preventDefault();
    getDrivingOptions(distanceInput);
  });
};

//   else if travelType === 'DRIVING';
//     var d = document.getElementById("vehicle-options");
//     d.style.display = "inline-block";

// SCORES: [(bike emissions / actual emissions)- 1] * 100

function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    mapTypeControl: false,
    center: {lat: 43.6532, lng: -79.3832},
    zoom: 13

  });

  new AutocompleteDirectionsHandler(map);
  var bikeLayer = new google.maps.BicyclingLayer();
      bikeLayer.setMap(map);
}

 /**
  * @constructor
 */
function AutocompleteDirectionsHandler(map) {
  this.map = map;
  this.originPlaceId = null;
  this.destinationPlaceId = null;
  this.travelMode = 'WALKING';
  var originInput = document.getElementById('origin-input');
  var destinationInput = document.getElementById('destination-input');
  var modeSelector = document.getElementById('mode-selector');
  this.directionsService = new google.maps.DirectionsService;
  this.directionsDisplay = new google.maps.DirectionsRenderer;
  this.directionsDisplay.setMap(map);

  var originAutocomplete = new google.maps.places.Autocomplete(
      originInput, {placeIdOnly: true});
  var destinationAutocomplete = new google.maps.places.Autocomplete(
      destinationInput, {placeIdOnly: true});


  this.setupClickListener('changemode-walking', 'WALKING');
  this.setupClickListener('changemode-bicycling', 'BICYCLING');
  this.setupClickListener('changemode-transit', 'TRANSIT');
  this.setupClickListener('changemode-driving', 'DRIVING');



  this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
  this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');

  this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
  this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(destinationInput);
  this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector);
}

// Sets a listener on a radio button to change the filter type on Places
// Autocomplete.
AutocompleteDirectionsHandler.prototype.setupClickListener = function(id, mode) {
  var radioButton = document.getElementById(id);
  var me = this;
  radioButton.addEventListener('click', function() {
    me.travelMode = mode;
    me.route();
  });
};

AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(autocomplete, mode) {
  var me = this;
  autocomplete.bindTo('bounds', this.map);
  autocomplete.addListener('place_changed', function() {
    var place = autocomplete.getPlace();
    if (!place.place_id) {
      window.alert("Please select an option from the dropdown list.");
      return;
    }
    if (mode === 'ORIG') {
      me.originPlaceId = place.place_id;
    } else {
      me.destinationPlaceId = place.place_id;
    }
    me.route();
  });

};

AutocompleteDirectionsHandler.prototype.route = function() {
  if (!this.originPlaceId || !this.destinationPlaceId) {
    return;
  }
  var me = this;

  this.directionsService.route({
    origin: {'placeId': this.originPlaceId},
    destination: {'placeId': this.destinationPlaceId},
    travelMode: this.travelMode
  }, function(response, status) {
    if (status === 'OK') {
      me.directionsDisplay.setDirections(response);
      console.log(response.routes);
      var distance = response.routes[0].legs[0].distance.text;

        var elementdis =document.querySelector('#distance');
        elementdis.innerHTML = distance;
      var distanceInput = response.routes[0].legs[0].distance.value;

      console.log(distanceInput);

      // function checkMode(travelType){
      //   travelType = response.travelMode
      //   if travelType === 'WALKING';
      //     console.log("hey, good job!");
      //   elsif travelType === 'TRANSIT';
      //     var t = document.getElementById("transit-options");
      //     t.style.display = "inline-block";
      //     getTransitOptions(distanceInput);
      //   else if travelType === 'DRIVING';
      //     var d = document.getElementById("vehicle-options");
      //     d.style.display = "inline-block";
      //     getDrivingOptions(distanceInput);
      // };
    // this gets final input calculation again


    } else {
      window.alert('Directions request failed due to ' + status);
    }
  });
};
