$(function() {
// create a map in the "map" div, set the view to a given place and zoom
  var map = L.map('map').setView([51.505, -0.09], 13);

  // add an OpenStreetMap tile layer
  L.tileLayer('http://{s}.tiles.mapbox.com/v3/nick-jens.io14h02o/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
      maxZoom: 18
  }).addTo(map);

  // add a marker in the given location, attach some popup content to it and open the popup
  // L.marker([51.5, -0.09]).addTo(map)
  //     .bindPopup('A pretty CSS3 popup. <br> Easily customizable.')
  //     .openPopup();

});