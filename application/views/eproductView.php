<!DOCTYPE html>
<html lang="en">

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



</head>



<body>
    <?php $this->load->view('home/partials/navbar'); ?>

    <div class="content-wrapper" style=" margin-top:50px;  ">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <i> <img src="<?php echo base_url(); ?>layout/img/box.svg" style=" margin-left:40px; " /> </i>Product Category/ Test Name (Matrix)
            </h1>
        </section>
        <section class="content">
            <div class="row">
                <!-- <div class="col-xs-12 text-right">
                <div class="form-group">
                   <a class="btn btn-primary" href="<?php echo base_url(); ?>addInstrument">
              <i class="fa fa-plus"></i> Add Instrument</a>
                </div>
            </div>-->
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <!-- <h3 class="box-title">Instrument List</h3>-->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
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
                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead style="font-size:14px;">
                                        <tr>
                                            <<th>
                                                </th>
                                                <th>Institute Name</th>
                                                <th>Product Category/ Test Name (Matrix)</th>
                                                <th>Sub Category</th>
                                                <th>Testing Parameters</th>
                                                <th>Description</th>

                                                <th>Relavant Instruments</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        if (!empty($categoryRecords)) {
                                            foreach ($categoryRecords as $record) {
                                        ?>
                                                <tr>
                                                    <!--  <td>
                                        <?php echo $record->instrument_type_id ?>
                                    </td>-->

                                                    <td style="font-size:14px;">
                                                        <?php echo $no++ ?>
                                                    </td>

                                                    <td>
                                                        <?php echo $record->name ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $record->instrument_type ?>
                                                    </td>
                                                    <td align="justify">
                                                        <?php echo $record->keywords ?>
                                                    </td>
                                                    <td align="justify">
                                                        <?php echo $record->parameters ?>
                                                    </td>
                                                    <td align="justify">
                                                        <?php echo $record->description ?>
                                                    </td>

                                                    <td>
                                                        <?php echo $record->relevant_instruments ?>
                                                    </td>

                                                    <!--  <td class="text-center">
                                       <!-- <a class="btn btn-sm btn-primary" href="<?= base_url() . 'log-history/' . $record->institute_id; ?>" title="log history">
                                            <i class="fa fa-history"></i>
                                        </a> 
                                        <a class="btn btn-sm btn-info" href="<?php echo base_url() . 'editOldCategory/' . $record->instrument_type_id; ?>" title="edit">
                                            <i class="fa fa-pencil"></i>
                                        </a>|
                                        <a class="btn btn-sm btn-danger deleteCategory" href="#" data-instrument_type_id="<?php echo $record->instrument_type_id; ?>" title="delete">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>-->


                                                </tr>
                                        <?php
                                            }
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
    </div>


    <script type="text/javascript">
        jQuery(document).ready(function() {
            jQuery('ul.pagination li a').click(function(e) {
                e.preventDefault();
                var link = jQuery(this).get(0).href;
                var value = link.substring(link.lastIndexOf('/') + 1);
                jQuery("#searchList").attr("action", baseURL + "eproductView//" + value);
                jQuery("#searchList").submit();
            });
        });
    </script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>





    <!-- ***************************************************************** -->









    <footer class="footer_part" style="background:#070300 ;  ">
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