<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>National Instrument Database</title>
    <link rel="icon" href="<?= base_url(); ?>layout/img/ph3.jpg">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/owl.carousel.min.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/all.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/flaticon.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/themify-icons.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/style.css">





    <style>
        /* Common */
        body {
            background-color: #FFFFFF !important;
        }

        .f-width {
            width: 100%;
        }

        .see-more-link {
            font-size: 16px;
            text-decoration: none;
            color: #EC8756;
            text-transform: uppercase;
        }

        .show-contact-link {
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





    <script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>

    <style>
        .content-wrapper {
            padding: 0 10px;
        }

        /* ===== Page header ===== */
        .section.content-header {
            margin: 0 0 10px;
        }

        .section.content-header h1 {
            font-size: 26px;
            font-weight: 700;
            color: #1f2937;
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 0;
            padding: 4px 0 14px;
        }

        .section.content-header h1 img {
            height: 40px;
            margin: 0 !important;
        }

        /* ===== Instrument table card ===== */
        .box {
            border: none;
            border-radius: 12px;
            box-shadow: 0 6px 24px rgba(31, 41, 55, 0.10);
            overflow: visible;
        }

        .box-body {
            background: #ffffff;
            border-radius: 12px;
        }

        .panel-body {
            padding: 18px;
        }

        /* Keep every wrapper above the DataTables controls overflow-visible
           so position:sticky works against the page scroll, not a nested container */
        .box,
        .box-body,
        .panel-body,
        #instrumentsTable_wrapper {
            overflow: visible;
        }

        #instrumentsTable_wrapper .dt-toolbar,
        #instrumentsTable_wrapper .page-status {
            overflow: visible;
        }

        #instrumentsTable thead th {
            background: #f8fafc;
            color: #374151;
            border-bottom: 2px solid #eef0f3;
            font-weight: 600;
        }

        #instrumentsTable td {
            vertical-align: middle;
        }

        #instrumentsTable_filter input.form-control {
            border-radius: 8px;
        }

        /* ===== Sticky toolbar (Show entries / Search) ===== */
        #instrumentsTable_wrapper .dt-toolbar {
            position: sticky;
            top: 10px;
            z-index: 10;
            background: #ffffff;
            border-bottom: 1px solid #eef0f3;
            border-radius: 12px 12px 0 0;
            margin: 0 !important;
            padding: 10px 16px !important;
            box-shadow: 0 6px 12px rgba(31, 41, 55, 0.06);
        }

        /* ===== Sticky bottom pagination ===== */
        #instrumentsTable_wrapper .page-status {
            position: sticky;
            bottom: 0;
            z-index: 10;
            background: #ffffff;
            border-top: 1px solid #eef0f3;
            border-radius: 0 0 12px 12px;
            box-shadow: 0 -4px 12px rgba(31, 41, 55, 0.06);
            margin: 0 !important;
            padding: 10px 16px !important;
        }

        /* ===== Sticky right map panel ===== */
        .map-panel {
            position: sticky;
            top: 20px;
            align-self: flex-start;
            height: calc(100vh - 40px);
        }

        .map-panel .map-container {
            width: 100%;
            margin-left: 0;
        }

        .map-panel .map-container,
        .map-panel .map-container .row,
        .map-panel .map-container .col-12 {
            height: 100%;
        }

        .map-panel .map-container .col-12 {
            display: flex;
            flex-direction: column;
        }

        #map_wrapper_div {
            flex: 1;
            min-height: 0;
        }

        #map_tuts {
            width: 100%;
            height: 100%;
            border-radius: 12px;
        }

        @media (max-width: 991.98px) {
            .map-panel {
                position: static;
                height: auto;
            }

            .box-body {
                overflow-x: auto;
            }

            .map-panel .map-container,
            .map-panel .map-container .row {
                height: auto;
            }

            #map_wrapper_div {
                height: 420px;
                flex: none;
            }
        }
    </style>
</head>

