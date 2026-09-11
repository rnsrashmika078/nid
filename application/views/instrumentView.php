<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>nidb</title>
  <link rel="icon" href="<?=base_url(); ?>layout/img/ph1.jpg">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/bootstrap.min.css">
  <!-- animate CSS -->
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/animate.css">
  <!-- owl carousel CSS -->
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/owl.carousel.min.css">
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/lightslider.min.css">
  <!-- font awesome CSS -->
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/all.css">
  <!-- flaticon CSS -->
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/flaticon.css">
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/themify-icons.css">
  <!-- font awesome CSS -->
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/magnific-popup.css">
  <!-- style CSS -->
  <link rel="stylesheet" href="<?=base_url(); ?>layout/css/style.css">


    <style>
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
                    <a class="nav-link" href="https://nid.nsf.gov.lk">Home</span></a>
                </li>
                <li class="nav-item mx-3 ">
                    <a class="nav-link" href="http://nid.nsf.gov.lk/eproductView">Product Category </a>
                </li>
                <li class="nav-item mx-3 ">
                    <a class="nav-link" href="http://nid.nsf.gov.lk/einstituteView">Institutes</a>
                </li>

                <li class="nav-item mx-3">
                    <a class="nav-link" href="http://nid.nsf.gov.lk/elaboratories">Laboratories</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link" href="http://nid.nsf.gov.lk/contact">Contact </a>
                </li>
                </li>
                <li class="nav-item mx-3">
                    <a href="<?=base_url('user_authentication'); ?>" class="btn my-2 my-sm-0 login-btn" role="button" style="font-size:16px;">Login</a>
                </li>
                <li class="nav-item mx-3">
                    <a href="<?=base_url('register'); ?>" class="btn my-2 my-sm-0 register-btn" role="button" style="font-size:16px;">Register</a>
                </li>
            </ul>
        </div>
    </nav>

   

   
	
	
	
	 
  
  <?php
$instrumentId = '';
$instrumentbaseid = '';
$instrumentType = '';
$instrumentName = '';
$parameters = '';
$instituteName = '';
$facultyName = '';
$departmentName = '';
$laboratoryName = '';
$condition = '';
$manufacturer = '';
$model = '';
$mYear = '';
$accessories = '';
$instdescription = '';
$instkeywords = '';
$description = '';
$catalogLink = '';
$catalogUpload = '';
$imageUpload1 = '';
$imageUpload2 = '';
$imageUpload3 = '';
$imageUpload4 = '';
$catalogAccess = '';
$price = '';
$scharge = '';
$vendorName = '';
$vendorContact = '';
$vendorUrl = '';
$samplesNo = '';
$samplesPerDay = '';
$usageHour = '';
$staffName = '';
$externalResearch = '';
$FundingSource = '';
$operationsDate = '';
$recordStatus = '';
$contactPersonName = '';
$contactPersonEmail = '';
$contactPersonPhoneNumber = '';
$contactPersonMobileNumber = '';
$keywords = '';
$relevantinstruments = '';
$pcategories = '';




