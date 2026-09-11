<!DOCTYPE html>
<html lang="en">
  <head>
  <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>National Instrument Database</title>
    <link rel="icon" href="<?=base_url(); ?>layout/img/ph3.jpg">
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/bootstrap.min.css">
   <!-- animate CSS -->
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/animate.css">
   <!-- owl carousel CSS -->
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/owl.carousel.min.css">
   <!-- font awesome CSS -->
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/all.css">
   <!-- flaticon CSS -->
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/flaticon.css">
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/themify-icons.css">
   <!-- font awesome CSS -->
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/magnific-popup.css">
   <!-- swiper CSS -->
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/slick.css">
   <!-- style CSS -->
   <link rel="stylesheet" href="<?=base_url(); ?>layout/css/style.css">
<style>
   /* Common */
body {
    background-color: #FFFFFF !important;
}

.f-width {
    width: 100%;
}

.see-more-link{
    font-size: 16px;
    text-decoration: none;
    color: #EC8756;
    text-transform: uppercase;
}

.show-contact-link{
    font-size: 16px;
    text-decoration: none;
    color: #EC8756;
    text-transform: uppercase;
}

/* Navbar */
.navbar {
    background: #FFFFFF;
    box-shadow: 0px 3px 6px #00000029;
}

.navbar .nav-link {
    font-size: 18px;
}

.navbar .login-btn {
    background-color: #EE9310;
    text-transform: uppercase;
    color: #fff;
    width: 125px;
    height: 43px;
    border-radius: 3px;
    border: none !important;
    padding-top: 10px;
    font-weight: 500;
}

.navbar .login-btn:active,
.login-btn:focus,
.login-btn:hover {
    background-color: #FFFFFF !important;
    color: #EE9310;
    border: 1px solid #EE9310 !important;
    /* border: none !important; */
    transition: all 0.5s ease;
}

.navbar .register-btn {
    background-color: #F8F8F8;
    text-transform: uppercase;
    color: #EE9310;
    width: 125px;
    height: 43px;
    border-radius: 3px;
    border: 1px solid #EE9310 !important;
    padding-top: 10px;
    font-weight: 500;
}

.navbar .register-btn:active {
    background-color: #EE9310 !important;
    color: #FFFFFF;
    border: 1px solid #EE9310 !important;
    transition: all 0.5s ease;
}

.navbar .register-btn:focus {
    background-color: #EE9310 !important;
    color: #FFFFFF;
    border: 1px solid #EE9310 !important;
    transition: all 0.5s ease;
}

.navbar .register-btn:hover {
    background-color: #EE9310 !important;
    color: #FFFFFF;
    border: 1px solid #EE9310 !important;
    transition: all 0.5s ease;
}


</style>


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
    <nav class="navbar navbar-expand-lg navbar-light" style="height:80px;">
        <a class="navbar-brand pl-5" href="#">
            <img src="<?=base_url(); ?>catalogUploads/nsf_logo.png" width="160px"  alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse pr-5" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item mx-3">
                    <a class="nav-link" href="home">Home</span></a>
                </li>
                <li class="nav-item mx-3 ">
                    <a class="nav-link" href="eproductView">Product Category </a>
                </li>
                <li class="nav-item mx-3 ">
                    <a class="nav-link" href="einstituteView">Institutes</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link" href="contact">Contact </a>
                </li>
                </li>
                <li class="nav-item mx-3">
                    <a href="<?=base_url('user_authentication'); ?>" class="btn my-2 my-sm-0 login-btn" role="button" style="font-size:16px;">Login</a>
                </li>
                <li class="nav-item mx-3">
                    <a href="<?=base_url('register'); ?>" class="btn my-2 my-sm-0 register-btn" role="button" style="font-size:16px;">Register</a>
                </li>
            </ul>
        </div>
    </nav>
  
  
      <section class="content-header">
         <h1>
              <i> <img src="<?php echo base_url(); ?>layout/img/bank.svg" style=" margin-left:40px; " /> </i>Registerd Institutes
                    </h1>
		
		
    </section>
	
	
	
	
   
   
   
   
   
   
   
	
	
	
  
     
     <div id="mymap"></div>      
               
                   
                      
           
                 
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
	
	       
		   <?php
							
                    if(!empty($instituteRecords))
                    {
                        foreach($instituteRecords as $record)
                        {
                    ?>
    var markers = [
	      
                                                 
         ['<?php echo $record->name ?>',<?php echo $record->latitude ?>, <?php echo $record->longitude ?>]
		
			
		  ];
		  
		  <?php      }
                    }
                    ?>	
							
                        
    var infoWindowContent = [
        ['<div class="info_content">' +
        '<h3><?php echo $record->name ?></h3>' +
		'<p><?php echo $record->address ?></p>' +
       
		'</div>']

    ];
        
    
	
	
	// Add multiple markers to map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Place each marker on the map  
    for( i = 0; i < 1; i++ )

		{
		
		
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
        this.setZoom(7);
        google.maps.event.removeListener(boundsListener);
    });
    
}
</script>
<script async defer 
 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWjSQkpYWRMa93lsB6UbQ8jeEWtH7J43s
&callback=initMap">
    </script>                      
              
                   
                
    


<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>

</br>

