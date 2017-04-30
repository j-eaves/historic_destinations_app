document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      places: [],
      message: 'Hello Vue!'
    },
    mounted: function() {
      console.log('mounted is working');
      $.get("/api/v1/sites", function(response) {
        console.log(response);
        console.log(this);
        this.sites = response;
      }.bind(this));
    }
  });
});
