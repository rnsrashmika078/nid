<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>National Instrument Database - Technicians</title>

    <link rel="icon" href="<?= base_url(); ?>layout/img/ph3.jpg">

    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/animate.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/all.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/flaticon.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/themify-icons.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/magnific-popup.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/slick.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/style.css">

    <style>
   
        body {
            background-color: #FFFFFF !important;
            overflow-x: hidden;
        }

        .f-width {
            width: 100%;
        }

        .see-more-link,
        .show-contact-link {
            font-size: 16px;
            text-decoration: none;
            color: #EC8756;
            text-transform: uppercase;
        }

        .see-more-link:hover,
        .show-contact-link:hover {
            color: #EE9310;
            text-decoration: none;
        }



        .navbar {
            background: #FFFFFF;
            box-shadow: 0px 3px 6px #00000029;
        }

        .navbar .nav-link {
            font-size: 18px;
        }

        .navbar .login-btn,
        .navbar .register-btn {
            text-transform: uppercase;
            width: 125px;
            height: 43px;
            border-radius: 3px;
            font-weight: 500;
            padding-top: 10px;
        }

        .navbar .login-btn {
            background-color: #EE9310;
            color: #FFFFFF;
            border: none !important;
        }

        .navbar .login-btn:active,
        .navbar .login-btn:focus,
        .navbar .login-btn:hover {
            background-color: #FFFFFF !important;
            color: #EE9310;
            border: 1px solid #EE9310 !important;
            transition: all 0.5s ease;
        }

        .navbar .register-btn {
            background-color: #F8F8F8;
            color: #EE9310;
            border: 1px solid #EE9310 !important;
        }

        .navbar .register-btn:active,
        .navbar .register-btn:focus,
        .navbar .register-btn:hover {
            background-color: #EE9310 !important;
            color: #FFFFFF;
            border: 1px solid #EE9310 !important;
            transition: all 0.5s ease;
        }


        .content-wrapper {
            margin-top: 25px !important;
        }


        .content-header {
            margin-bottom: 10px !important;
            padding-bottom: 0 !important;
        }

        .content-header h1 {
            font-size: 30px;
            font-weight: 400;
            margin-top: 0 !important;
            margin-bottom: 0 !important;
            line-height: 1.2;
        }

        .content-header h1 img {
            margin-left: 40px;
            display: inline;
            width: 38px;
        }



        .content-section {
            margin-top: 10px !important;
            padding-top: 0 !important;
        }

        .content-section.padding_top {
            padding-top: 0 !important;
            margin-top: 10px !important;
        }

        .content-section>.container {
            width: 100%;
            max-width: 1400px;
        }

        .content-section .row {
            display: flex;
            flex-wrap: wrap;
        }



        .table-column {
            width: 58.333333%;
            flex: 0 0 58.333333%;
            max-width: 58.333333%;
            padding-left: 15px;
            padding-right: 15px;
        }

        .table-column .content {
            width: 100%;
        }

        .table-column .container {
            width: 100%;
            max-width: 100%;
            padding-left: 0;
            padding-right: 0;
        }

        .table-column .row {
            margin-left: 0;
            margin-right: 0;
        }

        .table-column .col-xs-11 {
            padding-left: 0;
            padding-right: 0;
        }



        .box {
            width: 100%;
        }

        .box-body {
            width: 100%;
        }

        .panel-body {
            width: 100%;
            padding: 15px 0;
        }

        .table-responsive {
            width: 100%;
            overflow-x: auto;
            overflow-y: visible;
        }

        #dataTables-example {
            width: 100% !important;
            margin-bottom: 0;
        }

        #dataTables-example th,
        #dataTables-example td {
            vertical-align: middle;
        }


        .technician-photo {
            width: 150px;
            height: 120px;
            object-fit: cover;
            border-radius: 3px;
        }

        .technician-placeholder {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background: #F7F7F7;
            color: #EE9310;
            font-size: 46px;
        }

        .technician-name {
            color: #EE9310;
            font-size: 18px;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .technician-meta {
            color: #555555;
            line-height: 1.7;
        }

        .technician-meta strong {
            color: #333333;
        }


        .map-column {
            width: 41.666667% !important;
            flex: 0 0 41.666667% !important;
            max-width: 41.666667% !important;

            padding-left: 15px !important;
            padding-right: 15px !important;
            padding-bottom: 20px !important;

            position: relative;
        }


        .map-column>.container {
            width: 100% !important;
            max-width: 100% !important;

            margin-left: 0 !important;
            margin-right: 0 !important;

            padding-left: 0 !important;
            padding-right: 0 !important;
        }

        .map-column .row {
            margin-left: 0;
            margin-right: 0;
        }

        .map-column .col-12 {
            width: 100%;
            padding-left: 0;
            padding-right: 0;
        }


        #map_wrapper_div {
            width: 100%;
            height: 700px;

            overflow: hidden;

            border-radius: 5px;
            border: 1px solid #DDDDDD;

            background-color: #F7F7F7;
        }

        #map_tuts {
            width: 100%;
            height: 100%;
        }


        .info_content {
            min-width: 180px;
            max-width: 280px;
            padding: 5px;
        }

        .info_content h3 {
            font-size: 16px;
            color: #EE9310;
            margin-bottom: 8px;
        }

        .info_content p {
            font-size: 13px;
            margin-bottom: 5px;
            color: #555555;
        }


      

        .footer_part {
            background: #070300;
        }

        .footer_part h4,
        .footer_part p,
        .footer_part a {
            color: #FFFFFF;
        }

        .footer_part a:hover {
            color: #EE9310;
        }


        @media (max-width: 1199px) {

            .table-column {
                width: 55%;
                flex: 0 0 55%;
                max-width: 55%;
            }

            .map-column {
                width: 45% !important;
                flex: 0 0 45% !important;
                max-width: 45% !important;
            }

            #map_wrapper_div {
                height: 650px;
            }
        }



        @media (max-width: 991px) {

            .navbar {
                height: auto !important;
                padding: 12px 20px;
            }

            .navbar-brand {
                padding-left: 0 !important;
            }

            .navbar-collapse {
                padding: 16px 0;
            }

            .content-wrapper {
                margin-top: 20px !important;
            }

            .content-header {
                margin-bottom: 10px !important;
            }

            .content-header h1 {
                font-size: 26px;
            }

            .content-header h1 img {
                margin-left: 0;
            }


            .table-column,
            .map-column {
                width: 100% !important;
                flex: 0 0 100% !important;
                max-width: 100% !important;
            }

            .map-column {
                margin-top: 30px;
            }

            #map_wrapper_div {
                height: 500px;
            }
        }


        @media (max-width: 576px) {

            .content-wrapper {
                margin-top: 15px !important;
            }

            .content-header {
                margin-bottom: 8px !important;
            }

            .content-header h1 {
                font-size: 23px;
            }

            .technician-photo {
                width: 100px;
                height: 90px;
            }

            .technician-name {
                font-size: 16px;
            }

            .technician-meta {
                font-size: 13px;
            }

            #map_wrapper_div {
                height: 400px;
            }

            .navbar .login-btn,
            .navbar .register-btn {
                width: 100%;
                margin-bottom: 5px;
            }
        }


        .padding_top {
            padding-top: 0 !important;
        }

        .contact-section.padding_top {
            padding-top: 0 !important;
        }

        section.content-section.padding_top {
            padding-top: 0 !important;
        }



        .content-section,
        .content-section>.container,
        .content-section .row {
            overflow-x: hidden;
        }
    </style>

