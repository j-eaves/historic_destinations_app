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
        //console.log(response);
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
        //console.log('adding new location...')
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

//"https://data.ny.gov/api/views/iisn-hnyv.json"


// addEventListener(document, "touchstart", function(e) {
// 	    console.log(e.defaultPrevented);  // will be false
// 	    e.preventDefault();   // does nothing since the listener is passive
// 	    console.log(e.defaultPrevented);  // still false
// 	  }, Modernizr.passiveeventlisteners ? {passive: true} : false);