</br>
</br>
</br>
</br>
   
   
   
   
   
   
   
   
   
   
   
   
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
		
          [' <?php echo $record->name ?>',  <?php echo $record->latitude ?>,  <?php echo $record->name ?><?php echo $longitude; ?>]
				
    ];
     


	 
    // Info window content
    var infoWindowContent = [
        ['<div class="info_content">' +
        '<h3>Chennai</h3>' +
        '<p>Chennai is the capital of the state of Tamil Nadu.</p>' + '</div>'],
        ['<div class="info_content">' +
        '<h3>Coimbatore</h3>' +
        '<p>Coimbatore is a city in the south Indian state of Tamil Nadu.</p>' +
        '</div>'],
        ['<div class="info_content">' +
        '<h3>Bengaluru</h3>' +
        '<p>Bengaluru is the capital of India southern Karnataka state.</p>' +
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
        this.setZoom(7);
        google.maps.event.removeListener(boundsListener);
    });
    
}
</script>
<script async defer 
 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWjSQkpYWRMa93lsB6UbQ8jeEWtH7J43s
&callback=initMap">
    </script>
	
	
	
	
	
   <!--::footer_part start::-->
    <footer class="footer_part" style="background: #070300 ;">
        <div class="container" style="margin-top:-50px; ">
            <div class="row justify-content-around">
                <div class="col-sm-6 col-lg-5" >
                    <div class="single_footer_part"  >
                        <h4 style="color: #FFFFFF;">Contact Us</h4>
                        <ul class="list-unstyled">
                            <li><p style="color: #FFFFFF;">National Science Foundation</p></li>
                            <li><p style="color: #FFFFFF;"># 47/5, Maitland Place, Colombo 07</p></li>
                           <li><p style="color: #FFFFFF;">Phone : +94 (0)11 2 696771, Fax     : +94 (0)11 2 694754</p></li>
							<li><p style="color: #FFFFFF;">Email  : info@nsf.gov.lk</p></li>
							
                        </ul>
                    </div>
                </div>
               
                <div class="col-sm-6 col-lg-4">
                    <div class="single_footer_part">
                        <h4 style="color: #FFFFFF;">Quick Links</h4>
                        <ul class="list-unstyled">
						<li><a href="http://www.nsf.ac.lk/" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target="_blank">NSF Home</a></li>
                            <li ><a href="https://gdp.nsf.gov.lk/" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target="_blank">Global Digital Platform</a></li>
                            <li><a href="https://stmis.nsf.gov.lk/" style="color: #FFFFFF;-webkit-transition: color 1000000000s;  target="_blank">S & T Management Information System</a></li>
                            <li><a href="http://viduketha.nsf.gov.lk/RTGRA" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target="_blank">Research & Technology Grant Database</a></li>
                            <li><a href="http://viduketha.nsf.gov.lk" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target="_blank">Viduketha</a></li>
							
                        </ul>
                    </div>
                </div>
                
                <div class="col-sm-6 col-lg-3">
                    <div class="single_footer_part">
                        <h4 style="color: #FFFFFF;">Subscribe to NSF eAlerts</h4>
						 <a href="http://lists.nsf.gov.lk/" class="button rounded-0 primary-bg text-white w-10 btn_1" style=" background-color:#EE9310  ;" target="_blank">subscribe</a>
                     
						
                       
                    </div>
                </div>
            </div>

        </div>
        <div class="copyright_part">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright_text">
                             <div class="copyright_text">
                     <P style="color: #FFFFFF;"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Powered by National Scienec Library & Resource Centre of National Science Foundation <!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
                  </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </footer>
    <!--::footer_part end::-->




   <!-- jquery plugins here-->
   <!-- jquery -->
   <script src="<?=base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>
   <!-- popper js -->
   <script src="<?=base_url(); ?>layout/js/popper.min.js"></script>
   <!-- bootstrap js -->
   <script src="<?=base_url(); ?>layout/js/bootstrap.min.js"></script>
   <!-- easing js -->
   <script src="<?=base_url(); ?>layout/js/jquery.magnific-popup.js"></script>
   <!-- swiper js -->
   <script src="<?=base_url(); ?>layout/js/swiper.min.js"></script>
   <!-- swiper js -->
   <script src="<?=base_url(); ?>layout/js/masonry.pkgd.js"></script>
   <!-- particles js -->
   <script src="<?=base_url(); ?>layout/js/owl.carousel.min.js"></script>
   <script src="js/jquery.nice-select.min.js"></script>
   <!-- slick js -->
   <script src="<?=base_url(); ?>layout/js/slick.min.js"></script>
   <script src="<?=base_url(); ?>layout/js/jquery.counterup.min.js"></script>
   <script src="<?=base_url(); ?>layout/js/waypoints.min.js"></script>
   <script src="<?=base_url(); ?>layout/js/contact.js"></script>
   <script src="<?=base_url(); ?>layout/js/jquery.ajaxchimp.min.js"></script>
   <script src="<?=base_url(); ?>layout/js/jquery.form.js"></script>
   <script src="<?=base_url(); ?>layout/js/jquery.validate.min.js"></script>
   <script src="<?=base_url(); ?>layout/js/mail-script.js"></script>
   <!-- custom js -->
   <script src="<?=base_url(); ?>layout/js/custom.js"></script>
   
   
   
   
   
   
   
   
   
   
   <script src="<?=base_url(); ?>layout/js/jquery.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/popper.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/bootstrap.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.easing.1.3.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.waypoints.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.stellar.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/owl.carousel.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.magnific-popup.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/aos.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.animateNumber.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/scrollax.min.js"></script>
  <script src="<?=base_url(); ?>layout/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="<?=base_url(); ?>layout/js/google-map.js"></script>
  <script src="<?=base_url(); ?>layout/js/main.js"></script>

  </body>
</html>