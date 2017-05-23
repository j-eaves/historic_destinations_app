document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      sites: [],
      nycHistoricSites: [],
      coordinates: {},
      message: 'Hello Vue!'
      // coordinates: []
    },
    mounted: function() {
      console.log('mounted is working');
      $.get("/api/v1/sites", function(response) {
        //Print the array to the console
        //console.log(response);
        //console.log(this);
        this.sites = response;
      }.bind(this));

      $.get("/api/v1/houses", function(response) {
        //Print the array to the console
        console.log(response);
        //console.log(this);
        this.nycHistoricSites = response;
      }.bind(this));

      // $.get("/api/v1/center_point", function(response) {
      //   console.log(response);
      //   console.log(this);
      //   this.coordinates = response;
      // }.bind(this));
    },
    methods: {
      assignCenterPoint: function() {
        console.log('in assignCenterPoint...')
        var parameters = {
          lat: this.centerPointLatitude,
          lng: this.centerPointLongitude
        }
      },
      addHistoricDestination: function() {
        console.log('adding new location...')
        //push an object into destinations
        var parameters = {
          name: this.newPlaceName,
          category: this.newPlaceCategory,
          county: this.newPlaceCounty,
          url: this.newPlaceUrl,
          latitude: this.newPlaceLatitude,
          longitude: this.newPlaceLongitude,
          region_number: this.newPlaceRegionNumber
        }
      }
    }
  });
});

  // var coordinates = [];
  // coordinates = {{@coordinates}};
  // if (coordinates.length < 1){
  //   var myLatLng = {lat: 40.9355500517, lng: -73.8993128614};
  // } else {
  //var myLatLng = {lat: coordinates[0], lng: coordinates[1]};
  // }

// function initMap() {
//   //var coordinates = <%= @coordinates %>;
//   //var myLatitude = coordinates[0];//<%= @latitude %>;
//   //var myLongitude = coordinates[1];//<%= @longitude %>;
//    //{lat: 43.0481, lng: -76.1474}; //

//   $.get("/api/v1/sites", function(response) {
//     console.log('This is the $.get /api/v1/sites function')
//     console.log(response);
//     console.log(this);
//     // this.sites = response;
//     var places = response;
//     console.log(places);
//     for (var i = 0; i < places.length; i++) {
//       //call the function 
//       createMarker(places[i]);
//     }
//   }.bind(this));

//   // var places = [
//   //  {name: "Washington's Headquarters", latitude: 40.9355500517, longitude: -73.8993128614, description: "http://nysparks.com/historic-sites/17/details.aspx"}, 
//   //  {name: "Schuyler Mansion", latitude: 42.6413229736, longitude: -73.7592869931, description: "http://nysparks.com/historic-sites/33/details.aspx"}, 
//   //  {name: "Clermont", latitude: 42.0833097387, longitude: -73.911040157, description: "http://nysparks.com/historic-sites/16/details.aspx"}
//   // ];

//   // Create a map object and specify the DOM element for display.


//   var coordinates = {};

//   $.get("/api/v1/center_point", function(response) {
//     coordinates = response;
//     console.log("inside coordinates function")
//     console.log(coordinates.lat);
//     console.log(coordinates.lng);

//     var latLng = {lat: coordinates.lat, lng: coordinates.lng};

//     var map = new google.maps.Map(document.getElementById('map'), {
//       center: latLng,
//       scrollwheel: false,
//       zoom: 10
//     });
//   });
//   function createMarker(location){
//     var infowindow = new google.maps.InfoWindow({
//       // content: location.description
//       content: location.name
//     });
//     // Create a marker and set its position.
//     var marker = new google.maps.Marker({
//       position: {lat: location.latitude, lng: location.longitude},
//       map: map, 
//       title: location.name
//     });
//     marker.addListener('click', function() {
//       infowindow.open(map, marker);
//     });
//   }
//   }
//"https://data.ny.gov/api/views/iisn-hnyv.json"


// addEventListener(document, "touchstart", function(e) {
// 	    console.log(e.defaultPrevented);  // will be false
// 	    e.preventDefault();   // does nothing since the listener is passive
// 	    console.log(e.defaultPrevented);  // still false
// 	  }, Modernizr.passiveeventlisteners ? {passive: true} : false);

