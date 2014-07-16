$ ->

  map = L.map("map").setView([
    51.505
    -0.09
  ], 13)

  # add an OpenStreetMap tile layer
  L.tileLayer("http://{s}.tiles.mapbox.com/v3/nick-jens.io14h02o/{z}/{x}/{y}.png",
    attribution: "Map data &copy; <a href=\"http://openstreetmap.org\">OpenStreetMap</a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>, Imagery © <a href=\"http://mapbox.com\">Mapbox</a>"
    maxZoom: 18
  ).addTo map




  addMarker = (latitude , longitude, name, address, date)  ->
    marker = L.marker([latitude, longitude]).addTo map
    map.panTo([latitude, longitude])
    # marker.bindPopup("Host:"+ " " + name + ", @" +address + " " + date).openPopup()

    marker.bindPopup("<b>#{name}</b><br>#{address}<br>#{date}").openPopup()

  locations = $('.location')
  for place in locations
    location = $(place)
    if location.data('lat') != '' && location.data('lon') != ''
      addMarker location.data('lat'), location.data('lon'), location.data('name'), location.data('address'), location.data('date')


  # lat = $('#map').data('lat')
  # lon = $('#map').data('lon')
  # if lon != undefined
  #   addMarker lat, lon, "Haha", "Hoho", "Sux"


