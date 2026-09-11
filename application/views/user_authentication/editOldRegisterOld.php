<!DOCTYPE html>
<html lang="en">
  <head>
    <title>National Instrument Database</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="<?=base_url(); ?>https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/animate.css">

    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/magnific-popup.css">

    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/aos.css">

    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/ionicons.min.css">

    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/jquery.timepicker.css">


    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/flaticon.css">
    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/icomoon.css">
    <link rel="stylesheet" href="<?=base_url(); ?>layout/css/style.css">
	
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" style="height:85px;">
      <div class="container-fluid px-md-4  ">
        <a class="navbar-brand" href="home.html" ><img src="layout/images/ban3.jpg" alt="nsf" ></a>

          <!--    <h2 class="mb-5" style=" padding-left: 10px; padding-top: 35px; color: #D7D7D8; ">National Instrument Database</h2>     -->


        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a href="Home" class="nav-link">Home</a></li>
            <li class="nav-item"><a href=" #" class="nav-link">About us</a></li>
          <!--  <li class="nav-item"><a href="candidates.html" class="nav-link">Canditates</a></li>   -->
            <li class="nav-item"><a href=" #" class="nav-link">Preamble</a></li>
            <li class="nav-item"><a href=" #" class="nav-link">Featured Instruments</a></li>
            <li class="nav-item"><a href=" #" class="nav-link">Contact</a></li>
            <li class="nav-item cta mr-md-1"><a href="user_authentication" class="nav-link" style="width:100px;" target="_blank">Sign In</a></li>
             <li class="nav-item cta cta-colored"><a href="register" class="nav-link" style="width:100px;" target="_blank">Register</a></li>

          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->

    <div class="hero-wrap img" style="background-image: url(<?=base_url(); ?>layout/images/bck1.jpg); height:160px; ">
      <div class="overlay"></div>
      <div class="container">
        <div class="row d-md-flex no-gutters slider-text align-items-center justify-content-center" style="height:150px;  ">
            <!-- <div class="col-md-10 d-flex align-items-center ftco-animate">
           <div class="text text-center pt-5 mt-md-5">

              <p class="mb-4">Find Job, Employment, and Career Opportunities</p>  -->
              <h1 class="mb-6" style="  padding-top: 90px; ">National Instrument Database</h1>

          </div>
        </div>
      </div>
    </div>

      <div class="overlay" ></div>
      <div class="container" >
        <div class="row d-md-flex no-gutters slider-text align-items-center justify-content-center"   >

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


          <section class="ftco-section bg-light">
      <div class="container" style="width:700px; margin-top:-100px; ">


                     <!--About-Section-Start-->
<section id="contact">
<div class="container1">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Register an Account</div>
        <div class="card-body">
<!---- Success Message ---->
<?php if ($this->session->flashdata('success')) { ?>
<p style="color:green; font-size:18px;"><?php echo $this->session->flashdata('success'); ?></p>
</div>


<?php } ?>

<!---- Error Message ---->

