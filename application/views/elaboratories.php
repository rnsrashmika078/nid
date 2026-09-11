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
                <li class="nav-item mx-3 active">
                    <a class="nav-link" href="einstituteView">Institutes<span class="sr-only">(current)</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link" href="elaboratories">Laboratories</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link" href="contact">Contact</a>
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













<div class="content-wrapper" style=" margin-top:50px; ">
    <!-- Content Header (Page header) 
	 <a href="<?=base_url('google'); ?>" class="btn my-2 my-sm-0 login-btn" role="button" style=" background-color:#EE9310; border: 1px solid #EE9310; height:38px; font-size:16px;  margin-left:1000px;">View Registerd Institutes in a Google Map</a>-->
	
	 
	<section class="content-header">
	
         <h1>
             <i> <img src="<?php echo base_url(); ?>layout/img/bank.svg" style=" margin-left:40px; display:inline;" /> </i>Registerd Institutes
                   
		<!--
		<a href="<?=base_url('google'); ?>" class="button rounded-0 primary-bg text-white w-10 btn_1" style=" background-color:#EE9310; display:inline; margin-left:495px;" >View Institutes in a Google Map </a>
-->
		 </h1>
    </section>
		
		
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
                    if($error)
                    {
                ?>
              <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $this->session->flashdata('error'); ?>
                                </div>
              <?php } ?>
              <?php
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
              <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $this->session->flashdata('success'); ?>
                        </div>
              <?php } ?>
              <div class="panel-body">

                          <style>
.popup {
  display: none;
  position: fixed;
  z-index: 9999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.5);
}

.popup-content {
  background-color: #ffffff;
  color: #333; /* fix white font issue */
  font-family: Arial, sans-serif;
  line-height: 1.6;
  margin: 10% auto;
  padding: 25px;
  border-radius: 8px;
  width: 50%;
  max-width: 600px;
  box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}

.close {
  color: #aaa;
  float: right;
  font-size: 24px;
  font-weight: bold;
  cursor: pointer;
}
.close:hover {
  color: #000;
}
</style>
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                  <thead>
                            <tr>
                              <th></th>
							<th>Laboratory Name</th>
								<th>Institute Detail
                </th>
                
								
                                <th>Contact Detail</th>								
                                <th>Description</th>
                                  <th>Accreditation Detail</th>
                                    
								
			
                               
                            </tr>
                  </thead>


                    <tbody>
                            <?php
							$no = 1;
                    if(!empty($laboratoryRecords))
                    {
                        foreach($laboratoryRecords as $record)
                        {
                    ?>
                                <tr>
								
								<td style="font-size:14px;">
                        <?php echo $no++ ?>
                      </td>


                
								
                                    <td>
                                        <?php echo $record->laboratory_name ?>
                                    </td>	
									
								<td>
    
        <b style="color: black;">Institute: </b><?php echo $record->name; ?><br>

        <?php if (!empty($record->faculty_name)) { ?>
            <b style="color: black;">Faculty: </b><?php echo $record->faculty_name; ?><br>
        <?php } ?>


    <b style="color: black;">Department: </b><?php echo $record->department_name; ?>
</td>

															
									
									
									
									
							
                                    <td>
                                        <b style="color: black;">Address: </b><?php echo $record->laboratory_address ?>
            </br>
            <b style="color: black;">Phone Number: </b><?php echo $record->phone_number ?>
            </br>
            <b style="color: black;">Email: </b><?php echo $record->email ?>

                     </td>               
                                    <td align="justify">
                                        <!-- The Popup -->
  <div id="institutionPopup_<?php echo $record->laboratory_id ?>" class="popup">
    <div class="popup-content">
      <span class="close" onclick="closePopup(<?php echo $record->laboratory_id ?>)">&times;</span>
      <h3><?php echo $record->name ?></h3>
 <h4>laboratory Name: <?php echo $record->laboratory_name ?></h4>
      
      <p id="institutionDescription_<?php echo $record->laboratory_id ?>">
        <?php echo $record->description ?>
      </p>
    </div>
  </div>

  <!-- Button to open popup -->
  <button onclick="openPopup(<?php echo $record->laboratory_id ?>)">View</button>
                                    </td>



                                   <td>
    <?php if ($record->accreditation_status == "Yes" || $record->accreditation_status == "No" ) { ?>

        <b style="color: black;">Accreditation Status:</b> 
        <?php echo $record->accreditation_status; ?>
        <br>
 <?php } ?>

 <?php if ($record->accreditation_status == "Yes") { ?>
        <b style="color: black;">Accreditation Type:</b> 
        <?php echo $record->accreditation_type; ?>
        <br>
        

        <b style="color: black;">Accreditation Certificate:</b>
        <?php if (!empty($record->accreditation_certificate)) { ?>
            <a href="<?php echo base_url('AccreditationdocUpload/'.$record->accreditation_certificate); ?>" target="_blank">View</a>
       <?php } else { echo '<span style="color:red;">Not Uploaded</span>'; } ?>
        <br>

        <b style="color: black;">Accreditation Scope:</b>
        <?php if (!empty($record->accreditation_scope)) { ?>
            <a href="<?php echo base_url('AccreditationdocUpload/'.$record->accreditation_scope); ?>" target="_blank">View</a>
      <?php } else { echo '<span style="color:red;">Not Uploaded</span>'; } ?>
        <br>

    <?php } ?>
</td>


                                       
                                   
                              
									
			
                                  
                              
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
    jQuery(document).ready(function () {
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();
            var link = jQuery(this).get(0).href;
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "einstituteView//" + value);
            jQuery("#searchList").submit();
        });
    });
</script>
</script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>

</br>

</br>
</br>
</br>
</br>


 <!--::footer_part start::-->
    <footer class="footer_part" style="background:#070300 ;  ">
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Powered by National Scienec Foundation of Sri Lanka <!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
   
   
   
   
   <script>
function openPopup(id) {
  const popup = document.getElementById("institutionPopup_" + id);
  if (popup) popup.style.display = "block";
}

function closePopup(id) {
  const popup = document.getElementById("institutionPopup_" + id);
  if (popup) popup.style.display = "none";
}

// Optional: close popup when clicking outside the box
window.onclick = function(event) {
  const popups = document.getElementsByClassName("popup");
  for (let i = 0; i < popups.length; i++) {
    if (event.target == popups[i]) {
      popups[i].style.display = "none";
    }
  }
}
</script>
   
   
   
   
   
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