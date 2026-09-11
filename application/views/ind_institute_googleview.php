<!DOCTYPE html>
<html lang="en">
  <head>
 


<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #mymap {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
   
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no"> 
</head>

<body>
    
   
   
   

   
	 <?php

$instituteName = '';
$latitude = '';
$longitude = '';



if(!empty($instituteInfo))
{
    foreach ($instituteInfo as $if)
    {
    
    $instituteName = $if->name;	
     $latitude  = $if->latitude;
     $longitude  = $if->longitude;
 
    }
}


?>		
			
		

	
			

			
			
			
			
			
			



<div id="mymap"></div>















<!-- ***************************************************************** -->


<script>
function initMap() {
    var map;
    var bounds = new google.maps.LatLngBounds();
    var mapOptions = {
        mapTypeId: 'roadmap',
    };
                    
    // Display a map on the web page
    map = new google.maps.Map(document.getElementById("mymap"), mapOptions);
    //map.setTilt(50);
     
				
	 
    // Multiple markers location, latitude, and longitude
	
    var markers = [
         ['<?php echo $instituteName; ?>', <?php echo $latitude; ?>, <?php echo $longitude; ?>]
    ];
	
	
                        
    // Info window content
    var infoWindowContent = [
        ['<div class="info_content">' +
        '<h3><?php echo $instituteName; ?></h3>' +
		   		'</div>']

    ];
        
    // Add multiple markers to map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Place each marker on the map  
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: markers[i][0]
        });
        
        // Add info window to marker    
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));

        // Center the map to fit all markers on the screen
        map.fitBounds(bounds);
    }

    // Set zoom level
var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(16);
        google.maps.event.removeListener(boundsListener);
    });
    
} 

</script>
<script async defer 
 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAlG-f0n1z956d-5n4Y4bFnD8AJ7fk0pqs&callback=initMap">
    </script>




   
   

  </body>
</html>