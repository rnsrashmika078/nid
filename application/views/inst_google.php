<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <meta name="csrf-token" content="{{ csrf_token() }}">
 <title>Google Maps Multiple Marker(Pins) In Codeigniter - Tutsmake.com</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

 <style>
 .container{
   padding: 2%;
   text-align: center;
 
 } 
 #map_wrapper_div {
   height: 400px;
 }
 
 #map_tuts {
 width: 100%;
 height: 100%;
 }
 </style>
</head>
<body> 


<div class="container">

<div id="drawGoogleMap" style="height: 550px; width: 100%"></div>

<script>
	$(function() {
			var script = document.createElement('script');
				script.src = "https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
			// script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAAFH0J4m8UDDUkKMa5fXQSLm2J-kOtTe4&callback=initialize";
				document.body.appendChild(script);
			});
			
			function initialize() {
				var map;
				var bounds = new google.maps.LatLngBounds();
				var mapOptions = {
					mapTypeId: 'roadmap'
				};
								
				map = new google.maps.Map(document.getElementById("drawGoogleMap"), mapOptions);
				map.setTilt(45);
			
				var markerPins = JSON.parse(`<?php echo ($locPins); ?>`);
				var locInfo = JSON.parse(`<?php echo ($locInfo); ?>`);       
				var initWd = new google.maps.InfoWindow(), marker, i;
				
			
			for( i = 0; i < markerPins.length; i++ ) {
				var position = new google.maps.LatLng(markerPins[i][1], markerPins[i][2]);
				bounds.extend(position);
				marker = new google.maps.Marker({
					position: position,
					map: map,
					title: markerPins[i][0]
				});
				
				google.maps.event.addListener(marker, 'click', (function(marker, i) {
					return function() {
						initWd.setContent(locInfo[i][0]);
						initWd.open(map, marker);
					}
				})(marker, i));
			
				map.fitBounds(bounds);
			}
			
			var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
				this.setZoom(10);
				google.maps.event.removeListener(boundsListener);
			});
	
	}
</script>
</div>


</body>
</html>