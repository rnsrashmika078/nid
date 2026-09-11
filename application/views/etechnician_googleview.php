<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
      #mymap {
        height: 100%;
      }
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

      $technicianName = '';
      $designation = '';
      $instituteName = '';
      $institute_address = '';
      $contactPersonEmail = '';
      $contactPersonMobileNumber = '';
      $contactPersonPhoneNumber = '';
      $latitude = '';
      $longitude = '';

      if (!empty($technicianInfo))
      {
          foreach ($technicianInfo as $tf)
          {
              $technicianName = trim(($tf->first_name ?: '') . ' ' . ($tf->last_name ?: ''));
              $designation = $tf->designation;
              $instituteName = $tf->institute_name ?: $tf->other_institute_name;
              $institute_address = $tf->institute_address ?: $tf->address;
              $contactPersonEmail = $tf->email;
              $contactPersonMobileNumber = $tf->mobile_number;
              $contactPersonPhoneNumber = $tf->phone_number;
              $latitude = $tf->latitude;
              $longitude = $tf->longitude;
          }
      }

    ?>

    <div id="mymap"></div>

    <script>
      function initMap() {
          var map;
          var bounds = new google.maps.LatLngBounds();
          var mapOptions = {
              mapTypeId: 'roadmap',
          };

          map = new google.maps.Map(document.getElementById("mymap"), mapOptions);

          var markers = [
              ['<?php echo $technicianName; ?>', <?php echo $latitude; ?>, <?php echo $longitude; ?>]
          ];

          var infoWindowContent = [
              ['<div class="info_content">' +
              '<h3><?php echo $technicianName; ?></h3>' +
              '<h3><b>Designation: </b><?php echo $designation; ?></h3>' +
              '<p><b>Institute: </b><?php echo $instituteName; ?></p>' +
              '<p><b>Address: </b><?php echo $institute_address; ?></p>' +
              '<p><?php echo $contactPersonEmail; ?></p>' +
              '<p><?php echo $contactPersonMobileNumber; ?></p>' +
              '<p><?php echo $contactPersonPhoneNumber; ?></p>' +
              '</div>']
          ];

          var infoWindow = new google.maps.InfoWindow(), marker, i;

          for (i = 0; i < markers.length; i++) {
              var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
              bounds.extend(position);
              marker = new google.maps.Marker({
                  position: position,
                  map: map,
                  title: markers[i][0]
              });

              google.maps.event.addListener(marker, 'click', (function(marker, i) {
                  return function() {
                      infoWindow.setContent(infoWindowContent[i][0]);
                      infoWindow.open(map, marker);
                  }
              })(marker, i));

              map.fitBounds(bounds);
          }

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