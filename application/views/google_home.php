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


  <!--<section class="content-header" style=" margin-top:50px;">
         <h1>
             <i> <img src="<?php echo base_url(); ?>layout/img/bank.svg" style=" margin-left:40px; " /> </i>Registerd Institutes
                    </h1>




    </section>-->



  <div id="drawGoogleMap" style="height: 900px; width: 100%"></div>

  <script>
    $(function() {
      var script = document.createElement('script');
      //  script.src = "https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
      //script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAAFH0J4m8UDDUkKMa5fXQSLm2J-kOtTe4&callback=initialize";

      script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAlG-f0n1z956d-5n4Y4bFnD8AJ7fk0pqs&callback=initialize";
      document.body.appendChild(script);
    });

    function initialize() {
      var map;

      var mapOptions = {
        center: {
          lat: 6.9271,
          lng: 79.8612
        },
        zoom: 11,
        mapTypeId: 'roadmap'
      };

      map = new google.maps.Map(
        document.getElementById("drawGoogleMap"),
        mapOptions
      );

      map.setTilt(45);

      var markerPins = JSON.parse(`<?php echo ($locPins); ?>`);
      var locInfo = JSON.parse(`<?php echo ($locInfo); ?>`);
      var initWd = new google.maps.InfoWindow();
      var markers = [];
      var defaultBounds = new google.maps.LatLngBounds();

      // Add markers
      for (var i = 0; i < markerPins.length; i++) {

        var position = new google.maps.LatLng(
          markerPins[i][1],
          markerPins[i][2]
        );

        defaultBounds.extend(position);

        var marker = new google.maps.Marker({
          position: position,
          map: map,
          title: markerPins[i][0]
        });

        markers.push(marker);

        google.maps.event.addListener(
          marker,
          'click',
          (function(marker, i) {
            return function() {
              initWd.setContent(locInfo[i][0]);
              initWd.open(map, marker);
            };
          })(marker, i)
        );
      }

      // Focus the whole country so every marker is visible, while keeping
      // India (land starts above ~8.4N at these longitudes) out of view.
      map.setCenter(new google.maps.LatLng(6.9271, 79.8612));
      map.setZoom(10);

      // Search message from parent page
      window.addEventListener('message', function(event) {

        if (
          event.origin !== window.location.origin ||
          !event.data ||
          event.data.type !== 'map-search'
        ) {
          return;
        }

        var query = event.data.query.toLowerCase();
        var matches = [];

        for (var index = 0; index < markerPins.length; index++) {

          var titleText =
            String(markerPins[index][0]).toLowerCase();

          var infoText =
            String(locInfo[index][0])
            .replace(/<[^>]+>/g, ' ')
            .toLowerCase();

          if (
            titleText.indexOf(query) !== -1 ||
            infoText.indexOf(query) !== -1
          ) {
            matches.push(index);
          }
        }

        // Filter out non-matching markers, keep the matching ones
        var matchBounds = new google.maps.LatLngBounds();
        for (var index = 0; index < markers.length; index++) {
          if (matches.indexOf(index) !== -1) {
            markers[index].setMap(map);
            matchBounds.extend(markers[index].getPosition());
          } else {
            markers[index].setMap(null);
          }
        }

        if (matches.length === 0) {

          window.parent.postMessage({
            type: 'map-search-result',
            message: 'No matching location found.'
          }, window.location.origin);

          return;
        }

        map.fitBounds(matchBounds);

        // Cap how close the map can go after a search (a single match would
        // otherwise zoom straight in to street level)
        google.maps.event.addListenerOnce(map, 'idle', function() {
          if (map.getZoom() > 11) {
            map.setZoom(14);
          }
        });

        var firstMatch = markers[matches[0]];

        initWd.setContent(locInfo[matches[0]][0]);
        initWd.open(map, firstMatch);

        window.parent.postMessage({
          type: 'map-search-result',
          message: matches.length + ' matching location(s) found: ' +
            markerPins[matches[0]][0]
        }, window.location.origin);
      });
    }
  </script>
  </div>
</body>

</html>