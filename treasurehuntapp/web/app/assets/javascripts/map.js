$(document).ready(function() {
});

var showGMap = function(latitude, longitude) {
	handler = Gmaps.build('Google');
	handler.buildMap({
	    provider: {
	      disableDefaultUI: true
	      // pass in other Google Maps API options here
	    },
	    internal: {
	      id: 'map'
	    }
	  },
	  function(){
	    markers = handler.addMarkers([
	      {
	        "lat": latitude,
	        "lng": longitude,
	        "picture": {
	          "url": "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
	          "width":  32,
	          "height": 32
	        },
	        "infowindow": "hello!"
	      }
	    ]);
	    handler.bounds.extendWith(markers);
	    handler.fitMapToBounds();
	  }
	);
};
// var showUserMap = function(jsonInterp) {
//   $(function(handler) {
//     handler = Gmaps.build('Google');
//   handler.buildMap({ provider: {}, detect_location: true, center_on_user: true, auto_zoom: false, zoom: 12, auto_adjust: true,  internal: {id: 'map'}}, function(){
//   markers_json = jsonInterp 
//   markers = _.map(markers_json, function(marker_json){
//   marker = handler.addMarker(marker_json);
//   _.extend(marker, marker_json);
//   console.log(marker.lat);
//   return marker;
//   });
// });
// });
// };

// <%=raw @hash.to_json %>;