if(!empty($instrumentInfo))
{
    foreach ($instrumentInfo as $if)
    {
    $instrumentId = $if->instrument_id;
	$instrumentbaseid = $if->instrument_id;
	$instrumentType = $if->instrument_type;
    $instrumentName = $if->instrument_name;
    $parameters = $if->parameters;
    $instituteName = $if->name;
    $facultyName = $if->faculty_name;
    $departmentName = $if->department_name;
    $laboratoryName = $if->laboratory_name;
    $condition = $if->instrument_condition  ;
    $manufacturer = $if->manufacturer;
    $model = $if->model;
    $mYear = $if->year_of_manufacture;
    $accessories = $if->accessories;
	 $description = $if->description;
    $instdescription = $if->inst_description;
	 $instkeywords = $if->inst_keywords;
    $catalogLink = $if->catalog_link;
    $catalogUpload = $if->catalog_upload;
	 $imageUpload1 = $if->image_upload1;
	 $imageUpload2 = $if->image_upload2;
	  $imageUpload3 = $if->image_upload3;
	 $imageUpload4 = $if->image_upload4;
    $catalogAccess = $if->catalog_access;
    $price = $if->price;
	 $scharge = $if->service_charge;
    $vendorName = $if->vendor_name;
    $vendorContact = $if->vendor_contact;
    $vendorUrl = $if->vendor_url;
    $samplesNo = $if->no_of_samples_per_cycle;
    $samplesPerDay = $if->no_of_samples_per_day;
    $usageHour = $if->total_usage_hour_per_day;
    $staffName = $if->availabiltiy_of_staff;
    $externalResearch = $if->external_researchers;
    $FundingSource = $if->funding_source;
    $operationsDate = $if->date_commencement_operation;
    $recordStatus = $if->record_status;
    $contactPersonName = $if->contact_person_name;
    $contactPersonEmail = $if->contact_person_email;
    $contactPersonPhoneNumber = $if->contact_person_phone_number;
    $contactPersonMobileNumber = $if->contact_person_mobile_number  ;
    $keywords = $if->keywords  ;
   $relevantinstruments  = $if->relevant_instruments   ;
   $pcategories  = $if->p_categories   ;
 $techspecification = $if->specification;
    }
}


