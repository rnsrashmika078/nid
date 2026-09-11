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
      <nav class="navbar navbar-expand-lg navbar-light" style="height:80px;">
          <a class="navbar-brand pl-5" href="#">
              <img src="<?= base_url(); ?>catalogUploads/nsf_logo.png" width="160px" alt="">
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
                      <a class="nav-link" href="elaboratories">Laboratories</a>
                  </li>
                  <li class="nav-item mx-3">
                      <a class="nav-link" href="contact">Contact </a>
                  </li>
                  </li>
                  <li class="nav-item mx-3">
                      <a href="<?= base_url('user_authentication'); ?>" class="btn my-2 my-sm-0 login-btn" role="button" style="font-size:16px;">Login</a>
                  </li>
                  <li class="nav-item mx-3">
                      <a href="<?= base_url('register'); ?>" class="btn my-2 my-sm-0 register-btn" role="button" style="font-size:16px;">Register</a>
                  </li>
              </ul>
          </div>
      </nav>



      <!-- Main Container -->
      <div class="container login-container">
          <div class="row">
              <div class="col-sm p-5">
                  <div class="login-left">
                      <div class="inner">

                          <img src="<?= base_url(); ?>layout/img/ban3.jpg" alt="">
                          </br>
                          <p class="welcome-msg mt-3">

                              welcome to</br></br>
                              National Instrument Database</br></br></br></br></br></br>
                          </p>
                      </div>

                  </div>
              </div>
              <div class="col-sm p-5">
                  <div class="login-right">
                      <div class="title text-center">
                          LOGIN
                      </div>
                      <div class="row">
                          <div class="col-sm p-2">


                              <!-- /.login-logo -->
                              <div class="login-box-body">

                                  <?php $this->load->helper('form'); ?>
                                  <div class="row">
                                      <div class="col-md-12">
                                          <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button></div>'); ?>
                                      </div>
                                  </div>
                                  <?php
                                    $this->load->helper('form');
                                    $error = $this->session->flashdata('error');
                                    if ($error) {
                                    ?>
                                      <div class="alert alert-danger alert-dismissable">
                                          <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                                          <?php echo $error; ?>
                                      </div>
                                  <?php }
                                    $success = $this->session->flashdata('success');
                                    if ($success) {
                                    ?>
                                      <div class="alert alert-success alert-dismissable">
                                          <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                                          <?php echo $success; ?>
                                      </div>
                                  <?php } ?>



                                  <form action="<?php echo base_url(); ?>loginMe" action="#" method="post" novalidate="novalidate">



                                      <div class="form-group">
                                          <input class="form-control m-3 form-control-lg" type="text" placeholder="Email" name="email" required>

                                      </div>
                                      <div class="form-group">
                                          <input class="form-control m-3 form-control-lg" type="password" placeholder="Password" name="password" required>

                                      </div>

                                      <div class="form-check  m-3">
                                          <input type="checkbox" class="form-check-input" id="rememberMe">
                                          <label class="form-check-label" for="exampleCheck1">Remember me</label>
                                      </div>

                                      <div class="m-3">
                                          <a href="<?php echo base_url() ?>forgotPassword">Forgot Password</a>
                                      </div>


                                      <button type="submit" class="btn m-3 login-btn">Login</button>


                                  </form>

                              </div>

                          </div>
                      </div>
                  </div>
              </div>
          </div>

          <!-- Optional JavaScript; choose one of the two! -->

          <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
          <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> -->

          <!-- Option 2: jQuery, Popper.js, and Bootstrap JS -->
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
              integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
              crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
              integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
              crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
              integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
              crossorigin="anonymous"></script>


          <!--END-->

          <script src="<?php echo base_url(); ?>assets/js/jQuery-2.1.4.min.js"></script>
          <script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
      </div>

      </br>

      </br>

      <!--::footer_part start::-->
      <footer class="footer_part" style="background: #070300 ;  ">
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