<body>
    <?php $this->load->view('home/partials/navbar_v2'); ?>
    <div class="content-wrapper" style="margin-top:50px;">
        <section class="content-header">
            <h1>
                <i> <img src="<?php echo base_url(); ?>layout/img/machine.svg" style=" margin-left:40px; display:inline;" /> </i>Instrument List
                <!--<a href="<?= base_url('einstrument_google'); ?>" class="button rounded-0 primary-bg text-white w-10 btn_1" style=" background-color:#EE9310; display:inline; margin-left:495px;" >View Instruments in a Google Map </a>-->
            </h1>
        </section>

        <section class="contact-section padding_top" style="margin-top:-90px;">
            <div class="container">


                <div class="row">

                    <div class="col-lg-6">
                        <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm"
                            novalidate="novalidate">


                            <div class="container" style="margin-left:-100px; width:650px;">
                                <section class="content">

                                    <div class="container">
                                        <div class="row">
                                            <div class="col-xs-11">
                                                <div class="box">
                                                    <div class="box-header">
                                                        <!-- <h3 class="box-title">Instrument List</h3>-->
                                                    </div>
                                                    <!-- /.box-header -->
                                                    <div class="box-body no-padding">
                                                        <?php
                                                        $this->load->helper('form');
                                                        $error = $this->session->flashdata('error');
                                                        if ($error) {
                                                        ?>
                                                            <div class="alert alert-danger alert-dismissable">
                                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                                                <?php echo $this->session->flashdata('error'); ?>
                                                            </div>
                                                        <?php } ?>
                                                        <?php
                                                        $success = $this->session->flashdata('success');
                                                        if ($success) {
                                                        ?>
                                                            <div class="alert alert-success alert-dismissable">
                                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                                                <?php echo $this->session->flashdata('success'); ?>
                                                            </div>
                                                        <?php } ?>
                                                        <div class="panel-body">
                                                            <table width="100%" class="table table-striped table-bordered table-hover" id="instrumentsTable" align="left">
                                                                <thead style="font-size:14px;">
                                                                    <tr>
                                                                        <th></th>
                                                                        <th>Instrument Deatil</th>

                                                                        <!-- <th>Laboratory Name</th>
					<th>Laboratory Address</th>
		<th>Laboratory 	latitude</th>
					<th>Laboratory 	longitude</th>-->



                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /.box-body -->
                                            </div>
                                            <!-- /.box -->
                                        </div>
                                    </div>
                                </section>





                            </div>


                        </form>
                    </div>

                    <!--////////////////////////////////////////////////////////////////Next Section//////////////-->


                    <div class="col-lg-5 map-panel">




                        <!--<div style="width:150%; padding-bottom:240.25%; position:relative;">
  <iframe src="http://localhost/instrument/einstrument_google" style="position:absolute; top:0px; left:-170px;
  width:115%; height:120%; border: none; overflow: hidden; allow-forms" scrolling="no""></iframe>
