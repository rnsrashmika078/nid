<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
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



    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-240616124-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-240616124-1');
    </script>



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

        /* Index Home Container */

        .section {
            height: fit-content;
            padding: 30px;
        }

        /* Hero Section*/

        .hero {
            background-color: #FFFFFF;
            /* background-image: url(<?= base_url(); ?>layout/img/home/left-tile.png);
background-image: url(<?= base_url(); ?>layout/img/home/right-tile-2x.png);*/

            background-image: url(<?= base_url(); ?>layout/img/home/hm1.jpg);
            background-position: center;
            background-size: cover;
        }

        .hero .title {
            font-size: 59px;
            font-weight: 700;
            text-transform: capitalize;
            padding: 20px 0px;
            color: white;
        }


        .hero .left-tile .inner .title {
            font-size: 20px;
            font-weight: 600;
            color: #FFFFFF;
        }

        .hero .left-tile .inner .db-btn-search {
            background-color: #EE9310;
            text-transform: uppercase;
            color: #fff;
            width: 125px;
            height: 38px;
            border-radius: 0px 3px 3px 0px;
            border: none !important;
            font-size: 14px;
            font-weight: 600;
        }

        .hero .left-tile .inner .db-btn-search:active,
        .db-btn-search:focus,
        .db-btn-search:hover {
            background-color: #ec88569c !important;
            color: #ffffff !important;
            border: 1px solid #f36118 !important;
            /* border: none !important; */
            transition: all 0.5s ease;
        }

        .hero .right-tile,
        .hero .left-tile {
            /* height: 214px; */
            padding: 0px 0 50px;
            /* margin-bottom: 170px; */
            width: 100%;
            /* background-image: url(/layout/img/home/right-tile.png); */
            background-size: cover;
            background-position: center;
            text-align: center;
        }

        .top-banner {
            padding-bottom: 170px !important;
            max-width: 1140px;
        }

        /* .hero .right-tile .inner {
    width: 80%;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
} */

        .hero .right-tile .inner .title {
            font-size: 20px;
            font-weight: 600;
            color: #FFFFFF;
        }

        .hero .right-tile .inner .db-btn-search {
            background-color: #EE9310;
            text-transform: uppercase;
            color: #fff;
            width: 125px;
            height: 38px;
            border-radius: 0px 3px 3px 0px;
            border: none !important;
            font-size: 14px;
            font-weight: 600;
        }

        .hero .right-tile .inner .db-btn-search:active,
        .db-btn-search:focus,
        .db-btn-search:hover {
            background-color: #ec88569c !important;
            color: #ffffff !important;
            border: 1px solid #f36118 !important;
            /* border: none !important; */
            transition: all 0.5s ease;
        }

        .hero .right-tile .inner .title {
            font-size: 20px;
            font-weight: 600;
            color: #FFFFFF;
        }

        /* Popular Categories */
        .popular {
            background-color: white;
            padding: 0 60px;

            /* position: relative; */
        }

        .popular .popular-card {
            /* position:absolute; */
            top: -150px;
            background-color: white;
            box-shadow: 5px 5px 10px #888888;
            ;
            /* height: 200px; */
            border-radius: 10px;
            margin: -50px 0px -120px;
            padding: 25px 15px;
        }

        .popular .title {
            font-size: 22px;
            font-weight: 600;
            text-align: center;
        }

        .popular .categories .title {
            font-size: 14px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            white-space: nowrap;
        }

        .popular .see-all-container {
            /* width: 400px;
    height: 50px; */
            border-radius: 54px;
            color: #FFAC84;
            font-weight: 600;
            margin: auto;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .popular .see-all-container:hover {
            cursor: pointer;
            border: #e9e9e9 solid 1px;
            transition: all 0.5s ease;
        }
























        /* Explore Section*/

        .explore {
            background-color: #ffffff;
        }

        .explore .left .inner {
            width: 90%;
            /* position: absolute; */
        }

        .explore .left .inner .title {
            font-size: 32px;
            font-weight: 600;
            line-height: 36px;
            text-align: left;
        }

        .explore .left .inner .sub-text {
            font-size: 22px;
            font-weight: 400;
            line-height: 30px;
            text-align: left;
        }

        .explore .right .inner {
            background-size: contain;
        }

        .explore img {
            width: 100%;
        }





        /* Testiminals Section */

        .testimonial {
            background-color: #F8F8F8;
        }

        .testimonial .title {
            font-size: 32px;
            font-weight: 600;
            text-align: left;
        }

        .testimonial .btn-nav {
            background-color: #fff;
            text-transform: uppercase;
            color: #EE9310;
            width: 125px;
            height: 38px;
            border-radius: 3px;
            border: none !important;
            font-size: 14px;
            font-weight: 600;
        }

        .testimonial .btn-nav:active,
        .btn-nav:focus,
        .btn-nav:hover {
            background-color: #EE9310 !important;
            color: #ffffff !important;
            border: 1px solid #EE9310 !important;
            transition: all 0.5s ease;
        }

        .testimonial .cards-container {
            padding: 0;
            margin: 0;
            -ms-box-orient: horizontal;
            display: -webkit-box;
            display: -moz-box;
            display: -ms-flexbox;
            display: -moz-flex;
            display: -webkit-flex;
            display: flex;
        }

        .testimonial .wrap {
            -webkit-flex-wrap: wrap;
            flex-wrap: wrap;
        }

        .testimonial .testimonial-card {
            background-color: #FFFFFF;
            width: 100%;
            min-height: 306px;
            margin: 15px;
            margin-bottom: 30px;
            box-shadow: 0px 3px 6px #00000029;
            border-radius: 3px;
            text-align: center;
            padding: 15px;
        }

        .testimonial .testimonial-card .name {
            color: #0A0A0A;
            font-size: 18px;
            font-weight: 600;
        }

        .testimonial .testimonial-card .location {
            color: #686868;
            font-size: 16px;
            font-weight: 600;
        }

        .testimonial .testimonial-card .description {
            color: #0A0A0A;
            font-size: 16px;
            font-weight: 600;
        }
    </style>






</head>



<body>
    eproduct_instituteView<?php $this->load->view('home/partials/navbar_v2'); ?>

    <section class="hero p-4" style="margin-top:-20px;">
        <div class="top-banner container-fluid mb-4">
            <p class="title text-center">
                National Instrument Database
            </p>
            <div class="row justify-content-center align-items-center">
                <!-- <div class="col-sm-5 left-tile">
                    <div class="inner">
                        <p class="title pb-2"   >
                            Search Instruments
                        </p>
            <form action="<?php echo base_url() ?>einstrumentView" method="POST" id="searchList"  class="search-job"  role="form" enctype="multipart/form-data" >
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="autoInstrument" name="searchText" style="height:38px; font-size:15px;"
                                placeholder="Instrument name Ex: Spectrophotometre" aria-label="search-1"
                                aria-describedby="search-1">
                            <div class="input-group-append">
                                <button type="submit" value="submit"  class="btn db-btn-search" type="button">Search</button>
                            </div>
                        </div>
              </form>
                    </div>
                </div>






               <!-- <div class="offset-sm-1 col-sm-5 right-tile">
                    <div class="inner">
                        <p class="title pb-2">
                            Search Service or Institute
                        </p>

            <form action="<?php echo base_url() ?>eproduct_instituteView" method="POST" id="searchList"  class="search-job"  role="form" enctype="multipart/form-data">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" style="height:38px; font-size:15px;"
                                placeholder="Product category or service Ex: Soil" aria-label="search-2"
                                aria-describedby="search-2">
                            <div class="input-group-append">
                                <button type="submit" value="submit" class="btn db-btn-search" type="button">Search</button>
                            </div>
                        </div>
            </form>
                    </div>
                </div>-->











                <div class="col-sm-12 left-tile">
                    <div class="inner">
                        <!--<p class="title pb-2">
                            Search Instruments
                        </p>-->
                        <!-- <form action="<?php echo base_url() ?>einstrumentView" method="POST" id="searchList"  class="search-job"  role="form" enctype="multipart/form-data" style="display: inline-block;  width: 81%;">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="autoInstrument" name="searchText" style="border: 1px solid #EE9310; height:38px; font-size:16px; "
                                placeholder="Search Instrument Name or Testing Parameter or Keyword   Ex: Spectrophotometer" aria-label="search-1"
                                aria-describedby="search-1">
                            <div class="input-group-append">
                                <button type="submit" value="submit" class="btn db-btn-search" type="button">Search</button>
                            </div>
                        </div>
            </form> -->
                    </div>
                </div>

            </div>
        </div>
    </section>



    <section class="popular">

        <div class="row justify-content-center align-items-center">
            <div class="popular-card col justify-content-center">
                <p class="title">Discover Institutes to test your Products</p>

                <p class="title" style="margin-bottom:-25px; font-size:18px;"><u style="color:black;">Popular Products</u></p>
                <div class="row mt-5 mb-3 align-items-end categories">
                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_water'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/water.png" width="85px" height="85px" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Water
                        </p>
                    </div>
                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_soil'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/soil.png" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Soil
                        </p>
                    </div>

                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_pharmaceutical'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/pharm.png" width="75px" height="75px" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Pharmaceutical
                        </p>
                    </div>


                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_food'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/food.png" width="75px" height="75px" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Food
                        </p>
                    </div>






                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_metal'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/metal.png" width="70px" height="70px" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Metal
                        </p>
                    </div>

                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_cosmetic'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/cos.png" width="70px" height="70px" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Cosmetic
                        </p>
                    </div>
                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_sewage'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/sewage.png" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Sewage
                        </p>
                    </div>
                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_mineral'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/mineral.png" width="70px" height="70px" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Mineral
                        </p>
                    </div>
                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_fiber'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/fiber.png" width="65px" height="65px" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Fiber
                        </p>
                    </div>


                    <div class="col block text-center">
                        <div class="circle">
                            <a href="<?= base_url('eproduct_gas'); ?>">
                                <img class="icon" src="<?= base_url(); ?>layout/img/home/gas.png" width="75px" height="75px" alt="">
                            </a>
                        </div>
                        <p class="title text-center">
                            Gas
                        </p>
                    </div>
                </div>
                </br>







                <div class="col-sm-12 left-tile">
                    <div class="inner">
                        <!--<p class="title pb-2">
                            Search Instruments
                        </p>-->
                        <center>
                            <form action="<?php echo base_url() ?>eproduct_instituteView" method="POST" id="searchList" class="search-job" role="form" enctype="multipart/form-data" style="display: inline-block;  width: 77%;">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="autoInstrument" name="searchText" style="border: 1px solid #EE9310; height:38px; font-size:16px; "
                                        placeholder="Search Product Category/Service or Institute Name    Ex: Water" aria-label="search-1"
                                        aria-describedby="search-1">
                                    <div class="input-group-append">
                                        <button type="submit" value="submit" class="btn db-btn-search" type="button" style=" background-color: #EE9310;  text-transform: uppercase;
    color: #fff;     width: 125px;     height: 38px;     border-radius: 0px 3px 3px 0px;         font-size: 14px;     font-weight: 600; ">Search</button>
                                    </div>
                                </div>
                            </form>
                        </center>
                    </div>







                    </br>




                    <div class="col">

                        <button onclick="document.location='eproduct_instituteView'" class="btn see-all-container" style="font-size:18px; color:#EE9310;">
                            SEE ALL CATEGORIES
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </section>








    <!-- banner part start-->
    <section class="banner_part" style=" background-color: #FFFFFF;  ">
        <!-- <div class="container" style="margin-top:-100px; margin-bottom:-170px;  position: relative;">-->

        <div class="container">
            <div class="row align-items-center">






                <div class="col-lg-4">

                    </br>
                    </br>
                    <div class="titlepage">


                        <!--<h2 style="text-align: left; margin-top: -50px; ">Latest News</h2> ///With marqee it is necessary-->
                        <h2 style="text-align: left; margin-top: -200px; color: #D86B06; ">Latest News</h2>

                        </br>
                    </div>
                    <?php
                    $this->load->helper('form');
                    $error = $this->session->flashdata('error');
                    if ($error) {
                    ?>
                        <div class="alert alert-danger alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                            <?php echo $this->session->flashdata('error'); ?>
                        </div>
                    <?php } ?>
                    <?php
                    $success = $this->session->flashdata('success');
                    if ($success) {
                    ?>
                        <div class="alert alert-success alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                            <?php echo $this->session->flashdata('success'); ?>
                        </div>
                    <?php } ?>



                    <!--<marquee scrollamount="3" direction="down" height="600"> 

<?php
if (!empty($homenewsRecords)) {
    foreach ($homenewsRecords as $record) {
?>

<a href="<?php echo base_url() . 'homenewsView/' . $record->home_news_id; ?>"> <img src="<?= base_url(); ?>homenewsimagesUpload/<?php echo $record->home_image ?>" width="220" height="220" alt="Arrow " /></a><br /><br />
<P><a href="<?php echo base_url() . 'homenewsView/' . $record->home_news_id; ?>"><?php echo $record->home_news_title ?></a></p>
<br />
<br /><br />



 <?php

    }
}
    ?>	
					
		




</marquee>-->


                    <?php
                    if (!empty($homenewsRecords)) {
                        foreach ($homenewsRecords as $record) {
                    ?>

                            <!--<a href="<?php echo base_url() . 'homenewsView/' . $record->home_news_id; ?>"> <img src="<?= base_url(); ?>homenewsimagesUpload/<?php echo $record->home_image ?>" width="220" height="220" alt="Arrow " /></a><br /><br />-->
                            <h3><?php echo $record->home_news_title ?></h3>
                            <br />
                            <h5><?php echo $record->home_sub_title ?></h5>

                            <br />
                            <?php echo $record->home_news_subject ?>

                    <?php

                        }
                    }
                    ?>





                </div>






























                <div class="col-lg-8">
                    <div class="banner_slider owl-carousel">
                        <div class="single_banner_slider">
                            <div class="row">
                                <div class="col-lg-5 col-md-8">
                                    <!--<div class="banner_text" >-->
                                    <div>
                                        <!-- <div class="banner_text_iner"  >-->
                                        <div>
                                            </br>
                                            </br>
                                            <h2>Explore the availability of research instruments required for your experiment</h2>

                                            </br>
                                            <h3>The National Instrument Database enables you to search for research instruments available at different institutes. Researchers can now quickly
                                                and easily identify and locate available instruments required for their research.</h3>
                                            </br>
                                            </br>
                                            </br>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner_img d-none d-lg-block" style="margin-top:-140px; ">
                                    <img src="<?= base_url(); ?>layout/img/home/sln2.png" alt="" width="400px" height="430px" style="margin-left:70px; ">

                                </div>
                            </div>


                        </div>
                        <div class="single_banner_slider">
                            <div class="row">
                                <div class="col-lg-5 col-md-8">
                                    <!--<div class="banner_text" >-->
                                    <div>
                                        <!-- <div class="banner_text_iner"  >-->
                                        <div>
                                            </br>
                                            </br>
                                            <h2>Information on research instruments available in the Country</h2>
                                            </br>
                                            </br>
                                            <h3>You can check the database for research instruments according to Institute, product category etc.
                                                and be informed of the wealth of research instruments available in the country. </h3>
                                            </br>
                                            </br>
                                            </br>
                                        </div>
                                    </div>
                                </div>

                                <div class="banner_img d-none d-lg-block" style="margin-top:-170px; ">
                                    <img src="<?= base_url(); ?>layout/img/home/body.jpg" alt="" width="415px" height="475px" style="margin-left:10px;">
                                    </br>
                                    </br>
                                </div>
                            </div>



                        </div>
                        <div class="single_banner_slider">
                            <div class="row">
                                <div class="col-lg-5 col-md-8">
                                    <!--<div class="banner_text" >-->
                                    <div>
                                        <!-- <div class="banner_text_iner"  >-->
                                        <div>
                                            </br>
                                            </br>
                                            <h2>Information on types and models of research instruments</h2>
                                            </br>
                                            </br>
                                            <h3>The database has information on a large number of research instruments and their specifications which would
                                                be useful for school children, university students, researchers and even general public.</h3>
                                            </br>
                                            </br>
                                            </br>
                                        </div>
                                    </div>
                                </div>

                                <div class="banner_img d-none d-lg-block" style="margin-top:-150px; ">
                                    <img src="<?= base_url(); ?>layout/img/home/sli1.jpg" alt="" width="340px" height="370px">
                                </div>
                            </div>
                        </div>


                        <div class="single_banner_slider">
                            <div class="row">
                                <div class="col-lg-5 col-md-8">
                                    <!--<div class="banner_text" >-->
                                    <div>
                                        <!-- <div class="banner_text_iner"  >-->
                                        <div>
                                            </br>
                                            </br>
                                            <h2>To get to know about research equipment, their functions and what they can be used for</h2>
                                            </br>
                                            </br>
                                            <h3>
                                                This will help you to make
                                                decisions when planning to purchase new equipment, donate research equipment etc.
                                            </h3>
                                            </br>
                                            </br>
                                            </br>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner_img d-none d-lg-block" style="margin-top:-170px; ">
                                    <img src="<?= base_url(); ?>layout/img/home/fibre.jpg" alt="" width="420px" height="430px">
                                </div>
                            </div>
                        </div>




                    </div>
                    <!--  <div class="slider-counter"></div>-->
                </div>









            </div>
        </div>
    </section>
    <!-- banner part start-->















    <!-- product_list part start-->
    <section class="product_list section_padding" style=" background-color:#F1EFEC;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle text-center">
                        <h2>Recently Added Instruments </h2>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-12">
                    <div class="best_product_slider owl-carousel">






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

                        <?php
                        if (!empty($instrumentRecords)) {
                            foreach ($instrumentRecords as $record) {
                        ?>






                                <div class="single_product_item">
                                    <img src="<?= base_url(); ?>catalogUploads/<?php echo rawurlencode($record->image_upload1) ?>" width="100px" height="230px" />
                                    <div class="single_product_text" style="height:230px;">
                                        <!--<h3><a href="<?php echo base_url() . 'instrumentView/' . $record->instrument_id; ?>"> <?php echo $record->instrument_name ?></a></h3>-->
                                        <h4> <?php echo $record->instrument_name ?></h4>
                                        <h3> <?php echo $record->name ?></h3>
                                        <a href="<?php echo base_url() . 'instrumentView/' . $record->instrument_id; ?>" class="add_cart">View Instrument</a>
                                    </div>
                                </div>




                        <?php
                            }
                        }
                        ?>



                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product_list part end-->
    <!--/////////////////////////////////////////////////////////////////////////-->
    <!--/////////////////////////////////////////////////////////////////////////-->









    <section class="summary p-4">
        <style>
            /* Summary Section */

            .summary {
                background-color: #FFFFFF;
            }

            .summary .title {
                font-size: 32px;
                font-weight: 600;
                text-align: left;
            }

            .summary .description {
                width: 70%;
                font-size: 20px;
                font-weight: 400;
                text-align: left;
            }

            .summary .block .circle {
                width: 100px;
                height: 100px;
                border-radius: 50%;
                background-color: #EE9310;
                margin: auto;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .summary .reg-user-container {
                width: 100%;
                height: 70px;
                border-radius: 54px;
                background-color: #EE9310;
                color: #0A0A0A;
                font-weight: 600;
                margin: auto;
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 18px;
            }

            .summary .block .circle .icon {
                width: 50px;
            }

            .summary .block .title {
                margin-top: 5px;
                font-size: 18px;
                font-weight: 600;
                margin-bottom: 0px;
            }

            .summary .block .count {
                font-size: 32px;
                font-weight: 700;
            }
        </style>
        <div class="container py-5" style="margin-top:80px">
            <!--<p class="title text-center mb-3">
                Summary of Participated Institutes
            </p>-->

            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle ">
                        <h2>&nbsp;&nbsp;Summary of Registered Institutes </h2>
                    </div>
                </div>
            </div>
            <!--<a href="homedashboard" class="button rounded-0 primary-bg text-white w-10 btn_1" style=" background-color:#EE9310  ;" target="_blank">Dashboard</a>-->

            <!--<p class="description text-center m-auto">
                National Science Foundation aims to optimise the use of the institution's research infrastructure by
                ensuring that researchers know what instrument is available, its capabilities and how to access it.
            </p>-->












            <div class="row my-5 justify-content-center">
                <div class="col-6 col-sm-4 col-md-2 block text-center">
                    <div class="circle">
                        <img class="icon" src="<?= base_url(); ?>layout/img/bank.svg" alt="">
                    </div>
                    <p class="title text-center">
                        Institutes
                    </p>
                    <p class="count">
                        <?php if (isset($instituteCount)) {
                            echo $instituteCount;
                        } else {
                            echo '0';
                        } ?>
                    </p>
                </div>
                <div class="col-6 col-sm-4 col-md-2 block text-center">
                    <div class="circle">
                        <img class="icon" src="<?= base_url(); ?>layout/img/graduation-hat.svg" alt="">
                    </div>
                    <p class="title text-center">
                        Faculties
                    </p>
                    <p class="count">
                        <?php if (isset($facultyCount)) {
                            echo $facultyCount;
                        } else {
                            echo '0';
                        } ?>
                    </p>
                </div>
                <div class="col-6 col-sm-4 col-md-2 block text-center">
                    <div class="circle">
                        <img class="icon" src="<?= base_url(); ?>layout/img/structure.svg" alt="">
                    </div>
                    <p class="title text-center">
                        Departments
                    </p>
                    <p class="count">
                        <?php if (isset($departmentCount)) {
                            echo $departmentCount;
                        } else {
                            echo '0';
                        } ?>
                    </p>
                </div>
                <div class="col-6 col-sm-4 col-md-2 block text-center">
                    <div class="circle">
                        <img class="icon" src="<?= base_url(); ?>layout/img/laboratory.svg" alt="">
                    </div>
                    <p class="title text-center">
                        Laboratories
                    </p>
                    <p class="count">
                        <?php if (isset($laboratoryCount)) {
                            echo $laboratoryCount;
                        } else {
                            echo '0';
                        } ?>
                    </p>
                </div>
                <div class="col-6 col-sm-4 col-md-2 block text-center">
                    <div class="circle">
                        <img class="icon" src="<?= base_url(); ?>layout/img/box.svg" alt="">
                    </div>
                    <p class="title text-center">
                        Products
                    </p>
                    <p class="count">
                        <?php if (isset($productCount)) {
                            echo $productCount;
                        } else {
                            echo '0';
                        } ?>
                    </p>
                </div>
                <div class="col-6 col-sm-4 col-md-2 block text-center">
                    <div class="circle">
                        <img class="icon" src="<?= base_url(); ?>layout/img/machine.svg" alt="">
                    </div>
                    <p class="title text-center">
                        Instruments
                    </p>
                    <p class="count">
                        <?php if (isset($instrumentCount)) {
                            echo $instrumentCount;
                        } else {
                            echo '0';
                        } ?>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="reg-user-container">
                        Number of Registered Users: <?php if (isset($usersCount)) {
                                                        echo $usersCount;
                                                    } else {
                                                        echo '0';
                                                    } ?>
                    </div>
                </div>
            </div>



        </div>
    </section>






    </div>

    <!-- <div class="container py-5">
  <div style="width:100%; padding-bottom:66.25%; position:relative;">
  <iframe src="http://localhost/instrument/google_home" style="position:absolute; top:0px; left:0px;
  width:100%; height:120%; border: none; overflow: hidden; allow-forms" scrolling="no""></iframe>
</div>

    </div> -->


    <div class="container py-5">
        <div style="width:100%; padding-bottom:68.25%; position:relative;">
            <iframe src="https://nid.nsf.gov.lk/google_home" style="position:absolute; top:0px; left:0px;
  width:100%; height:120%; border: none; overflow: hidden; allow-forms" scrolling="no""></iframe>
</div>

    </div>




       </br>
           </br>

       </br>
           </br>
             </br>
           </br>

       </br>
           </br>
		   
		   
		   
		   
		   <!-- product_list start-->
    <section class=" product_list section_padding" style=" background-color:#F1EFEC; ">

                <style>
                    /* Popup box BEGIN */
                    .hover_bkgr_fricc1 {
                        background: rgba(0, 0, 0, .4);
                        cursor: pointer;
                        display: none;
                        height: 100%;
                        position: fixed;
                        text-align: center;
                        top: 0;
                        width: 100%;
                        z-index: 10000;
                    }



                    .hover_bkgr_fricc2 {
                        background: rgba(0, 0, 0, .4);
                        cursor: pointer;
                        display: none;
                        height: 100%;
                        position: fixed;
                        text-align: center;
                        top: 0;
                        width: 100%;
                        z-index: 10000;
                    }

                    .hover_bkgr_fricc3 {
                        background: rgba(0, 0, 0, .4);
                        cursor: pointer;
                        display: none;
                        height: 100%;
                        position: fixed;
                        text-align: center;
                        top: 0;
                        width: 100%;
                        z-index: 10000;
                    }

                    .hover_bkgr_fricc4 {
                        background: rgba(0, 0, 0, .4);
                        cursor: pointer;
                        display: none;
                        height: 100%;
                        position: fixed;
                        text-align: center;
                        top: 0;
                        width: 100%;
                        z-index: 10000;
                    }

                    .hover_bkgr_fricc5 {
                        background: rgba(0, 0, 0, .4);
                        cursor: pointer;
                        display: none;
                        height: 100%;
                        position: fixed;
                        text-align: center;
                        top: 0;
                        width: 100%;
                        z-index: 10000;
                    }

                    .hover_bkgr_fricc1 .helper {
                        display: inline-block;
                        height: 100%;
                        vertical-align: middle;
                    }

                    .hover_bkgr_fricc2 .helper {
                        display: inline-block;
                        height: 100%;
                        vertical-align: middle;

                    }

                    .hover_bkgr_fricc3 .helper {
                        display: inline-block;
                        height: 100%;
                        vertical-align: middle;

                    }

                    .hover_bkgr_fricc4 .helper {
                        display: inline-block;
                        height: 100%;
                        vertical-align: middle;
                    }

                    .hover_bkgr_fricc5 .helper {
                        display: inline-block;
                        height: 100%;
                        vertical-align: middle;

                    }

                    .hover_bkgr_fricc1>div {
                        background-color: #fff;
                        box-shadow: 10px 10px 60px #555;
                        display: inline-block;
                        height: auto;
                        max-width: 800px;
                        min-height: 150px;
                        vertical-align: middle;
                        width: 60%;
                        position: relative;
                        border-radius: 8px;
                        padding: 5px 3%;
                        text-align: justify;
                    }


                    .hover_bkgr_fricc2>div {
                        background-color: #fff;
                        box-shadow: 10px 10px 60px #555;
                        display: inline-block;
                        height: auto;
                        max-width: 800px;
                        min-height: 180px;
                        vertical-align: middle;
                        width: 60%;
                        position: relative;
                        border-radius: 8px;
                        padding: 5px 3%;
                        text-align: justify;
                        float: left;
                        margin-top: 0.5em;
                    }

                    .hover_bkgr_fricc3>div {
                        background-color: #fff;
                        box-shadow: 10px 10px 60px #555;
                        display: inline-block;
                        height: auto;
                        max-width: 800px;
                        min-height: 150px;
                        vertical-align: middle;
                        width: 60%;
                        position: relative;
                        border-radius: 8px;
                        padding: 5px 3%;
                        text-align: justify;
                        float: left;
                        margin-left: -40em;
                        margin-top: 4em;

                    }


                    .hover_bkgr_fricc4>div {
                        background-color: #fff;
                        box-shadow: 10px 10px 60px #555;
                        display: inline-block;
                        height: auto;
                        max-width: 800px;
                        min-height: 150px;
                        vertical-align: middle;
                        width: 60%;
                        position: relative;
                        border-radius: 8px;
                        padding: 5px 3%;
                        text-align: justify;
                    }

                    .hover_bkgr_fricc5>div {
                        background-color: #fff;
                        box-shadow: 10px 10px 60px #555;
                        display: inline-block;
                        height: auto;
                        max-width: 800px;
                        min-height: 180px;
                        vertical-align: middle;
                        width: 60%;
                        position: relative;
                        border-radius: 8px;
                        padding: 5px 3%;
                        text-align: justify;
                        float: left;
                        margin-top: 0.5em;
                    }

                    .popupCloseButton {
                        background-color: #fff;
                        border: 3px solid #999;
                        border-radius: 50px;
                        cursor: pointer;
                        display: inline-block;
                        font-family: arial;
                        font-weight: bold;
                        position: absolute;
                        top: -20px;
                        right: -5px;
                        font-size: 25px;
                        line-height: 30px;
                        width: 30px;
                        height: 30px;
                        text-align: center;
                    }

                    .popupCloseButton:hover {
                        background-color: #ccc;
                    }

                    .trigger_popup_fricc1 {
                        cursor: pointer;
                        font-size: 20px;
                        font-color: #FC9A08;
                        margin: 20px;
                        display: inline-block;
                        font-weight: bold;
                    }

                    .trigger_popup_fricc2 {
                        cursor: pointer;
                        font-size: 20px;
                        font-color: #FC9A08;
                        margin: 20px;
                        display: inline-block;
                        font-weight: bold;
                    }

                    .trigger_popup_fricc3 {
                        cursor: pointer;
                        font-size: 20px;
                        font-color: #FC9A08;
                        margin: 20px;
                        display: inline-block;
                        font-weight: bold;
                    }

                    .trigger_popup_fricc4 {
                        cursor: pointer;
                        font-size: 20px;
                        font-color: #FC9A08;
                        margin: 20px;
                        display: inline-block;
                        font-weight: bold;
                    }

                    .trigger_popup_fricc5 {
                        cursor: pointer;
                        font-size: 20px;
                        font-color: #FC9A08;
                        margin: 20px;
                        display: inline-block;
                        font-weight: bold;
                    }
                </style>

                <script>
                    $(window).load(function() {
                        $(".trigger_popup_fricc1").click(function() {
                            $('.hover_bkgr_fricc1').show();
                        });
                        $('.hover_bkgr_fricc1').click(function() {
                            $('.hover_bkgr_fricc1').hide();
                        });
                        $('.popupCloseButton').click(function() {
                            $('.hover_bkgr_fricc1').hide();
                        });
                    });
                </script>


                <script>
                    $(window).load(function() {
                        $(".trigger_popup_fricc2").click(function() {
                            $('.hover_bkgr_fricc2').show();
                        });
                        $('.hover_bkgr_fricc2').click(function() {
                            $('.hover_bkgr_fricc2').hide();
                        });
                        $('.popupCloseButton').click(function() {
                            $('.hover_bkgr_fricc2').hide();
                        });
                    });
                </script>


                <script>
                    $(window).load(function() {
                        $(".trigger_popup_fricc3").click(function() {
                            $('.hover_bkgr_fricc3').show();
                        });
                        $('.hover_bkgr_fricc3').click(function() {
                            $('.hover_bkgr_fricc3').hide();
                        });
                        $('.popupCloseButton').click(function() {
                            $('.hover_bkgr_fricc3').hide();
                        });
                    });
                </script>

                <script>
                    $(window).load(function() {
                        $(".trigger_popup_fricc4").click(function() {
                            $('.hover_bkgr_fricc4').show();
                        });
                        $('.hover_bkgr_fricc4').click(function() {
                            $('.hover_bkgr_fricc4').hide();
                        });
                        $('.popupCloseButton').click(function() {
                            $('.hover_bkgr_fricc4').hide();
                        });
                    });
                </script>


                <script>
                    $(window).load(function() {
                        $(".trigger_popup_fricc5").click(function() {
                            $('.hover_bkgr_fricc5').show();
                        });
                        $('.hover_bkgr_fricc5').click(function() {
                            $('.hover_bkgr_fricc5').hide();
                        });
                        $('.popupCloseButton').click(function() {
                            $('.hover_bkgr_fricc5').hide();
                        });
                    });
                </script>



                <div class="container" style="margin-top:-30px">
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="section_tittle ">
                                <h3 style="font-size:35px; font-weight: bold;">Messages from Leading Stakeholders </h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product_list_slider owl-carousel">
                                <div class="single_product_list_slider">
                                    <div class="row align-items-center justify-content-between">
                                        <div class="col-lg-4 col-sm-6">
                                            <div class="single_product_item" style="height:720px;">

                                                <div style=" background-color:#FFFFFF; align-left:20px;">
                                                    </br>
                                                    <img src="<?= base_url(); ?>layout/img/nilanthi.jpg" alt="" style="isplay:block; margin:auto;  width:195px; height:225px;">
                                                    </br>
                                                    <h4 align="center">Prof. Nilanthi de Silva</h4>
                                                    <h4 align="center">Vice-Chancellor</h4>
                                                    <h4 align="center">University of Kelaniya</h4>
                                                    <p align="justify" style="margin-left:20px; margin-right:20px;">We are very happy that the NSF has taken the initiative to establish
                                                        a database with details of high-end scientific instruments scattered across Sri Lanka in universities and R&D
                                                        institutions. It will enable researchers to expand their scientific analyses through collaboration with other universities,
                                                        research institutes and government laboratories leading to quality publications and innovations. </p>
                                                    <!-- <a href="#" class="add_cart" style="margin-left:20px; margin-right:20px;">Read More..</a>-->



                                                    <a class="trigger_popup_fricc1" style="font-color:#FC9A08; font-size:14px">Read More..</a>





                                                    <div class="hover_bkgr_fricc1">
                                                        <span class="helper"></span>
                                                        <div>
                                                            <div class="popupCloseButton">&times;</div>

                                                            <p> It will reduce capital expenditure on purchase of new scientific instruments as the
                                                                National Instrument Database will enable researchers to find a suitable local lab to conduct
                                                                the analysis. Moreover, the database will enable funding agencies to identify gaps in the fleet
                                                                of high-end analytical and testing instruments available in the country, and prevent unnecessary
                                                                duplication of equipment, thus paving the way towards sustainable resource utilization. </p>

                                                            <p>
                                                                Since anyone could be a user, apart from academia, even members of the general public and industries
                                                                can request to use the instruments. Showcasing the strength of analytical/testing capacity
                                                                of universities is likely to enhance analytical services provided by them to industry and export
                                                                sector and generate more opportunities for commercialization of research. Therefore, we see
                                                                establishment of the National Instrument Database as a major step forward in leading Sri Lanka towards an
                                                                innovative, techno-entrepreneurial culture. </p>

                                                            <p>The University of Kelaniya has a strong research culture with eminent scholars and well-established
                                                                research labs. We congratulate the NSF for successfully developing this centralized integrated database
                                                                and undertake to extend our fullest cooperation in maintaining and using this database. </p>


                                                            </br>
                                                            <p><b>Prof. Nilanthi de Silva, Vice-Chancellor, University of Kelaniya</b></p>
                                                            <p><b>Dr. Wasanthi Subasinghe, Faculty of Medicine</b></p>
                                                            <p><b>Dr. Dakshika Wanniarachchi, Faculty of Science</b></p>


                                                        </div>
                                                    </div>





                                                </div>
                                            </div>
                                        </div>








                                        <div class="col-lg-4 col-sm-6">
                                            <div class="single_product_item" style="height:720px;">

                                                <div style=" background-color:#FFFFFF; align-left:20px;">
                                                    </br>
                                                    <img src="<?= base_url(); ?>layout/img/ranjith.jpg" alt="" style="isplay:block; margin:auto;  width:210px; height:225px;">
                                                    </br>
                                                    <h4 align="center">Prof. Ranjith Senaratne</h4>
                                                    <h4 align="center">Chairman</h4>
                                                    <h4 align="center">National Science Foundation</h4>
                                                    <p align="justify" style="margin-left:20px; margin-right:20px;">Sri Lanka has over 20 state-owned higher education institutions, a comparable number R&D institutions,
                                                        and several public sector institutions, such as Sri Lanka Atomic Energy Board, Sri Lanka Standard Institute and Board of Investment,
                                                        which collectively possess an immense instrument base including high-end equipment, most of which has been purchased using public funds.

                                                    </p>
                                                    <!-- <a href="#" class="add_cart" style="margin-left:20px; margin-right:20px;">Read More..</a>-->



                                                    <a class="trigger_popup_fricc2" style="font-color:#FC9A08; font-size:14px">Read More..</a>





                                                    <div class="hover_bkgr_fricc2">
                                                        <span class="helper"></span>
                                                        <div>
                                                            <div class="popupCloseButton">&times;</div>

                                                            <p> Much of this equipment is meant to be used on a 24x7 basis, as is done in many parts of the world.
                                                                However, due to compartmentalization and fragmentation of institutions, the “possessive attitude” of many scientists,
                                                                the lack of a sharing culture, and the absence of an institutional policy and mechanism for providing analytical and
                                                                testing services to external institutions and persons, many expensive items of advanced equipment and instruments
                                                                purchased operate far below their capacity. Thus, they remain underutilized and inaccessible to stakeholders
                                                                who need to analyse and test food and beverages, soil, industrial effluents, water and air, to name but a few. </p>

                                                            <p>On the other hand, providing such a service to stakeholders for a reasonable fee, besides generating revenue
                                                                for the institution and helping to make the most of the hitherto underutilized instruments,
                                                                will meet a long standing need of industries, including micro, small and medium enterprises,
                                                                which neither have the capacity to invest in expensive equipment nor the competency to maintain it
                                                                in order to carry out the requisite tests before releasing their products to the local, regional and global markets. </p>

                                                            <p>Therefore, the NSF took steps to develop a user-friendly, state-of-the-art data base of analytical,
                                                                testing and research equipment available in state higher education and R&D institutions with a
                                                                view to providing much needed services and support to its stakeholders both in the public and private
                                                                sectors in a cost-effective manner. This will undoubtedly constitute another landmark in the annals of
                                                                the almost 55-year journey of the NSF in affording a new momentum and boost to science, technology
                                                                and innovation (STI), industry and exports of the country.</p>


                                                            <p><b>Prof. Ranjith Senaratne,Chairman, National Science Foundation</b></p>



                                                        </div>
                                                    </div>





                                                </div>
                                            </div>
                                        </div>







                                        <div class="col-lg-4 col-sm-6">

                                            <div class="single_product_item" style="height:720px;">

                                                <div style=" background-color:#FFFFFF; align-left:20px;">
                                                    </br>
                                                    <img src="<?= base_url(); ?>layout/img/raviraj1.png" alt="" alt="" style="display:block; margin:auto;  width:200px; height:230px;">
                                                    </br>
                                                    <h4 align="center">Prof. Ravirajan</h4>
                                                    <h4 align="center">Dean and Senior Professor</h4>
                                                    <h4 align="center">University of Jaffna</h4>
                                                    <p align="justify" style="margin-left:20px; margin-right:20px;">Even though the scientific community and funding agencies had
                                                        recognized the need to develop a Database of the Scientific Instruments available in the Higher Educational Institutions (HEIs)
                                                        in the country a long time ago, it did not materialise until recently. I am very pleased to learn that the National Science
                                                        Foundation (NSF) has undertaken a bold initiative to create a digital National
                                                    </p>
                                                    <!--<a href="#" class="add_cart" style="margin-left:20px; margin-right:20px;">Read More..</a>-->



                                                    <a class="trigger_popup_fricc3" style="font-color:#FC9A08; font-size:14px">Read More..</a>





                                                    <div class="hover_bkgr_fricc3" style=" horizontal-align: left; ">
                                                        <span class="helper"></span>
                                                        <div>
                                                            <div class="popupCloseButton">&times;</div>

                                                            <p> Instrument Database integrating the analytical and research equipment available in more than twenty HEIs.
                                                                The database will provide the basic information of instruments located at each HEI in the country so that
                                                                potential users can contact the relevant officer at the respective HEI for more information/necessary service.
                                                                The success of this initiative entirely relies on the complete and accurate information provided by the HEIs periodically.
                                                                I congratulate the NSF for successfully developing a National Instrument Database by coordinating with more than 20 HEIs in the country.

                                                            </p>



                                                            </br>
                                                            <p><b>Prof. Ravirajan,Dean/Science and Senior Professor, University of Jaffna</b></p>


                                                        </div>
                                                    </div>





                                                </div>
                                            </div>
                                        </div>





                                    </div>
                                </div>
                                <div class="single_product_list_slider">
                                    <div class="row align-items-center justify-content-between">



                                        <div class="col-lg-4 col-sm-6">
                                            <div class="single_product_item" style="height:720px;">

                                                <div style=" background-color:#FFFFFF; align-left:20px;">
                                                    </br>
                                                    <img src="<?= base_url(); ?>layout/img/dg.jpg" alt="" style="isplay:block; margin:auto;  width:210px; height:225px;">
                                                    </br>
                                                    <h4 align="center">Dr. S.R.S.N. Sudasinghe</h4>
                                                    <h4 align="center">Director General</h4>
                                                    <h4 align="center">National Science Foundation</h4>
                                                    <p align="justify" style="margin-left:20px; margin-right:20px;">It is widely accepted that technology is the key driver
                                                        of economic growth of countries
                                                        as it transforms economies into large-scale industrialized,
                                                        capital-intensive production systems which are competitive due to higher economies of scale.
                                                        In facilitating economic development, the National Science Foundation, being one of the leading
                                                        R&D organizations in the country, has identified the need of a </p>
                                                    <!-- <a href="#" class="add_cart" style="margin-left:20px; margin-right:20px;">Read More..</a>-->



                                                    <a class="trigger_popup_fricc4" style="font-color:#FC9A08; font-size:14px">Read More..</a>





                                                    <div class="hover_bkgr_fricc4">
                                                        <span class="helper"></span>
                                                        <div>
                                                            <div class="popupCloseButton">&times;</div>

                                                            <p> platform in creating opportunities for cross-industry partnerships in their efforts: </p>

                                                            <p>
                                                                To strengthen the manufacturing community </p>

                                                            <p>To support new partnerships and to help manufacturers with emerging technology, </p>

                                                            <p>To adopt sustainable solutions and transform their interventions allowing
                                                                production industry in Sri Lanka, which has been lagging behind over the past years</p>

                                                            <p>we NSF, expect that our initiative will augment the culture of entrepreneurship in our country.
                                                                It can also provide solutions and learning opportunities to inspire the entrepreneurial minds
                                                                in our country to build more businesses creating better opportunities. This in return will stimulate
                                                                more efficient production of higher quality goods and services, on which our nation’s prosperity depends. </p>

                                                            <p>Finally, we strongly believe that this initiative will facilitate National Economic Policy
                                                                of the government in addressing macro-economic issues, because the availability of the advanced
                                                                technology will pave the way for fast and sustainable growth in our economy. Our mission is to
                                                                make that happen and we do hope that this initiative too will immensely contribute to that. </p>


                                                            </br>
                                                            <p><b>Dr. S.R.S.N. Sudasinghe</b></p>
                                                            <p><b>Director General</b></p>
                                                            <p><b>National Science Foundation</b></p>


                                                        </div>
                                                    </div>





                                                </div>
                                            </div>
                                        </div>








                                        <div class="col-lg-4 col-sm-6">
                                            <div class="single_product_item" style="height:720px;">

                                                <div style=" background-color:#FFFFFF; align-left:20px;">
                                                    </br>
                                                    <img src="<?= base_url(); ?>layout/img/vitha.jpg" alt="" style="isplay:block; margin:auto;  width:195px; height:225px;">
                                                    </br>
                                                    <h4 align="center">Prof. Meththika Vithanage</h4>
                                                    <h4 align="center">Faculty of Applied Sciences</h4>
                                                    <h4 align="center">University of Sri Jayewardenepura</h4>
                                                    <p align="justify" style="margin-left:20px; margin-right:20px;">This NID helps to locate and place advanced analytical instruments
                                                        required for both research work and commercial testing purposes. Also, this gives information for planning the instrument budget
                                                        in proposal formulation. This will serve as a resource pool for sharing equipment, which has gathered scattered information in
                                                        to a one platform. A much needed initiative executed by NSF.

                                                    </p>
                                                    <!-- <a href="#" class="add_cart" style="margin-left:20px; margin-right:20px;">Read More..</a>-->



                                                    <!--<a class="trigger_popup_fricc5" style="font-color:#FC9A08; font-size:14px">Read More..</a>-->

                                                    </br>
                                                    </br>
                                                    </br>






                                                    <div class="hover_bkgr_fricc5">
                                                        <span class="helper"></span>
                                                        <div>
                                                            <div class="popupCloseButton">&times;</div>

                                                            <p> Much of this equipment is meant to be used on a 24x7 basis, as is done in many parts of the world.
                                                                However, due to compartmentalization and fragmentation of institutions, the “possessive attitude” of many scientists,
                                                                the lack of a sharing culture, and the absence of an institutional policy and mechanism for providing analytical and
                                                                testing services to external institutions and persons, many expensive items of advanced equipment and instruments
                                                                purchased operate far below their capacity. Thus, they remain underutilized and inaccessible to stakeholders
                                                                who need to analyse and test food and beverages, soil, industrial effluents, water and air, to name but a few. </p>

                                                            <p>On the other hand, providing such a service to stakeholders for a reasonable fee, besides generating revenue
                                                                for the institution and helping to make the most of the hitherto underutilized instruments,
                                                                will meet a long standing need of industries, including micro, small and medium enterprises,
                                                                which neither have the capacity to invest in expensive equipment nor the competency to maintain it
                                                                in order to carry out the requisite tests before releasing their products to the local, regional and global markets. </p>

                                                            <p>Therefore, the NSF took steps to develop a user-friendly, state-of-the-art data base of analytical,
                                                                testing and research equipment available in state higher education and R&D institutions with a
                                                                view to providing much needed services and support to its stakeholders both in the public and private
                                                                sectors in a cost-effective manner. This will undoubtedly constitute another landmark in the annals of
                                                                the almost 55-year journey of the NSF in affording a new momentum and boost to science, technology
                                                                and innovation (STI), industry and exports of the country.</p>


                                                            <p><b>Prof. Ranjith Senaratne,Chairman, National Science Foundation</b></p>



                                                        </div>
                                                    </div>





                                                </div>
                                            </div>
                                        </div>







                                        <div class="col-lg-4 col-sm-6">

                                            <div class="single_product_item" style="height:720px;">

                                                <div style=" background-color:#FFFFFF; align-left:20px;">
                                                    </br>
                                                    <img src="<?= base_url(); ?>layout/img/rajapaksa.jpg" alt="" alt="" style="isplay:block; margin:auto;  width:210px; height:230px;">
                                                    </br>
                                                    <h4 align="center">Prof. R.M.G. Rajapakse</h4>
                                                    <h4 align="center">Senior Professor</h4>
                                                    <h4 align="center">University of Peradeniya</h4>
                                                    <p align="justify" style="margin-left:20px; margin-right:20px;">Thanks to generous research support from the NSF,
                                                        I was able to produce over 35 M.Phil./Ph.D. graduates, over 125 indexed publications, 2 granted and 10
                                                        pending NIPO and WIPO patents, large numbers of keynote, invited and plenary lectures. </p>
                                                    <!-- <a href="#" class="add_cart" style="margin-left:20px; margin-right:20px;">Read More..</a>-->

                                                    </br>
                                                    </br>
                                                    </br>
                                                    </br>
                                                    </br>
                                                    </br>
                                                    </br>
                                                    </br>

                                                    <!--<a class="trigger_popup_fricc3" style="font-color:#FC9A08; font-size:14px">Read More..</a>-->





                                                    <div class="hover_bkgr_fricc3" style=" horizontal-align: left; ">
                                                        <span class="helper"></span>
                                                        <div>
                                                            <div class="popupCloseButton">&times;</div>

                                                            <p> as the National Instrument Database will enable researchers to find a suitable local
                                                                lab to conduct the analysis. Moreover, the database will enable funding agencies to identify gaps in the fleet
                                                                of high-end analytical and testing instruments available in the country, and prevent unnecessary
                                                                duplication of equipment, thus paving the way towards sustainable resource utilization.</p>

                                                            <p>Since anyone could be a user, apart from academia, even members of
                                                                the general public and industries can request to use the instruments.
                                                                Showcasing the strength of analytical/testing capacity of universities
                                                                is likely to enhance analytical services provided by them to industry and
                                                                export sector and generate more opportunities for commercialization of research.
                                                                Therefore, we see establishment of the National Instrument Database as a major step
                                                                forward in leading Sri Lanka towards an innovative, techno-entrepreneurial culture. </p>

                                                            <p>
                                                                The University of Kelaniya has a strong research culture with eminent scholars and
                                                                well-established research labs. We congratulate the NSF for successfully developing this centralized integrated
                                                                database and undertake to extend our fullest cooperation in maintaining and using this database. </p>
                                                            </br>



                                                        </div>
                                                    </div>





                                                </div>
                                            </div>
                                        </div>





                                    </div>
                                </div>



                                <!-- <div class="single_product_list_slider">
                            <div class="row align-items-center justify-content-between">
                                <div class="col-lg-6 col-sm-6">
                                    <div class="single_product_item">
                                         
                                        <div style=" background-color:#FFFFFF; align-left:20px;" >
										</br>
										<img src="<?= base_url(); ?>layout/img/guna.jpg"    alt="" style="margin-left:100px;  width:150px; " >
										</br>
                                            <h4 align="center">Prof Nilanthi de Silva</h4>
                                            <p align="justify" style="margin-left:20px; margin-right:20px;">We are very happy that the NSF has taken the 
											initiative to establish a database with details of high-end scientific instruments scattered across Sri Lanka in universities and R&D institutions.  </p>
                                            <a class="trigger_popup_fricc" style="font-color:#FC9A08; font-size:14px">Read More..</a>
                                        </div>
                                    </div>
                                </div>
								
								
                                <div class="col-lg-6 col-sm-6">
                                    <div class="single_product_item">
                                         
                                        <div style=" background-color:#FFFFFF; align-left:20px;" >
										</br>
										<img src="<?= base_url(); ?>layout/img/guna.jpg"    alt="" style="margin-left:100px;  width:150px; " >
										</br>
                                            <h4 align="center">Prof Nilanthi de Silva</h4>
                                            <p align="justify" style="margin-left:20px; margin-right:20px;">We are very happy that the NSF has taken the 
											initiative to establish a database with details of high-end scientific instruments scattered across Sri Lanka in universities and R&D institutions.  </p>
                                            <a class="trigger_popup_fricc" style="font-color:#FC9A08; font-size:14px">Read More..</a>
                                        </div>
                                    </div>
                                </div>
								
								
                                -->





                            </div>
                        </div>





                    </div>
                </div>
        </div>
    </div>
    </section>
    <!-- product_list part start-->



















    <section class="summary p-4">
        <div class="container" style="margin-top:120px">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle ">
                        <h2>&nbsp;&nbsp;Disclaimer</h2>
                    </div>
                </div>
            </div>

            <div class="container py-5" style="margin-top:-50px">

                <p style="font-size:20px;" align="justify">
                    This database is intended for information purposes only. Each participating institution has included
                    instruments in the database in a complete and accurate manner as best possible given the available
                    information. Details of instruments located at public or private organizations are provided in the
                    database so that potential users can contact relevant officers in charge for more information/necessary
                    services. The National Science Foundation as a funding agency assumes no responsibility or liability for
                    the use of instruments and use of information contained within the database by others.
                </p>
                </br>

                <p style="font-size:20px;" align="justify">
                    Some aspects of the database, including the full text of items, will only be shared with registered users
                    and staff who have been given authorized access. Public users will be directed to register with the database
                    to request full access for specific instruments.
                </p>
                </br>
                </br>
            </div>

        </div>
    </section>













    <!--::footer_part start::-->
    <!--::footer_part start::-->
    <footer class="footer_part" style="background: #070300 ; margin-top:-40px; ">
        <div class="container" style="margin-top:-70px; ">
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
                                <p style="color: #FFFFFF;">Email : idb@nsf.gov.lk</p>
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
                        <a href="https://www.facebook.com/nsflk" class="fa fa-facebook" target="_blank"></a>
                        <a href="https://twitter.com/NSFSriLanka" class="fa fa-twitter" target="_blank"></a>




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
                                    </script> All rights reserved | Powered by National Scienec Foundation of Sri Lanka<!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
    </footer>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
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
    <script src="<?= base_url(); ?>layout/js/jquery.nice-select.min.js"></script>
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
</body>

</html>