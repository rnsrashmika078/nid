<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Google Maps Multiple Marker(Pins) Javascript - Laratutorials.com</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  
  <style>
.container{
  padding: 2%;
  text-align: center;
 } 
 #map_wrapper_div {
  height: 1500px;
}
#map_tuts {
    width: 100%;
    height: 100%;
}
</style>
  
</head>
<body>
<div class="container">
  <div class="row">
  <div class="col-12">
   <div class="alert alert-success" style="background-color: #FFFFFF; border-color: #FFFFFF;">
   </div>
    <?php
                    $this->load->helper('form');
                    $error = $this->session->flashdata('error');
                    if($error)
                    {
                ?>

              <?php } ?>
              <?php
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>

              <?php } ?>
   <div id="map_wrapper_div">
    <div id="map_tuts"></div>
   </div>
  </div>
  </div>
  
  
  <script>
jQuery(function($) {
// Asynchronously Load the map API 
var script = document.createElement('script');
//script.src = "https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
document.body.appendChild(script);
});


$(function() {
			var script = document.createElement('script');
			
			
			script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyCWjSQkpYWRMa93lsB6UbQ8jeEWtH7J43s&callback=initialize";
				document.body.appendChild(script);
			});
function initialize() {
var map;
var bounds = new google.maps.LatLngBounds();
var mapOptions = {
     mapTypeId: 'roadmap'
};
                
// Display a map on the page
map = new google.maps.Map(document.getElementById("map_tuts"), mapOptions);
map.setTilt(45);
    
// Multiple Markers
var markers = [
 <?php
							
				 
                      if(!empty($instrumentRecords))
                      {
						
                         foreach($instrumentRecords as $record)
                          {

							
                    ?> 
  ['<?php echo $record->institute_id ?>', <?php echo $record->latitude ?>,<?php echo $record->longitude ?>],
  
  <?php
                          }
                      }
                      ?> 
];
                    
// Info Window Content
var infoWindowContent = [
<?php

							
				 
                      if(!empty($instrumentRecords))
                      {
						
                         foreach($instrumentRecords as $record)
                          {

							
                    ?> 
    ['<div class="info_content">' +
    '<h3><?php echo $record->name ?></h3>' +
	'<h4>Lab Name: <?php echo $record->laboratory_name ?></h4>' +
    '<h4>Lab Address: <?php echo $record->laboratory_address ?></h4>' +
	 '<p><b>Product Category:</b> <?php echo $record->instrument_type ?></p>' +
	 '<p><b>Contact: </b><?php echo $record->contact_person_name ?></p>' +
	'<p> <?php echo $record->contact_person_email ?>, <?php echo $record->contact_person_phone_number ?>, <?php echo $record->contact_person_mobile_number ?></p>' +
	'</div>'],
   
	 <?php
                          }
                      }
                      ?> 
];
    
// Display multiple markers on a map
var infoWindow = new google.maps.InfoWindow(), marker, i;
// Loop through our array of markers & place each one on the map  
for( i = 0; i < markers.length; i++ ) {
    var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
    bounds.extend(position);
    marker = new google.maps.Marker({
        position: position,
        map: map,
        title: markers[i][0]
    });
    
    // Each marker to have an info window    
    google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
            infoWindow.setContent(infoWindowContent[i][0]);
            infoWindow.open(map, marker);
        }
    })(marker, i));
    // Automatically center the map fitting all markers on the screen
    map.fitBounds(bounds);
}
// Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
    this.setZoom(9);
    google.maps.event.removeListener(boundsListener);
});
}
</script>
  
  
  
  
  
  
  
  
  
</body>
</html>