</head>

<body>


    <nav class="navbar navbar-expand-lg navbar-light" style="height:80px;">

        <a class="navbar-brand pl-5" href="<?= base_url('home'); ?>">
            <img
                src="<?= base_url(); ?>catalogUploads/nsf_logo.png"
                width="160px"
                alt="National Science Foundation">
        </a>

        <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>


        <div
            class="collapse navbar-collapse pr-5"
            id="navbarSupportedContent">

            <ul class="navbar-nav ml-auto">

                <li class="nav-item mx-3">
                    <a
                        class="nav-link"
                        href="<?= base_url('home'); ?>">
                        Home
                    </a>
                </li>

                <li class="nav-item mx-3">
                    <a
                        class="nav-link"
                        href="<?= base_url('eproductView'); ?>">
                        Product Category
                    </a>
                </li>

                <li class="nav-item mx-3">
                    <a
                        class="nav-link"
                        href="<?= base_url('einstituteView'); ?>">
                        Institutes
                    </a>
                </li>

                <li class="nav-item mx-3">
                    <a
                        class="nav-link"
                        href="<?= base_url('elaboratories'); ?>">
                        Laboratories
                    </a>
                </li>

                <li class="nav-item mx-3">
                    <a
                        class="nav-link"
                        href="<?= base_url('contact'); ?>">
                        Contact
                    </a>
                </li>

                <li class="nav-item mx-3">
                    <a
                        href="<?= base_url('homedashboard'); ?>"
                        class="btn my-2 my-sm-0 login-btn"
                        role="button"
                        style="font-size:16px;">
                        Dashboard
                    </a>
                </li>

                <li class="nav-item mx-3">
                    <a
                        href="<?= base_url('user_authentication'); ?>"
                        class="btn my-2 my-sm-0 register-btn"
                        role="button"
                        style="font-size:16px;">
                        Login
                    </a>
                </li>

                <li class="nav-item mx-3">
                    <a
                        href="<?= base_url('register'); ?>"
                        class="btn my-2 my-sm-0 register-btn"
                        role="button"
                        style="font-size:16px;">
                        Register
                    </a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="content-wrapper">

        <section class="content-header">
            <h1>
                <i>
                    <img
                        src="<?= base_url(); ?>layout/img/machine.svg"
                        alt="">
                </i>

                Technician List
            </h1>

        </section>

        <section
            class="contact-section padding_top content-section">

            <div class="container">

                <div class="row">


                    <div class="table-column">

                        <section class="content">

                            <div class="container">

                                <div class="row">

                                    <div class="col-xs-11 w-100">

                                        <div class="box">

                                            <div class="box-body table-responsive no-padding">


                                                <!-- ERROR MESSAGE -->

                                                <?php if ($this->session->flashdata('error')): ?>

                                                    <div class="alert alert-danger">

                                                        <?= htmlspecialchars(
                                                            $this->session->flashdata('error'),
                                                            ENT_QUOTES,
                                                            'UTF-8'
                                                        ); ?>

                                                    </div>

                                                <?php endif; ?>


                                                <!-- SUCCESS MESSAGE -->

                                                <?php if ($this->session->flashdata('success')): ?>

                                                    <div class="alert alert-success">

                                                        <?= htmlspecialchars(
                                                            $this->session->flashdata('success'),
                                                            ENT_QUOTES,
                                                            'UTF-8'
                                                        ); ?>

                                                    </div>

                                                <?php endif; ?>


                                                <!-- TABLE -->

                                                <div class="panel-body">

                                                    <table
                                                        width="100%"
                                                        class="table table-striped table-bordered table-hover"
                                                        id="dataTables-example"
                                                        align="left">

                                                        <thead style="font-size:14px;">

                                                            <tr>

                                                                <th style="width:200px;">
                                                                </th>

                                                                <th>
                                                                    Technician Details
                                                                </th>

                                                            </tr>

                                                        </thead>


                                                        <tbody>


                                                            <?php if (!empty($technicianRecords)): ?>


                                                                <?php foreach ($technicianRecords as $record): ?>


                                                                    <?php

                                                                    $fullName = trim(
                                                                        ($record->first_name ?: '') .
                                                                            ' ' .
                                                                            ($record->last_name ?: '')
                                                                    );

                                                                    $institution =
                                                                        $record->institute_name ?:
                                                                        $record->other_institute_name;

                                                                    $image = trim(
                                                                        (string) $record->picture
                                                                    );

                                                                    $imageUrl = filter_var(
                                                                        $image,
                                                                        FILTER_VALIDATE_URL
                                                                    )
                                                                        ? $image
                                                                        : base_url(
                                                                            'imagesUpload/' .
                                                                                rawurlencode($image)
                                                                        );

                                                                    ?>


                                                                    <tr>


                                                                        <!-- TECHNICIAN IMAGE -->

                                                                        <td style="font-size:14px; width:200px;">

                                                                            <?php if ($image !== ''): ?>

                                                                                <img
                                                                                    class="technician-photo"
                                                                                    src="<?= htmlspecialchars(
                                                                                                $imageUrl,
                                                                                                ENT_QUOTES,
                                                                                                'UTF-8'
                                                                                            ); ?>"
                                                                                    alt="<?= htmlspecialchars(
                                                                                                $fullName,
                                                                                                ENT_QUOTES,
                                                                                                'UTF-8'
                                                                                            ); ?>">

                                                                            <?php else: ?>

                                                                                <span class="technician-photo technician-placeholder">

                                                                                    <i class="fa fa-user"></i>

                                                                                </span>

                                                                            <?php endif; ?>

                                                                        </td>


                                                                        <!-- TECHNICIAN DETAILS -->

                                                                        <td style="font-size:14px;">

                                                                            <div class="technician-name">

                                                                                <?= htmlspecialchars(
                                                                                    $fullName ?: 'Registered Technician',
                                                                                    ENT_QUOTES,
                                                                                    'UTF-8'
                                                                                ); ?>

                                                                            </div>


                                                                            <div class="technician-meta">


                                                                                <?php if (!empty($record->designation)): ?>

                                                                                    <strong>
                                                                                        Designation:
                                                                                    </strong>

                                                                                    <?= htmlspecialchars(
                                                                                        $record->designation,
                                                                                        ENT_QUOTES,
                                                                                        'UTF-8'
                                                                                    ); ?>

                                                                                    <br>

                                                                                <?php endif; ?>


                                                                                <?php if (!empty($institution)): ?>

                                                                                    <strong>
                                                                                        Institute:
                                                                                    </strong>

                                                                                    <?= htmlspecialchars(
                                                                                        $institution,
                                                                                        ENT_QUOTES,
                                                                                        'UTF-8'
                                                                                    ); ?>

                                                                                    <br>

                                                                                <?php endif; ?>


                                                                                <?php if (!empty($record->address)): ?>

                                                                                    <strong>
                                                                                        Address:
                                                                                    </strong>

                                                                                    <?= htmlspecialchars(
                                                                                        $record->address,
                                                                                        ENT_QUOTES,
                                                                                        'UTF-8'
                                                                                    ); ?>

                                                                                    <br>

                                                                                <?php endif; ?>


                                                                                <?php if (!empty($record->email)): ?>

                                                                                    <strong>
                                                                                        Email:
                                                                                    </strong>

                                                                                    <?= htmlspecialchars(
                                                                                        $record->email,
                                                                                        ENT_QUOTES,
                                                                                        'UTF-8'
                                                                                    ); ?>

                                                                                    <br>

                                                                                <?php endif; ?>


                                                                                <?php if (!empty($record->mobile_number)): ?>

                                                                                    <strong>
                                                                                        Mobile:
                                                                                    </strong>

                                                                                    <?= htmlspecialchars(
                                                                                        $record->mobile_number,
                                                                                        ENT_QUOTES,
                                                                                        'UTF-8'
                                                                                    ); ?>

                                                                                <?php endif; ?>


                                                                                <?php if (!empty($record->phone_number)): ?>

                                                                                    <?= !empty($record->mobile_number) ? ' | ' : '' ?>

                                                                                    <strong>
                                                                                        Phone:
                                                                                    </strong>

                                                                                    <?= htmlspecialchars(
                                                                                        $record->phone_number,
                                                                                        ENT_QUOTES,
                                                                                        'UTF-8'
                                                                                    ); ?>

                                                                                <?php endif; ?>


                                                                                <!-- LOCATION -->

                                                                                <?php if (
                                                                                    $record->latitude !== null &&
                                                                                    $record->longitude !== null
                                                                                ): ?>

                                                                                    <p class="mt-2">

                                                                                        <a
                                                                                            class="see-more-link"
                                                                                            href="JavaScript:newPopup('<?= base_url() . 'etechnician_googleview/' . $record->id; ?>');">

                                                                                            View Location

                                                                                        </a>

                                                                                    </p>

                                                                                <?php endif; ?>


                                                                            </div>

                                                                        </td>

                                                                    </tr>


                                                                <?php endforeach; ?>


                                                            <?php else: ?>


                                                                <tr>

                                                                    <td
                                                                        colspan="2"
                                                                        class="text-center">

                                                                        No technicians available.

                                                                    </td>

                                                                </tr>


                                                            <?php endif; ?>


                                                        </tbody>

                                                    </table>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </section>

                    </div>


                    <div class="map-column">

                        <div class="container">

                            <div class="row">

                                <div class="col-12">

                                    <div id="map_wrapper_div">

                                        <div id="map_tuts"></div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>


                </div>

            </div>

        </section>

    </div>


    <footer
        class="footer_part"
        style="background:#070300;">

        <div class="container">

            <div class="row justify-content-around">


                <!-- CONTACT -->

                <div class="col-sm-6 col-lg-5">

                    <div class="single_footer_part">

                        <h4>
                            Contact Us
                        </h4>

                        <ul class="list-unstyled">

                            <li>
                                <p>
                                    National Science Foundation
                                </p>
                            </li>

                            <li>
                                <p>
                                    # 47/5, Maitland Place, Colombo 07
                                </p>
                            </li>

                            <li>
                                <p>
                                    Phone : +94 (0)11 2 696771,
                                    Fax : +94 (0)11 2 694754
                                </p>
                            </li>

                            <li>
                                <p>
                                    Email : info@nsf.gov.lk
                                </p>
                            </li>

                        </ul>

                    </div>

                </div>


                <!-- QUICK LINKS -->

                <div class="col-sm-6 col-lg-4">

                    <div class="single_footer_part">

                        <h4>
                            Quick Links
                        </h4>

                        <ul class="list-unstyled">

                            <li>
                                <a
                                    href="http://www.nsf.ac.lk/"
                                    target="_blank">
                                    NSF Home
                                </a>
                            </li>

                            <li>
                                <a
                                    href="https://gdp.nsf.gov.lk/"
                                    target="_blank">
                                    Global Digital Platform
                                </a>
                            </li>

                            <li>
                                <a
                                    href="https://stmis.nsf.gov.lk/"
                                    target="_blank">
                                    S &amp; T Management Information System
                                </a>
                            </li>

                            <li>
                                <a
                                    href="http://viduketha.nsf.gov.lk"
                                    target="_blank">
                                    Viduketha
                                </a>
                            </li>

                        </ul>

                    </div>

                </div>


                <!-- SUBSCRIBE -->

                <div class="col-sm-6 col-lg-3">

                    <div class="single_footer_part">

                        <h4>
                            Subscribe to NSF eAlerts
                        </h4>

                        <a
                            href="http://lists.nsf.gov.lk/"
                            class="button rounded-0 primary-bg text-white w-10 btn_1"
                            style="background-color:#EE9310;"
                            target="_blank">

                            subscribe

                        </a>

                    </div>

                </div>


            </div>

        </div>



        <div class="copyright_part">

            <div class="container">

                <div class="row">

                    <div class="col-lg-12">

                        <div class="copyright_text">

                            <p>

                                Copyright &copy;

                                <script>
                                    document.write(
                                        new Date().getFullYear()
                                    );
                                </script>

                                All rights reserved |
                                Powered by National Science Foundation of Sri Lanka

                            </p>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </footer>

    <script src="<?= base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>

    <script src="<?= base_url(); ?>layout/js/popper.min.js"></script>

    <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>

    <script src="<?= base_url(); ?>layout/js/main.js"></script>


    <script>
   
        function newPopup(url) {

            var popupWindow = window.open(
                url,
                'popUpWindow',
                'height=500,width=450,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes'
            );

        }


        var technicianLocations = [

            <?php if (!empty($technicianRecords)): ?>

                <?php foreach ($technicianRecords as $record): ?>

                    <?php if (
                        $record->latitude !== null &&
                        $record->longitude !== null
                    ): ?>

                        {
                            name: <?= json_encode(
                                        trim(
                                            ($record->first_name ?: '') .
                                                ' ' .
                                                ($record->last_name ?: '')
                                        )
                                    ); ?>,

                            institute: <?= json_encode(
                                            $record->institute_name ?:
                                                $record->other_institute_name ?:
                                                ''
                                        ); ?>,

                            address: <?= json_encode(
                                            $record->institute_address ?:
                                                $record->address ?:
                                                ''
                                        ); ?>,

                            latitude: <?= (float) $record->latitude; ?>,

                            longitude: <?= (float) $record->longitude; ?>
                        },

                    <?php endif; ?>

                <?php endforeach; ?>

            <?php endif; ?>

        ];


        function initializeTechnicianMap() {

            var mapElement =
                document.getElementById('map_tuts');



            if (
                !mapElement ||
                typeof google === 'undefined'
            ) {
                return;
            }
            var map =
                new google.maps.Map(
                    mapElement, {
                        mapTypeId: 'roadmap'
                    }
                );



            var bounds =
                new google.maps.LatLngBounds();


            var infoWindow =
                new google.maps.InfoWindow();


            technicianLocations.forEach(
                function(technician) {

                    var position =
                        new google.maps.LatLng(
                            technician.latitude,
                            technician.longitude
                        );


                    bounds.extend(position);


                    var marker =
                        new google.maps.Marker({
                            position: position,
                            map: map,
                            title: technician.name
                        });



                    marker.addListener(
                        'click',
                        function() {

                            var content =

                                '<div class="info_content">' +

                                '<h3>' +
                                escapeHtml(technician.name) +
                                '</h3>' +

                                '<p>' +

                                '<b>Institute:</b> ' +

                                escapeHtml(
                                    technician.institute
                                ) +

                                '</p>' +

                                '<p>' +

                                escapeHtml(
                                    technician.address
                                ) +

                                '</p>' +

                                '</div>';


                            infoWindow.setContent(
                                content
                            );


                            infoWindow.open(
                                map,
                                marker
                            );

                        }
                    );

                }
            );


            if (technicianLocations.length > 0) {

                map.fitBounds(bounds);


                if (technicianLocations.length === 1) {

                    google.maps.event.addListenerOnce(
                        map,
                        'bounds_changed',
                        function() {

                            if (map.getZoom() > 15) {

                                map.setZoom(15);

                            }

                        }
                    );

                }

            } else {


                map.setCenter({
                    lat: 7.8731,
                    lng: 80.7718
                });

                map.setZoom(7);

            }

        }


        function escapeHtml(value) {

            if (value === null || value === undefined) {

                return '';

            }

            return String(value)

                .replace(/&/g, '&amp;')

                .replace(/</g, '&lt;')

                .replace(/>/g, '&gt;')

                .replace(/"/g, '&quot;')

                .replace(/'/g, '&#039;');

        }
    </script>
    <script
        async
        defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAlG-f0n1z956d-5n4Y4bFnD8AJ7fk0pqs&callback=initializeTechnicianMap">
    </script>

</body>

</html>