?>

  






     

  
   <!--================Single Product Area =================-->
  <div class="product_image_area section_padding" style=" background-color:#F1EFEC;" >
    <div class="container" >
      <div class="row s_product_inner justify-content-between" >
        <div class="col-lg-7 col-xl-7">
          <div class="product_slider_img">
            <div id="vertical">
			
             
            
            <?php if (!empty($imageUpload1)) { ?>
              <div data-thumb="<?=base_url(); ?>catalogUploads/<?php echo $imageUpload1; ?>">	                
               <?php } else { ?>
              <div data-thumb="<?=base_url(); ?>layout/img/lab.png">			 
                <?php } ?>


                 <?php if (!empty($imageUpload1)) { ?>


                              <img src="<?= base_url(); ?>catalogUploads/<?php echo $imageUpload1 ?>" width="550px" height="450px" />


                            <?php } else { ?>
                              <img src="<?php echo base_url(); ?>layout/img/lab.png" width="550px" height="450px" />
                            <?php } ?>
              </div>







             <?php if (!empty($imageUpload2)) { ?>
              <div data-thumb="<?=base_url(); ?>catalogUploads/<?php echo $imageUpload2; ?>">	                
               <?php } else { ?>
              <div data-thumb="<?=base_url(); ?>layout/img/lab.png">			 
                <?php } ?>


                  <?php if (!empty($imageUpload2)) { ?>


                              <img src="<?= base_url(); ?>catalogUploads/<?php echo $imageUpload2 ?>" width="550px" height="450px" />


                            <?php } else { ?>
                              <img src="<?php echo base_url(); ?>layout/img/lab.png" width="550px" height="450px" />
                            <?php } ?>
              </div>






               <?php if (!empty($imageUpload3)) { ?>
              <div data-thumb="<?=base_url(); ?>catalogUploads/<?php echo $imageUpload3; ?>">	                
               <?php } else { ?>
              <div data-thumb="<?=base_url(); ?>layout/img/lab.png">			 
                <?php } ?>

                   <?php if (!empty($imageUpload3)) { ?>


                              <img src="<?= base_url(); ?>catalogUploads/<?php echo $imageUpload3 ?>" width="550px" height="450px" />


                            <?php } else { ?>
                              <img src="<?php echo base_url(); ?>layout/img/lab.png" width="550px" height="450px" />
                            <?php } ?>
              </div>


              
             
             
               <?php if (!empty($imageUpload4)) { ?>
              <div data-thumb="<?=base_url(); ?>catalogUploads/<?php echo $imageUpload4; ?>">	                
               <?php } else { ?>
              <div data-thumb="<?=base_url(); ?>layout/img/lab.png">			 
                <?php } ?>
                  
              
              <?php if (!empty($imageUpload4)) { ?>


                              <img src="<?= base_url(); ?>catalogUploads/<?php echo$imageUpload4 ?>" width="550px" height="450px" />


                            <?php } else { ?>
                              <img src="<?php echo base_url(); ?>layout/img/lab.png" width="550px" height="450px" />
                            <?php } ?>
              </div>
			  
			  
			  
            </div>
			</br>
			  </br>
			    <p align="justify">
			
            <?php echo $instdescription; ?>
            </p>
			  
          </div>
        </div>
		
		
        <div class="col-lg-5 col-xl-5" >
          <div class="s_product_text">
		  

		  
		<!-- <h3><?php echo $instrumentId; ?></h3> -->
		 
		 
    <a  href="<?php echo base_url().'instrumentView/'.--$instrumentId; ?>" <h3>Previous</a> <span>|</span>  <a  href="<?php echo base_url().'instrumentView/'.++$instrumentId; ?>">Next</h3></a>
	
	</br>
	</br>
            <h3 style="  color:#EE9310;"><?php echo $instrumentName; ?></h3>
            <h3> <?php echo $instituteName; ?></h2>
			<!-- <h4><span>Product Category/ Service</span>: <?php echo $instrumentType; ?>, <?php echo $pcategories; ?></h4>-->
			
			
            <ul class="list" >
			
			
			
			   
              <li >
                <a  href="#">

                 
              <?php if (!empty($facultyName)) { ?>

                               <span>Faculty</span>: <?php echo $facultyName; ?></a>

                            <?php } else { ?>
                              
                            <?php } ?>


                
              </li>
			  
			  
			  
			  		  
			  <li>
			  <!--  <a class="active" href="#">-->

          <?php if (!empty($departmentName)) { ?>

                               <a href="#"> <span>Department</span>: <?php echo $departmentName; ?></a>

                            <?php } else { ?>
                              
                            <?php } ?>
               
                   
              </li>
			  
			  
             
			   <li>
                <a href="#">  <span>Laboratory</span> : <?php echo $laboratoryName; ?></a>
              </li>
			  
			  <!-- <li>
                <a href="#">  <span>Contact </span>: <?php echo $contactPersonName; ?></a>
              </li>
			  <li>
                <a href="#">  <span></span> &nbsp;<?php echo $contactPersonEmail; ?></a>
              </li>
			  
			  <li>
                <a href="#">  <span> </span>&nbsp; <?php echo $contactPersonPhoneNumber; ?>, <?php echo $contactPersonMobileNumber; ?></a>
              </li>-->
			  
			
			  
			 
			  
			 
			 
            </ul>
          <!--  <p align="justify">
			
            <?php echo $instdescription; ?>
            </p>-->
			
			
			</br>
			<h3 style="font-size:14px; display: inline; color:#EE9310;">Product Category/ Test Name (Matrix):  </h3><?php echo $instrumentType; ?>
			      
				  </br>
				  </br>
				  <h3 style="font-size:14px; display: inline; color:#EE9310;">Sub Category:  </h3><?php echo $keywords; ?>
				  
</br>
</br>				  
             
              <h3 style="font-size:14px; display: inline; color:#EE9310;">Keywords:  </h3><?php echo $instkeywords; ?>
			  
			  
              
            
         
             <!-- <div class="product_count">
                <span class="inumber-decrement"> <i class="ti-minus"></i></span>
                <input class="input-number" type="text" value="1" min="0" max="10">
                <span class="number-increment"> <i class="ti-plus"></i></span>
              </div>-->
             </br>
</br>
</br>
</br>
             <!--<h3>Service Charge - Rs.<?php echo $scharge; ?></h3>-->
			 
			  <h3>Service Charge (Rs) - <?php if ($scharge==0.00){echo ' <img src="http://nid.nsf.gov.lk/layout/img/contactus.png" alt="" width="140px" height="50px">';}
			  else 
			  
        {echo $scharge;}?></h3>
			  
			  
             
           
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--================End Single Product Area =================-->


 </br>
 </br>
  </br>
 </br>
  
