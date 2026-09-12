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


</head>

<body>
    <?php $this->load->view('home/partials/navbar_v2'); ?>









    <div class="content-wrapper" style="margin-top:50px;">
        <section class="content-header">
            <h1>
                <i> <img src="<?php echo base_url(); ?>layout/img/machine.svg" style=" margin-left:40px; display:inline;" /> </i>Instrument List
                <a href="<?= base_url('einstrument_google'); ?>" class="button rounded-0 primary-bg text-white w-10 btn_1" style=" background-color:#EE9310; display:inline; margin-left:495px;">View Instruments in a Google Map </a>
            </h1>


        </section>













        <div class="container" align="center">

            <!-- <form action="<?php echo base_url() ?>einstrumentView" method="POST" id="searchList"  class="search-job"  role="form" enctype="multipart/form-data" style="display: inline-block;  width: 90%;">
                        <div class="form-group">
                           <div class="input-group mb-3" >
                              <input type="text" class="form-control" id="autoInstrument" name="searchText" placeholder="Search Instrument Name/ Product Category/ Testing parameter/ Keyword/ Institute Ex: Spectroscopy" style="border: 5px solid #EE9310 ;  height: 47.5px; font-size:16px;">
								 <input type="hidden" id="instrumentId" name="instrumentId" value='0' >
								 </br>
								
								  </aside>
								   
								<button type="submit" value="submit" class="button rounded-0 primary-bg text-white w-10 btn_1" style="background: #EE9310  ;">Search</button> 
								
                               </div>
                           </div>
                        </div>
                      
                     </form>     -->






            <section class="content">
                <div class="row">
                    <!-- <div class="col-xs-12 text-right">
                <div class="form-group">
                   <a class="btn btn-primary" href="<?php echo base_url(); ?>addInstrument">
              <i class="fa fa-plus"></i> Add Instrument</a>
                </div>
            </div>-->
                </div>
                <div class="container" align="center" style="width:1100px;">
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
                                                    <th></th>
                                                    <th>Instrument Deatil</th>

                                                    <!-- <th>Laboratory Name</th>
					<th>Laboratory Address</th>
		<th>Laboratory 	latitude</th>
					<th>Laboratory 	longitude</th>-->



                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                if (!empty($instrumentRecords)) {
                                                    foreach ($instrumentRecords as $record) {
                                                ?>
                                                        <tr>
                                                            <td style="font-size:14px;" style="width:200px;">

                                                                <img src="<?= base_url(); ?>/catalogUploads/<?php echo $record->image_upload1 ?>" width="180px" height="150px" />

                                                            </td>



                                                            <td style="font-size:14px;">

                                                                <a href="<?php echo base_url() . 'instrumentView/' . $record->instrument_id; ?>"> <?php echo $record->instrument_name ?></a>
                                                                </br>
                                                                <?php echo $record->model ?>
                                                                </br>
                                                                <p>Product Category - <?php echo $record->instrument_type ?>, <?php echo $record->keywords ?></p>

                                                                <?php echo $record->name ?>
                                                                </br>
                                                                <!--<?php echo $record->address ?>
<?php echo $record->inst_latitude ?>
</br>
<?php echo $record->inst_longitude ?>-->
                                                                <script type="text/javascript">
                                                                    // Popup window code
                                                                    function newPopup(url) {
                                                                        popupWindow = window.open(
                                                                            url, 'popUpWindow', 'height=500,width=450,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
                                                                    }
                                                                </script>
                                                                <p><a href="JavaScript:newPopup('<?php echo base_url() . 'einstrument_googleview/' . $record->instrument_id; ?>');">View Location & Contact Information</a></p>




                                                            </td>



                                                            <!-- <td>
                        <?php echo $record->laboratory_name ?>
                      </td>
					   <td>
                        <?php echo $record->laboratory_address ?>
                      </td>                   

 <td>
                        <?php echo $record->latitude ?>
                      </td>
					   <td>
                        <?php echo $record->longitude ?>
                      </td>-->






                                                        </tr>
                                                <?php
                                                    }
                                                }
                                                ?>
                                            </tbody>
                                    </div>
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
                    jQuery("#searchList").attr("action", baseURL + "einstrumentView//" + value);
                    jQuery("#searchList").submit();
                });
            });
        </script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>





        <!-- ***************************************************************** -->









        <!--::footer_part start::-->
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
                                        </script> All rights reserved | Powered by National Scienec Library & Resource Centre of National Science Foundation <!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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