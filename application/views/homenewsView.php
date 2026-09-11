 
 
<?php




$role_text = '';
$homenewsId = '';
$homenewsTitle='';
$homesubTitle='';

$homenewsSubject = '';


$homenewsimageUpload = '';


	
if(!empty($homenewsInfo))
{
    foreach ($homenewsInfo as $uf)
    {
		
	
		
        $homenewsId = $uf->home_news_id ;
   $homenewsTitle = $uf->home_news_title;
    $homesubTitle = $uf->home_sub_title;
 
        $homenewsSubject = $uf->home_news_subject;
			 $homenewsimageUpload = $uf->home_image;
		
      
    }
}




?>


 
 
 <!doctype html>
<html lang="zxx">

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
                <li class="nav-item mx-3 active">
                    <a class="nav-link" href="contact">Contact <span class="sr-only">(current)</a>
                </li>
                </li>
                <li class="nav-item mx-3">
                    <a href="<?=base_url('homedashboard'); ?>" class="btn my-2 my-sm-0 login-btn" role="button" style="font-size:16px;">Dashboard</a>
                </li>
                <li class="nav-item mx-3">
                    <a href="<?=base_url('user_authentication'); ?>" class="btn my-2 my-sm-0 register-btn" role="button" style="font-size:16px;">Login</a>
                </li>
                <li class="nav-item mx-3">
                    <a href="<?=base_url('register'); ?>" class="btn my-2 my-sm-0 register-btn" role="button" style="font-size:16px;">Register</a>
                </li>

            </ul>
        </div>
    </nav>










  <!-- ================ contact section start ================= -->
  <section class="contact-section padding_top" style=" margin-top:-250px; ">
    <div class="container">
      
	
	
	<section class="contact-section padding_top"  ">
    <div class="container">

</br>
<h1><?php echo  $homenewsTitle ?></h1>
</br>
</br>
<h3><?php echo  $homesubTitle ?></h3>
</br>
<!--</br>
 <img src="<?=base_url(); ?>homenewsimagesUpload/<?php echo $homenewsimageUpload ?>"  />
</br>-->

</br>
<p>
<?php echo  $homenewsSubject ?></p>
</br>




</div>

</section>
	
	
	
    </div>
  </section>
  <!-- ================ contact section end ================= -->
















 <!--::footer_part start::-->
    <footer class="footer_part" style="background:#070300 ;  margin-top:30px; ">
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Powered by National Science Foundation <!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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