</br>
 </br>
  </br>
 </br>


  <!--================Product Description Area =================-->
  <section class="product_description_area" style="margin-top:-100px; ">
    <div class="container">
      <ul class="nav nav-tabs" id="myTab" role="tablist">
	  <li class="nav-item" >
          <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home1" role="tab" aria-controls="home1"
            aria-selected="true" style="background: #EE9310 ; font-size:18px;">Basic Information</a>
        </li>
		
		
	  <li class="nav-item">
          <a class="nav-link " id="home-tab" data-toggle="tab" href="#home2" role="tab" aria-controls="home2"
            aria-selected="true" style="background: #EE9310 ; font-size:18px;" >Contact Detail</a>
        </li>
	  
	  
        <li class="nav-item">
          <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
            aria-selected="true" style="background: #EE9310 ; font-size:18px;">Product Category Description</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
            aria-selected="false" style="background: #EE9310 ; font-size:18px;">Specification</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link " id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
            aria-selected="false" style="background: #EE9310 ; font-size:18px;">Feedback</a>
        </li>
		
      </ul>
      <div class="tab-content" id="myTabContent">
	  
	  
	  
	  
	   <div class="tab-pane fade show active" id="home1" role="tabpanel" aria-labelledby="home1-tab">
         <div class="table-responsive">
           
			
			
			
			
		



	  
	  
	    <!--================ =================-->
	  <!--================ =================-->
	  
	  
	   <!--================ confirmation part start =================-->
  <section class="confirmation_part padding_top"  >
    <div class="container" style=" 
	margin-top:-150px; ">
    
      <div class="row" >
        <div class="col-lg-12">
          <div class="order_details_iner" style="  background-color:#FFFFFF" >
          
          <table class="table table-borderless" style="  background-color:#FFFFFF" >
             
              <tbody>
                    <tr >
                        <td style="color:black; font-weight: 700;">Manufacturer</td>
                        <td><?php echo $manufacturer; ?></td>
                       
                        <td style="color:black; font-weight: 700;">Funding Source</td>
						<td><?php echo $FundingSource; ?></td>
                    </tr>
                    <tr>
                         <td style="color:black; font-weight: 700;">Model</td>
                        <td><?php echo $model; ?></td>
                        
                        <td style="color:black; font-weight: 700;">Whether the equipment service can be provided to external researchers/institutions</td>
                        <td><?php if ($externalResearch==1){echo 'Yes';} else {echo 'No';}?></td>
                    </tr>
                    <tr>
                        <td style="color:black; font-weight: 700;">Manufactured Year</td>
                        <td><?php echo $mYear; ?></td>
                        
                        <td style="color:black; font-weight: 700;">Availability of Technically Competent Staff</td>
                        <td><?php echo $staffName ; ?></td>
                    </tr>
                    <tr>
                        <td style="color:black; font-weight: 700;">HS Code</td>
                        <td><?php echo $accessories; ?></td>
                       				  
               
                        <td style="color:black; font-weight: 700;">Instrument Condition</td>
                        <td><?php echo $condition; ?></td>
                    </tr>
                    <tr>
                        <td style="color:black; font-weight: 700;">Vendor Name</td>
                      <td><?php echo $vendorName; ?></td>
                     
                        <td style="color:black; font-weight: 700;">Commencement of Operations Date</td>
                        <td><?php echo $operationsDate; ?></td>
                    </tr>
					
					
					
                    <tr>
                        <td style="color:black; font-weight: 700;">Vendor Contact</td>
                        <td><?php echo $vendorContact; ?></td>
                       
                        <td style="color:black; font-weight: 700;">InstrumentPrice</td>
                        <td><?php echo $price; ?></td>
                    </tr>
                    <tr>
                        <td style="color:black; font-weight: 700;">Vendor Url</td>
                         <td><?php echo $vendorUrl; ?></td>
                       <td style="color:black; font-weight: 700;">Stage of the Record</td>
                         <td><?php if ($recordStatus==1){echo 'Completed';} else {echo 'Incomplete';}?></td>
                       
                        
                    </tr>
                    <tr>
                        <td style="color:black; font-weight: 700;">Catalog Aceess</td>
                        <td><?php echo $catalogAccess; ?></td>
                       
                        <td style="color:black; font-weight: 700;"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td  style="color:black; font-weight: 700;">Catalog Upload</td>
                         <td style="color: #EC8756;"><a href="<?=base_url(); ?>catalogUploads/<?php echo $catalogUpload; ?>">View File<a></td>
                       
                        <td style="color:black; font-weight: 700;"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="color:black; font-weight: 700;">Catalog Link</td>
                        <td><?php echo $catalogLink; ?></td>
                       
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
			 
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================ confirmation part end =================-->
	  
	  </div>
        </div>
	 
	  
	  
	  
	  
	   <div class="tab-pane fade " id="home2" role="tabpanel" aria-labelledby="home2-tab">
         <div class="table-responsive">
           
		
		
		
		
		  
	   <!--================ confirmation part start =================-->
  <section class="confirmation_part padding_top" >
  
   <div class="container" style="margin-top:-200px; ">
    
       <div class="row" >
        <div class="col-lg-12">
          <div class="order_details_iner" style="  background-color:#FFFFFF" >
          
          <table class="table table-borderless" style="  background-color:#FFFFFF" >
              
              <tbody>
                    <tr >
                        <td style="font-color:black; font-weight: 700;">Institute</td>
                        <td><?php echo $instituteName; ?></td>
                       
                        
                    </tr>
					
					
					
					<tr >
                        <td style="font-color:black; font-weight: 700;">Faculty</td>
                        <td><?php echo $facultyName; ?></td>
                       
                        
                    </tr>
					
					<tr >
                        <td style="font-color:black; font-weight: 700;">Department</td>
                        <td><?php echo $departmentName; ?></td>
                       
                        
                    </tr>
                    <tr>
                         <td style="font-color:black; font-weight: 700;">Laboratory</td>
                        <td><?php echo $laboratoryName; ?></td>
                                           
                    </tr>
					
					<tr>
                         <td style="font-color:black; font-weight: 700;">Contact Person Name</td>
                        <td><?php echo $contactPersonName; ?></td>
                                           
                    </tr>
					
					<tr>
                         <td style="font-color:black; font-weight: 700; ">Email</td>
                        <td style="text-transform: lowercase;"><?php echo $contactPersonEmail; ?></td>
                                           
                    </tr>
					
					<tr>
                         <td style="font-color:black; font-weight: 700;">Phone Number</td>
                        <td><?php echo $contactPersonPhoneNumber; ?></td>
                                           
                    </tr>
					<tr>
                         <td style="font-color:black; font-weight: 700;">Mobile Number</td>
                        <td><?php echo $contactPersonMobileNumber; ?></td>
                                           
                    </tr>
                   
                    
					
					
					
                  
                </tbody>
			 
            </table>
          </div>
        </div>
      </div>
    </div>
  
  
  
  
  
  
   
  </section>
  <!--================ confirmation part end =================-->
	  
	  </div>
        </div>
	 
		
		
		
	  
        <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
           <div class="table-responsive">
		   
		    <!--================ confirmation part start =================-->
  <section class="confirmation_part padding_top" >
    <div class="container" style="margin-top:-200px; ">
    
       <div class="row" >
        <div class="col-lg-12">
          <div class="order_details_iner" style="  background-color:#FFFFFF" >
          
          <table class="table table-borderless" style="  background-color:#FFFFFF" >
              
              <tbody>
                    <tr >
                        <td style="font-color:black; font-weight: 700;">Product Category</td>
                        <td><?php echo $instrumentType; ?></td>
                       
                        
                    </tr>
					
					
					
					<tr >
                        <td style="font-color:black; font-weight: 700;">Sub Category</td>
                        <td><?php echo $keywords; ?></td>
                       
                        
                    </tr>
					
					<tr >
                        <td style="font-color:black; font-weight: 700;">Testing Paremeters</td>
                        <td><?php echo $parameters; ?></td>
                       
                        
                    </tr>
                    <tr>
                         <td style="font-color:black; font-weight: 700;">Description</td>
                        <td><?php echo $description; ?></td>
                        
                        
                    </tr>
                    <tr>
                        <td style="font-color:black; font-weight: 700;">Relevant Instruments</td>
                        <td><?php echo $relevantinstruments; ?></td>
                        
                       
                    </tr>
                    
					
					
					
                  
                </tbody>
			 
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================ confirmation part end =================-->
	  
	  </div>
        </div>
		   
           
		
		
		
		
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
          <div class="table-responsive">
            
			
			 <!--================ confirmation part start =================-->
  <section class="confirmation_part padding_top" >
   <div class="container" style="margin-top:-200px; ">
    
       <div class="row" >
        <div class="col-lg-12">
          <div class="order_details_iner" style="  background-color:#FFFFFF" >
          
          <table class="table table-borderless" style="  background-color:#FFFFFF" >
              
              <tbody>
			  
			  <tr >
                        <td style="font-color:black; font-weight: 700;">Technical Specification</td>
                        <td><?php echo $techspecification; ?></td>
                       
                        
                    </tr>
			  
                    <tr >
                        <td style="font-color:black; font-weight: 700;">Number of samples per cycle</td>
                        <td><?php echo $samplesNo; ?></td>
                       
                        
                    </tr>
                    <tr>
                         <td style="font-color:black; font-weight: 700;">Number of samples per day</td>
                        <td><?php echo $samplesPerDay; ?></td>
                        
                        
                    </tr>
                    <tr>
                        <td style="font-color:black; font-weight: 700;">Total usage hour per day</td>
                        <td><?php echo $usageHour; ?></td>
                        
                       
                    </tr>
                    
					
					
					
                  
                </tbody>
			 
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================ confirmation part end =================-->
	  
	  </div>
        </div>
	 
			
			
			
			
			
		
		
		 <div class="tab-pane fade " id="review" role="tabpanel" aria-labelledby="review-tab">
		 
		 <!--
          <div class="row">
            <div class="col-lg-6">
              <div class="row total_rate">
                <div class="col-6">
                  <div class="box_total">
                    <h5>Overall</h5>
                    <h4>4.0</h4>
                    <h6>(03 Reviews)</h6>
                  </div>
                </div>
                <div class="col-6">
                  <div class="rating_list">
                    <h3>Based on 3 Reviews</h3>
                    <ul class="list">
                      <li>
                        <a href="#">5 Star
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i> 01</a>
                      </li>
                      <li>
                        <a href="#">4 Star
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i> 01</a>
                      </li>
                      <li>
                        <a href="#">3 Star
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i> 01</a>
                      </li>
                      <li>
                        <a href="#">2 Star
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i> 01</a>
                      </li>
                      <li>
                        <a href="#">1 Star
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i> 01</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="review_list">
                <div class="review_item">
                  <div class="media">
                    <div class="d-flex">
                      <img src="<?=base_url(); ?>layout/img/product/single-product/review-1.png" alt="" />
                    </div>
                    <div class="media-body">
                      <h4>Blake Ruiz</h4>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </div>
                  </div>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                    ullamco laboris nisi ut aliquip ex ea commodo
                  </p>
                </div>
                <div class="review_item">
                  <div class="media">
                    <div class="d-flex">
                      <img src="<?=base_url(); ?>layout/img/product/single-product/review-2.png" alt="" />
                    </div>
                    <div class="media-body">
                      <h4>Blake Ruiz</h4>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </div>
                  </div>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                    ullamco laboris nisi ut aliquip ex ea commodo
                  </p>
                </div>
                <div class="review_item">
                  <div class="media">
                    <div class="d-flex">
                      <img src="img/product/single-product/review-3.png" alt="" />
                    </div>
                    <div class="media-body">
                      <h4>Blake Ruiz</h4>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </div>
                  </div>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                    ullamco laboris nisi ut aliquip ex ea commodo
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="review_box">
                <h4>Add a Review</h4>
                <p>Your Rating:</p>
                <ul class="list">
                  <li>
                    <a href="#">
                      <i class="fa fa-star"></i>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-star"></i>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-star"></i>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-star"></i>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-star"></i>
                    </a>
                  </li>
                </ul>
                <p>Outstanding</p>
                <form class="row contact_form" action="contact_process.php" method="post"  novalidate="novalidate">
                  <div class="col-md-12">
                    <div class="form-group">
                      <input type="text" class="form-control" name="name" placeholder="Your Full name" />
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <input type="email" class="form-control" name="email" placeholder="Email Address" />
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <input type="text" class="form-control" name="number" placeholder="Phone Number" />
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <textarea class="form-control" name="message" rows="1" placeholder="Review"></textarea>
                    </div>
                  </div>
                  <div class="col-md-12 text-right">
                    <button type="submit" value="submit" class="btn_3">
                      Submit Now
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
		  -->
		  </br>
		    </br>
		  <center> <h1>Under Development Stage</h1></center>
        </div>
		
		
		
		
		
		
       
		
		
       
      </div>
    </div>
  </section>
  <!--================End Product Description Area =================-->
  
  
  
  
  
  
  
  
  
  
  
 

  <!-- product_list part start-->
  <!-- product_list part start-->
    <section class="product_list section_padding" style=" background-color:#F1EFEC;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle text-center">
                        <h2>Related Instruments </h2>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-12">
                    <div class="best_product_slider owl-carousel">
                        
						
							
						
                         
			                
            <?php
                    $this->load->helper('form');
                    $error = $this->session->flashdata('error');
                    if($error)
                    {
                ?>
            
              <?php } ?>
              <?php
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
             
              <?php } ?>
              
                 <?php
                      if(!empty($instrumentRecords))
                      {
                          foreach($instrumentRecords as $record)
                          {
                      ?>
                                           
                        
                      
						
						 
						
                                    <div class="single_product_item">

                                     <?php if (!empty($record->image_upload1)) { ?>


                              <img src="<?= base_url(); ?>catalogUploads/<?php echo $record->image_upload1 ?>" width="100px" height="230px" />


                            <?php } else { ?>
                              <img src="<?php echo base_url(); ?>layout/img/lab.png" width="100px" height="230px" />
                            <?php } ?>


                                     
                                        <div class="single_product_text" style="height:230px;" >
                                            <!--<h3><a href="<?php echo base_url().'instrumentView/'.$record->instrument_id; ?>"> <?php echo $record->instrument_name ?></a></h3>-->
											 <h4> <?php echo $record->instrument_name ?></h4>
                                            <h3> <?php echo $record->name ?></h3>
                                            <a href="<?php echo base_url().'instrumentView/'.$record->instrument_id; ?>" class="add_cart">View Instrument</a>
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


 
























    




   <!--::footer_part start::-->
    <footer class="footer_part" style="background: #070300 ;  ">
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
  <script src="<?=base_url(); ?>layout/js/lightslider.min.js"></script>
  <!-- swiper js -->
  <script src="<?=base_url(); ?>layout/js/masonry.pkgd.js"></script>
  <!-- particles js -->
  <script src="<?=base_url(); ?>layout/js/owl.carousel.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.nice-select.min.js"></script>
  <!-- slick js -->
  <script src="<?=base_url(); ?>layout/js/slick.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/swiper.jquery.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.counterup.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/waypoints.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/contact.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.ajaxchimp.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.form.js"></script>
  <script src="<?=base_url(); ?>layout/js/jquery.validate.min.js"></script>
  <script src="<?=base_url(); ?>layout/js/mail-script.js"></script>
  <script src="<?=base_url(); ?>layout/js/stellar.js"></script>
  <!-- custom js -->
  <script src="<?=base_url(); ?>layout/js/theme.js"></script>
  <script src="<?=base_url(); ?>layout/js/custom.js"></script>

  </body>
</html>