</div>-->




                        <div class="container map-container">
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-success" style="background-color: #FFFFFF; border-color: #FFFFFF;">
                                    </div>




                                    <?php
                                    $this->load->helper('form');
                                    $error = $this->session->flashdata('error');
                                    if ($error) {
                                    ?>

                                    <?php } ?>
                                    <?php
                                    $success = $this->session->flashdata('success');
                                    if ($success) {
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


                                    script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAlG-f0n1z956d-5n4Y4bFnD8AJ7fk0pqs&callback=initialize";
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

                                    var markers = [
                                        <?php
                                        if (!empty($instrumentRecords)) {
                                            foreach ($instrumentRecords as $record) {
                                        ?>['<?php echo $record->instrument_id ?>', <?php echo $record->latitude ?>, <?php echo $record->longitude ?>],
                                        <?php
                                            }
                                        }
                                        ?>

                                    ];


                                    // Info Window Content
                                    var infoWindowContent = [
                                        <?php



                                        if (!empty($instrumentRecords)) {

                                            foreach ($instrumentRecords as $record) {


                                        ?>['<div class="info_content">' +
                                                    '<h3><?php echo $record->name ?></h3>' +
                                                    '<h4>Lab Name: <?php echo $record->laboratory_name ?></h4>' +
                                                    '<h4>Lab Address: <?php echo $record->laboratory_address ?></h4>' +
                                                    '<p><b>Instrument Name:</b> <?php echo $record->instrument_name ?></p>' +
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
                                    var infoWindow = new google.maps.InfoWindow(),
                                        marker, i;
                                    // Loop through our array of markers & place each one on the map  
                                    for (i = 0; i < markers.length; i++) {
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
                                        this.setZoom(8.75);
                                        google.maps.event.removeListener(boundsListener);
                                    });
                                }
                            </script>
                        </div>
                    </div>
                </div>
        </section>
        <script type="text/javascript">
            function newPopup(url) {
                popupWindow = window.open(
                    url, 'popUpWindow', 'height=500,width=450,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
            }
            jQuery(document).ready(function() {
                if (jQuery('#instrumentsTable').length > 0 && jQuery.fn.dataTable) {
                    jQuery('#instrumentsTable').DataTable({
                        "serverSide": true,
                        "ajax": {
                            "url": "<?php echo base_url(); ?>einstrumentViewAjax",
                            "type": "POST"
                        },
                        "search": {
                            "search": <?php echo json_encode((isset($searchText) && $searchText !== null) ? $searchText : '', JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT); ?>
                        },
                        "pageLength": 25,
                        "lengthMenu": [
                            [10, 15, 25, 50, -1],
                            [10, 15, 25, 50, "All"]
                        ],
                        "columns": [{
                                "data": "image",
                                "orderable": false,
                                "searchable": false
                            },
                            {
                                "data": "detail",
                                "orderable": false,
                                "searchable": false
                            }
                        ],
                        "dom": "<'row dt-toolbar'<'col-sm-6'l><'col-sm-6'f>>" +
                            "<'row'<'col-sm-12'tr>>" +
                            "<'row page-status'<'col-sm-5'i><'col-sm-7'p>>",
                        "responsive": true
                    });
                }
            });
        </script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>
        <br>
        <footer class="footer_part" style="background: #070300 ;">
            <div class="container">
                <div class="row justify-content-around">
                    <div class="col-sm-6 col-lg-5">
                        <div class="single_footer_part">
                            <h4 style="color: #FFFFFF;">Contact Us</h4>
                            <ul class="list-unstyled">
                                <li>
                                    <p style="color: #FFFFFF;">National Science Foundation</p>
                                </li>
                                <li>
                                    <p style="color: #FFFFFF;"># 47/5, Maitland Place, Colombo 07</p>
                                </li>
                                <li>
                                    <p style="color: #FFFFFF;">Phone : +94 (0)11 2 696771, Fax : +94 (0)11 2 694754</p>
                                </li>
                                <li>
                                    <p style="color: #FFFFFF;">Email : info@nsf.gov.lk</p>
                                </li>

                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-4">
                        <div class="single_footer_part">
                            <h4 style="color: #FFFFFF;">Quick Links</h4>
                            <ul class="list-unstyled">
                                <li><a href="http://www.nsf.ac.lk/" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target=" _blank">NSF Home</a></li>
                                <li><a href="https://gdp.nsf.gov.lk/" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target=" _blank">Global Digital Platform</a></li>
                                <li><a href="https://stmis.nsf.gov.lk/" style="color: #FFFFFF;-webkit-transition: color 1000000000s;  target=" _blank">S & T Management Information System</a></li>
                                <li><a href="http://viduketha.nsf.gov.lk/RTGRA" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target=" _blank">Research & Technology Grant Database</a></li>
                                <li><a href="http://viduketha.nsf.gov.lk" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target=" _blank">Viduketha</a></li>

                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3">
                        <div class="single_footer_part">
                            <h4 style="color: #FFFFFF;">Subscribe to NSF eAlerts</h4>
                            <a href="http://lists.nsf.gov.lk/" class="button rounded-0 primary-bg text-white w-10 btn_1" style=" background-color:#EE9310  ;" target="_blank">subscribe</a>

                            </br>
                            </br>
                            <style>
                                .fa {
                                    padding: 15px;
                                    font-size: 50px;
                                    width: 50px;
                                    text-align: center;
                                    text-decoration: none;
                                    margin: 5px 2px;
                                }

                                .fa:hover {
                                    opacity: 0.7;
                                }

                                .fa-facebook {
                                    background: #3B5998;
                                    color: white;
                                }

                                .fa-twitter {
                                    background: #55ACEE;
                                    color: white;
                                }

                                .fa-rss {
                                    background: #ff6600;
                                    color: white;
                                }
                            </style>

                            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                            </style>
                            <a href="https://www.facebook.com/profile.php?id=100085521581430" class="fa fa-facebook" target="_blank"></a>
                            <a href="https://twitter.com/instrumentNSF" class="fa fa-twitter" target="_blank"></a>

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
                                        Copyright &copy;<script>
                                            document.write(new Date().getFullYear());
                                        </script> All rights reserved | Powered by National Science Foundation of Sri Lanka <!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
        <script src="<?= base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>
        <!-- popper js -->
        <script src="<?= base_url(); ?>layout/js/popper.min.js"></script>
        <!-- bootstrap js -->
        <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>
        <!-- easing js -->
        <script src="<?= base_url(); ?>layout/js/jquery.magnific-popup.js"></script>
        <!-- swiper js -->
        <script src="<?= base_url(); ?>layout/js/swiper.min.js"></script>
        <!-- swiper js -->
        <script src="<?= base_url(); ?>layout/js/masonry.pkgd.js"></script>
        <!-- particles js -->
        <script src="<?= base_url(); ?>layout/js/owl.carousel.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <!-- slick js -->
        <script src="<?= base_url(); ?>layout/js/slick.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.counterup.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/waypoints.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/contact.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.ajaxchimp.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.form.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.validate.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/mail-script.js"></script>
        <!-- custom js -->
        <script src="<?= base_url(); ?>layout/js/custom.js"></script>










        <script src="<?= base_url(); ?>layout/js/jquery.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery-migrate-3.0.1.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/popper.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.easing.1.3.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.waypoints.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.stellar.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/owl.carousel.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.magnific-popup.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/aos.js"></script>
        <script src="<?= base_url(); ?>layout/js/jquery.animateNumber.min.js"></script>
        <script src="<?= base_url(); ?>layout/js/scrollax.min.js"></script>
        <script src="<?= base_url(); ?>layout/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="<?= base_url(); ?>layout/js/google-map.js"></script>
        <script src="<?= base_url(); ?>layout/js/main.js"></script>

</body>

</html>