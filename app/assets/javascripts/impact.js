$(document).ready(function (){

  var mapOptions = {
    center: new google.maps.LatLng(46.837518,-113.098103),
    zoom: 3,

  };
    
  var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);   

  for (i=0;i < coord.length;i++){
      
      var impactCenter = new google.maps.LatLng(coord[i][0],coord[i][1]);
      
      var marker = new google.maps.Marker({
          position: impactCenter,
          map: map,
      });

      var infowindow = new google.maps.InfoWindow({
        content: "Lat: " + coord[i][0] + " Long: " + coord[i][1]
      });

      marker.addListener('click', (function(marker,infowindow){ 
            return function() {
               infowindow.open(map,marker);
            };
      })(marker,infowindow)); 
  
  };

});