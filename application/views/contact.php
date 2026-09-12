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





     <!-- ================ contact section start ================= -->
     <section class="contact-section padding_top" style=" margin-top:-150px; ">
         <div class="container">

             </br>
             </br>
             </br>
             </br>
             <div class="mapouter">
                 <div class="gmap_canvas">
                     <iframe width="1200" height="700" id="gmap_canvas" src="https://maps.google.com/maps?q=247/5,%20Maitland%20Place,%20Colombo%2007&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
                     </iframe>
                     <a href="https://123movies-to.org"></a><br>
                     <style>
                         .mapouter {
                             position: relative;
                             text-align: right;
                             height: 500px;
                             width: 600px;
                         }
                     </style>
                     <a href="https://www.embedgooglemap.net">how to get google map embed code</a>
                     <style>
                         .gmap_canvas {
                             overflow: hidden;
                             background: none !important;
                             height: 700px;
                             width: 1200px;
                         }
                     </style>
                 </div>
             </div>

             </br>
             </br>
             <div class="row" style="margin-top:200px">

                 <div class="col-12">
                     <h2 class="contact-title">Get in Touch</h2>
                 </div>
                 <div class="col-lg-8">
                     <?php $this->load->helper("form"); ?>
                     <form action="<?php echo base_url(); ?>sendFeedback" action="#" method="post" novalidate="novalidate" enctype="multipart/form-data" role="form">

                         <div class="row">

                             <div class="col-sm-6">
                                 <div class="form-group">
                                     <input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''"
                                         onblur="this.placeholder = 'Enter your name'" placeholder='Name' value="<?php echo set_value('name'); ?>">
                                 </div>
                             </div>
                             <div class="col-sm-6">
                                 <div class="form-group">
                                     <input class="form-control" name="email" id="email" type="email" onfocus="this.placeholder = ''"
                                         onblur="this.placeholder = 'Enter email address'" placeholder='E-mail' value="<?php echo set_value('email'); ?>">
                                 </div>
                             </div>

                             <div class="col-12">
                                 <div class="form-group">
                                     <input class="form-control" name="phone" id="phone" type="text" onfocus="this.placeholder = ''"
                                         onblur="this.placeholder = 'Enter Phone Number'" placeholder='Mobile Number' value="<?php echo set_value('phone'); ?>">
                                 </div>
                             </div>

                             <div class="col-12">
                                 <div class="form-group">
                                     <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''"
                                         onblur="this.placeholder = 'Enter Subject'" placeholder='Subject (Attention: Institute Name)' value="<?php echo set_value('subject'); ?>">
                                 </div>
                             </div>

                             <div class="col-12">
                                 <div class="form-group">

                                     <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9"
                                         onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'"
                                         placeholder='Message' value="<?php echo set_value('message'); ?>"></textarea>
                                 </div>
                             </div>









                             <div class="col-12">
                                 <div class="form-group">
                                     <label for="imageUpload">Image Upload</label>
                                     <input class="form-control" name="imageUpload" id="imageUpload" type="File">
                                 </div>
                             </div>

                         </div>
                         <div class="form-group mt-3">
                             <!-- <a href="#" class="btn_3 button-contactForm">Send Message</a>-->


                             <button type="submit" value="submit" class="button rounded-0 primary-bg text-white w-10 btn_1" style="background: #EE9310 ;  -webkit-transition: color 1000000000s;">Send Message</button>
                         </div>
                         <div class="col-md-6">
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







                             <div class="row">
                                 <div class="col-md-12">
                                     <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                                 </div>
                             </div>
                         </div>
                     </form>
                 </div>
                 <div class="col-lg-4">
                     <div class="media contact-info">
                         <span class="contact-info__icon"><i class="ti-home"></i></span>
                         <div class="media-body">
                             <h3># 47/5, Maitland Place</h3>
                             <h3> Colombo 07</h3>
                         </div>
                     </div>
                     <div class="media contact-info">
                         <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                         <div class="media-body">
                             <h3>Tel : +94 (0)11 2 696771 </h3>
                             <h3> Fax : +94 (0)11 2 694754</h3>
                             <h3>Mon to Fri 8.30am to 4.15pm</h3>
                         </div>
                     </div>
                     <div class="media contact-info">
                         <span class="contact-info__icon"><i class="ti-email"></i></span>
                         <div class="media-body">
                             <h3>info@nsf.gov.lk</h3>
                             <h3>Send us your query anytime!</h3>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <!-- ================ contact section end ================= -->
















     <!--::footer_part start::-->
     <footer class="footer_part" style="background:#070300 ;  margin-top:30px; ">
         <div class="container" style="margin-top:-50px; ">
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
                         <a href="http://lists.nsf.gov.lk/" class="button rounded-0 primary-bg text-white w-10 btn_1" style=" background-color:#EE9310   ;" target="_blank">subscribe</a>

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
                                     </script> All rights reserved | Powered by National Science Foundation <!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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