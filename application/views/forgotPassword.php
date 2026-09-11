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
 </head>

 <body>
     <!--::header part start::-->

     <!--::header part start::-->

     <header class="main_menu home_menu" style=" background-color:#0000  ; box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.1)">
         <div class="container">
             <div class="row align-items-center">
                 <div class="col-lg-12">

                     <nav class="navbar navbar-expand-lg navbar-light">

                         <a class="navbar-brand" href="index.html"> <img src="<?= base_url(); ?>catalogUploads/nsf_logo.png" alt="logo"> </a>

                         <button class="navbar-toggler" type="button" data-toggle="collapse"
                             data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                             aria-expanded="false" aria-label="Toggle navigation">
                             <span class="menu_icon"><i class="fas fa-bars"></i></span>
                         </button>

                         <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
                             <ul class="navbar-nav">
                                 <li class="nav-item">
                                     <a class="nav-link" href="home" style="font-size:18px; margin-left:-50px;">Home</a>
                                 </li>

                                 <li class="nav-item">
                                     <a class="nav-link" href="eproductView" style="font-size:18px;">Product Category</a>
                                 </li>

                                 <li class="nav-item">
                                     <a class="nav-link" href="einstituteView" style="font-size:18px;">Institutes</a>
                                 </li>


                                 <li class="nav-item">
                                     <a class="nav-link" href="#" style="font-size:18px;">Contact</a>
                                 </li>
                                 <!-- <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Shop
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                        <a class="dropdown-item" href="category.html"> shop category</a>
                                        <a class="dropdown-item" href="single-product.html">product details</a>

                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_3"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        pages
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
                                        <a class="dropdown-item" href="login.html"> login</a>
                                        <a class="dropdown-item" href="tracking.html">tracking</a>
                                        <a class="dropdown-item" href="checkout.html">product checkout</a>
                                        <a class="dropdown-item" href="cart.html">shopping cart</a>
                                        <a class="dropdown-item" href="confirmation.html">confirmation</a>
                                        <a class="dropdown-item" href="elements.html">elements</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_2"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        blog
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
                                        <a class="dropdown-item" href="blog.html"> blog</a>
                                        <a class="dropdown-item" href="single-blog.html">Single blog</a>
                                    </div>
                                </li>-->


                             </ul>
                         </div>
                         <div class="hearer_icon d-flex">
                             <a href="<?= base_url('user_authentication'); ?>" class="button rounded-0 primary-bg text-white w-10 btn_1" style="margin-right:10px; background: #EE9310 ;">Sign In</a>
                             <a href="<?= base_url('register'); ?>" class="button rounded-0 primary-bg text-white w-10 btn_1" style="background: #EE9310 ;">Register</a>


                         </div>

                 </div>

                 </nav>

             </div>

         </div>

         </div>
         <!--<div class="search_input" id="search_input_box">
            <div class="container ">
                <form class="d-flex justify-content-between search-inner">
                    <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                    <button type="submit" class="btn"></button>
                    <span class="ti-close" id="close_search" title="Close Search"></span>
                </form>
            </div>
        </div>-->

         </br>



        

     </header>





















     </div>
     </div>
     </div>
     </div>



     <section>
         <div class="container" style="margin-top:250px; width:600px;">


             <div class="login-box">

                 <!-- /.login-logo -->
                 <div class="login-box-body">
                     <p class="login-box-msg">Forgot Password</p>
                     </br>
                     <?php $this->load->helper('form'); ?>
                     <div class="row">
                         <div class="col-md-12">
                             <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                         </div>
                     </div>
                     <?php
                        $this->load->helper('form');
                        $error = $this->session->flashdata('error');
                        $send = $this->session->flashdata('send');
                        $notsend = $this->session->flashdata('notsend');
                        $unable = $this->session->flashdata('unable');
                        $invalid = $this->session->flashdata('invalid');
                        if ($error) {
                        ?>
                         <div class="alert alert-danger alert-dismissable">
                             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <?php echo $this->session->flashdata('error'); ?>
                         </div>
                     <?php }

                        if ($send) {
                        ?>
                         <div class="alert alert-success alert-dismissable">
                             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <?php echo $send; ?>
                         </div>
                     <?php }

                        if ($notsend) {
                        ?>
                         <div class="alert alert-danger alert-dismissable">
                             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <?php echo $notsend; ?>
                         </div>
                     <?php }

                        if ($unable) {
                        ?>
                         <div class="alert alert-danger alert-dismissable">
                             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <?php echo $unable; ?>
                         </div>
                     <?php }

                        if ($invalid) {
                        ?>
                         <div class="alert alert-warning alert-dismissable">
                             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <?php echo $invalid; ?>
                         </div>
                     <?php } ?>

                     <form action="<?php echo base_url(); ?>resetPasswordUser" method="post">
                         <div class="form-group has-feedback">
                             <input type="email" class="form-control" placeholder="Email" name="login_email" required />
                             <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                         </div>

                         <div class="row">
                             <div class="col-xs-8">
                             </div>
                             <!-- /.col -->
                             <div class="col-xs-4">
                                 <!-- <input type="submit" class="btn btn-primary btn-block btn-flat" value="send" style="width:80px; height:40px; font-size:16px;"/>-->

                                 <button type="submit" value="submit" class="button rounded-0 primary-bg text-white w-10 btn_1" style="background-color:#EE9310; margin-left:15px;">
                                     Send
                                 </button>
                             </div>
                             <!-- /.col -->
                         </div>
                     </form>
                     <!--  <a href="<?php echo base_url() ?>" >Sign In</a>   -->
                     <br>
                 </div>
                 <!-- /.login-box-body -->
             </div>
             <!-- /.login-box -->

             <script src="<?php echo base_url(); ?>assets/js/jQuery-2.1.4.min.js"></script>
             <script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
         </div>








         </div>


     </section>











     <!--::footer_part start::-->
     <footer class="footer_part" style="background: #070300 ; margin-top:50px; ">
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
                             <li><a href="http://www.nsf.ac.lk/" style="color: #FFFFFF;" target="_blank">NSF Home</a></li>
                             <li><a href="https://gdp.nsf.gov.lk/" style="color: #FFFFFF;" target="_blank">Global Digital Platform</a></li>
                             <li><a href="https://stmis.nsf.gov.lk/" style="color: #FFFFFF;" target="_blank">S & T Management Information System</a></li>
                             <li><a href="http://viduketha.nsf.gov.lk/RTGRA" style="color: #FFFFFF;" target="_blank">Research & Technology Grant Database</a></li>
                             <li><a href="http://viduketha.nsf.gov.lk" style="color: #FFFFFF;" target="_blank">Viduketha</a></li>

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
 </body>

 </html>