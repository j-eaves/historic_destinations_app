document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      sites: [],
      nycHistoricSites: [],
      allSites: [],
      coordinates: {},
      message: 'Hello Vue!'
      // coordinates: []
    },
    mounted: function() {
      console.log('mounted is working');
  //     $.get("/api/v1/sites", function(response) {
  //       //Print the array to the console
  //       //console.log(response);
  //       //console.log(this);
  //       this.sites = response;
		// //for (var i = 0; i < sites.length; i++) {
		// ////call the function createMarker()
		// //createMarker(nycHistoricSites[i]);
		// //}
  //     }.bind(this));

  //     $.get("/api/v1/houses", function(response) {
  //       //Print the array to the console
  //       //console.log(response);
  //       //console.log(this);
  //       this.nycHistoricSites = response;
		// //for (var i = 0; i < nycHistoricSites.length; i++) {
		// ////call the function createMarker()
		// //createMarker(nycHistoricSites[i]);
		// //}
  //     }.bind(this));
		//grab the (state) historical sites from my tables via my api
		$.get("/api/v1/sites", function(response) {
			//console.log('This is the $.get /api/v1/sites function')
			//create an array and fill it with all of the historicalSites
			historicalSites = response;
			// LOOP THROUGH HISTORICALSITES
			$.get("/api/v1/houses", function(response) {
				//console.log('This is the $.get /api/v1/houses function')
				//console.log("HOUSESSSSS");
				//create an array and fill it with all of the historicalSites
				nycHistoricSites = response;
				// console.log("********Here are all of the sites!*******")
				// console.log("historicalSites");
				// console.log(historicalSites);
				// console.log("nycHistoricSites");
				// console.log(nycHistoricSites);
				//concatenate both arrays into a new one
				allSites = historicalSites.concat(nycHistoricSites);
				// add distance to each object
				for ( var i = 0; i < allSites.length; i++) {
				    allSites[i]["distance"] = calculateDistance(centerPoint["latitude"],centerPoint["longitude"],allSites[i]["latitude"],allSites[i]["longitude"],"K");
				}
				allSites.sort(function(a, b) { 
				    return a.distance - b.distance;
				});
				//CReate markers on the map
				// for (var i = 0; i < allSites.length; i++) {
		  //   		//call the function createMarker()
		  //   		createMarker(allSites[i]);
		  // 		}
				console.log("allSites from historic_sites.js");
				console.log(allSites);

			}.bind(this));

		}.bind(this));
    },
    methods: {
      	calculateDistance: function(lat1, lon1, lat2, lon2, unit) {
		    var radlat1 = Math.PI * lat1/180
		    var radlat2 = Math.PI * lat2/180
		    var radlon1 = Math.PI * lon1/180
		    var radlon2 = Math.PI * lon2/180
		    var theta = lon1-lon2
		    var radtheta = Math.PI * theta/180
		    var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
		    dist = Math.acos(dist)
		    dist = dist * 180/Math.PI
		    dist = dist * 60 * 1.1515
		    if (unit=="K") { dist = dist * 1.609344 }
		    if (unit=="N") { dist = dist * 0.8684 }
		    return dist
		},

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