<?php if ($this->session->flashdata('error')) { ?>
<p style="color:red; font-size:18px;"><?php echo $this->session->flashdata('error');?></p>

<?php } ?>



   <form role="form" action="<?php echo base_url() ?>editRegister" method="post" id="editRegister" role="form">
                            <div class="box-body">	
								<div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
										<!-- Title dropdown -->
                                        <label for="title">Title</label>
                                        <select class="form-control required" id="title" name="title">
                                            <option value="">Select title</Option>
											<option value="Mr">Mr</Option>
											<option value="Ms">Ms</Option>
											<option value="Mrs">Mrs</Option>
											<option value="Miss">Miss</Option>
											<option value="Mr">Dr</Option>
											<option value="Prof"> Prof</Option>
                                        </select>									  
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
										<!-- Gender dropdown -->
											<label for="gender">Gender</label>
											<select class="form-control" id="gender" name="gender">
												<option value="">Select gender</Option>
												<?php
											  if ($userData['gender'] =="Male")
											  { ?>
											  <option value="Male" selected>Male</Option>
											  <?php
											  }
											  else
											  {?>
											  <option value="Male">Male</Option>
											  <?php  }
												  ?> 
												  
											   <?php
											  if ($userData['gender'] =="Female")
											  { ?>
											  <option value="Female" selected>Female</Option>
											  <?php
											  }
											  else
											  {?>
											  <option value="Female">Female</Option>
											  <?php  }
												  ?> 												
											</select>
                                        </div>
                                    </div>
                                </div>
								
								<div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName">First Name</label>
                                            <input type="text" class="form-control" id="firstName" placeholder="First Name" name="firstName" value="<?php echo $userData['first_name']; ?>" maxlength="128">
                                            
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName">Last Name</label>
                                            <input type="text" class="form-control" id="lastName" placeholder="Last Name" name="lastName" value="<?php echo $userData['last_name']; ?>"
                                                maxlength="128">
                                        </div>
                                    </div>
                                </div>
							<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="address">Address</label>
										<input type="text" class="form-control required" value="<?php echo set_value('address'); ?>" id="address" name="address" maxlength="300">                                       
                                    </div>
                                </div>                               
                            </div>
                                
								<div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="mobile">Mobile Number</label>
                                            <input type="text" class="form-control required digits" id="mobilenumber" value="<?php echo set_value('mobilenumber'); ?>" name="mobilenumber" maxlength="10">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="phone">Phone Number</label>
                                            <input type="text" class="form-control required digits" id="phoneNumber" value="<?php echo set_value('phoneNumber'); ?>" name="phoneNumber"
                                            maxlength="10">
                                        </div>
                                    </div>
                                </div>
							
								<div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="designation">Designation</label>
                                        <select class="form-control required" id="designation" name="designation">
                                            <option value="">Select designation</option>
                                            <?php 
												foreach($designation as $row)
												{
												 echo '<option value="'.$row->name.'">'.$row->name.'</option>';
												}
											?>
                                        </select>
                                    </div>
                                </div>
								
								
							<div class="col-md-6">
								<div class="form-group">
                                        <label for="institute">Institute</label>
                                        <select class="form-control required" id="institute" name="institute">
                                            <option value="">Select Institute</option>
											<?php
											
                                            if(!empty($institutes))
                                            {
                                                foreach ($institutes as $il)
                                                {
                                                    ?>
                                                <option value="<?php echo $il->institute_id ?>" <?php if($il->institute_id == set_value('name')) {echo "selected=selected";} ?>>
                                                    <?php echo $il->name?>
                                                </option>
                                                <?php
                                                }
                                            }
											
                                            ?>											
											
                                        </select>
                                    </div>
							</div>						
							
							</div>
							
                            <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="email">User Name</label>
                                            <input type="text" class="form-control" id="email" placeholder="User Name" name="email" value="<?php echo $userData['username']; ?>"
                                                maxlength="128">
                                        </div>                                   
                                </div>
                            </div>   			
							
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="password">password</label>
                                            <input type="password" class="form-control" id="password" placeholder="Password" name="password" maxlength="20">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="cpassword">Verify Password</label>
                                            <input type="password" class="form-control" id="cpassword" placeholder="Verify Your Password" name="cpassword" maxlength="20">
                                        </div>
                                    </div>
                                </div>
                                
                            <!-- /.box-body -->

                            <div class="box-footer">
                                <input type="submit" class="btn btn-primary" value="send" />
                                <input type="reset" class="btn btn-default" value="reset" />
                            </div>
                        </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="<?php echo site_url('user_authentication'); ?>">Login Page</a>
			<p>Logout from <a href="<?php echo base_url().'user_authentication/logout'; ?>">Google</a></p>
          </div>
        </div>
      </div>
    </div>
  </section>


<!--Jquery-->
<script type="text/javascript" src="layout/js/jquery.min.js"></script>
<!--Boostrap-Jquery-->
<script type="text/javascript" src="layout/js/bootstrap.js"></script>
<!--Preetyphoto-Jquery-->
<script type="text/javascript" src="layout/js/jquery.prettyPhoto.js"></script>
<!--NiceScroll-Jquery-->
<script type="text/javascript" src="layout/js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="layout/js/waypoints.min.js"></script>
<!--Isotopes-->
<script type="text/javascript" src="layout/js/jquery.isotope.js"></script>
<!--Wow-Jquery-->
<script type="text/javascript" src="layout/js/wow.js"></script>
<!--Count-Jquey-->
<script type="text/javascript" src="layout/js/jquery.countTo.js"></script>
<script type="text/javascript" src="layout/js/jquery.inview.min.js"></script>
<!--Owl-Crousels-Jqury-->
<script type="text/javascript" src="layout/js/owl.carousel.js"></script>
<!--Main-Scripts-->
<script type="text/javascript" src="layout/js/script.js"></script>


    

          </div>


    </section>




    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Vision</h2>
              <p align="justify">"To be the nation's premier driving
force in promoting Science,
Technology & Innovation for
economic and social prosperity of Sri
Lanka"</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Mission</h2>



             <p align="justify"> Initiate, facilitate and support research,
development, innovation and technology
transfer through funding, knowledge
creation, capacity building, partnerships,
information dissemination and popularizing
science </p>

            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Policy</h2>
               <p align="justify"> "Anticipate and exceed stakeholder
expectations by adopting a quality
framework for the practice, review and
continual improvement of our processes to
be the premier driving force in Science and
Technology in Sri Lanka"
 </p>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Account</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="pb-1 d-block">My Account</a></li>
                <li><a href="#" class="pb-1 d-block">Sign In</a></li>
                <li><a href="#" class="pb-1 d-block">Create Account</a></li>
               <!-- <li><a href="#" class="pb-1 d-block">Checkout</a></li>  -->
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Have a Questions?</h2>
              <div class="block-23 mb-3">
                <ul>
                  <li><span class="icon icon-map-marker"></span><span class="text">47/5, Maitland Place, Colombo 07,
Sri Lanka.</span></li>
                  <li><a href="#"><span class="icon icon-phone"></span><span class="text">+94112696771-3</span></a></li>
                  <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@nsf.gov.lk</span></a></li>
                   <li><a href="#"><span class="icon icon-envelope"></span><span class="text">io@nsf.gov.lk</span></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Solution by <a href="#" style="font-color:red;">National Science Library & Resorce Centre</a> of <a href="#" style="font-color:red;">National Science Fondation   </a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>



  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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