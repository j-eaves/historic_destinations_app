document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      sites: [],
      message: 'Hello Vue!'
    },
    mounted: function() {
      console.log('mounted is working');
      $.get("/api/v1/sites", function(response) {
        console.log(response);
        console.log(this);
        this.sites = response;
      }.bind(this));
    },
    methods: {
      assignCenterPoint: function() {
        console.log('in assignCenterPoint...')
        var parameters = {
          latitude: this.centerPointLatitude,
          longitude: this.centerPointLongitude
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
