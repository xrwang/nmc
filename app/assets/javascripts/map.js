$(document).ready(function drawIndexHouseholdMap(){
  L.mapbox.accessToken = "pk.eyJ1IjoiZmxvYXRiZWlqaW5nIiwiYSI6ImloUEE0SHcifQ.nthI_BVVeBsrxqMcirojAA";

  var map = L.mapbox.map("map", "floatbeijing.nmahf1g5").setView([39.7,-104.50], 7);

  var markerLayer = L.mapbox.featureLayer().addTo(map);

  var geojson = {
    "type": "Feature",
    "geometry": {
      "type": "Point",
      "coordinates": [-104.6, 39.67]
    },
    "properties": {
      "name": "Denver, Colorado"
      "marker-color": "white",
      "marker-size": "large",
      "marker-symbol": "circle"
    }
  };

  markerLayer.setGeoJSON(geojson);

});
