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
                  <li class="nav-item mx-3">
                    <a class="nav-link" href="elaboratories">Laboratories</a>
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
  <section class="contact-section padding_top" style=" margin-top:-100px; ">
    <div class="container">
      
	
	

       
	
	   <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle " >
                        <h2 style="font-size: 32px; ">Number of Instruments available by Universities and R&D Institutes</h2>
						
                    </div>
                </div>
            </div> 
	   
	   
	   
	   
	   
	   
	   
	
			<div class="container py-5"  style=" margin-top:-50px; ">
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['Universities & Institutes', 'Number of Instruments'],
		  ["Universities(24)", 0],
         ["Eastern University, Sri Lanka", <?php if(isset($instrumentCount9)) { echo $instrumentCount9; } else { echo '0'; } ?>],
         ["Gampaha Wickramarachchi University of Indigenous Medicine", <?php if(isset($instrumentCount25)) { echo $instrumentCount25; } else { echo '0'; } ?>],
        ["General Sir John Kotelawala Defence University", <?php if(isset($instrumentCount48)) { echo $instrumentCount48; } else { echo '0'; } ?>],
         ["Institute of Biochemistry Molecular and Biotechnology, University of Colombo (IBMBB)", <?php if(isset($instrumentCount46)) { echo $instrumentCount46; } else { echo '0'; } ?>],
		  ["Institute of Indigenous Medicine", <?php if(isset($instrumentCount30)) { echo $instrumentCount30; } else { echo '0'; } ?>],
       ["Institute of Technology, University of Moratuwa (ITUM)", <?php if(isset($instrumentCount78)) { echo $instrumentCount78; } else { echo '0'; } ?>],
		 ["Postgraduate Institute of Agriculture", <?php if(isset($instrumentCount26)) { echo $instrumentCount26; } else { echo '0'; } ?>],
		   ["Rajarata University of Sri Lanka", <?php if(isset($instrumentCount7)) { echo $instrumentCount7; } else { echo '0'; } ?>],
		  ["Sabaragamuwa University of Sri Lanka", <?php if(isset($instrumentCount33)) { echo $instrumentCount33; } else { echo '0'; } ?>],
			   ["South Eastern University of Sri Lanka", <?php if(isset($instrumentCount12)) { echo $instrumentCount12; } else { echo '0'; } ?>],
				 ["Sri Lanka Technological Campus (SLTC) - Research University", <?php if(isset($instrumentCount42)) { echo $instrumentCount42; } else { echo '0'; } ?>],
				 ["The Open University of Sri Lanka", <?php if(isset($instrumentCount40)) { echo $instrumentCount40; } else { echo '0'; } ?>],
				 ["University of Colombo", <?php if(isset($instrumentCount4)) { echo $instrumentCount4; } else { echo '0'; } ?>],
				["University of Jaffna", <?php if(isset($instrumentCount35)) { echo $instrumentCount35; } else { echo '0'; } ?>],
			["University of Kelaniya", <?php if(isset($instrumentCount1)) { echo $instrumentCount1; } else { echo '0'; } ?>],
				["University of Moratuwa", <?php if(isset($instrumentCount47)) { echo $instrumentCount47; } else { echo '0'; } ?>],
				["University of Peradeniya", <?php if(isset($instrumentCount3)) { echo $instrumentCount3; } else { echo '0'; } ?>],
				["University of Ruhuna", <?php if(isset($instrumentCount24)) { echo $instrumentCount24; } else { echo '0'; } ?>],
				["University of Sri Jayewardenepura", <?php if(isset($instrumentCount27)) { echo $instrumentCount27; } else { echo '0'; } ?>],
				["University of Vauniya", <?php if(isset($instrumentCount6)) { echo $instrumentCount6; } else { echo '0'; } ?>],				
				["University of the Visual and Performing Arts", <?php if(isset($instrumentCount34)) { echo $instrumentCount34; } else { echo '0'; } ?>],
				["University of Vocational Technology", <?php if(isset($instrumentCount45)) { echo $instrumentCount45; } else { echo '0'; } ?>],
				["Uva Wellassa University", <?php if(isset($instrumentCount17)) { echo $instrumentCount17; } else { echo '0'; } ?>],
				["Wayamba University of Sri Lanka", <?php if(isset($instrumentCount36)) { echo $instrumentCount36; } else { echo '0'; } ?>],

["-", 0],




		  ['Institutes (52)', 'Percentage'],
		
		   ["Allergy Immunology and Cell Biology Unit (AICBU)", <?php if(isset($instrumentCount31)) { echo $instrumentCount31; } else { echo '0'; } ?>],
		   ["  Arthur C. Clarke Institute for Modern Technologies", <?php if(isset($instrumentCount52)) { echo $instrumentCount52; } else { echo '0'; } ?>],
		   ["   AVATO Laboratory (PVT) Ltd", <?php if(isset($instrumentCount56)) { echo $instrumentCount56; } else { echo '0'; } ?>],          
		  ["Bandaranayake Memorial Ayurveda Research Institute", <?php if(isset($instrumentCount28)) { echo $instrumentCount28; } else { echo '0'; } ?>],		  
		  [" Central Environmental Authority (CEA)", <?php if(isset($instrumentCount43)) { echo $instrumentCount43; } else { echo '0'; } ?>],


		   ["  Ceylon Petroleum Corporation", <?php if(isset($instrumentCount69)) { echo $instrumentCount69; } else { echo '0'; } ?>],	
       [" Ceylon Petroleum Storage Terminal Limited", <?php if(isset($instrumentCount71)) { echo $instrumentCount71; } else { echo '0'; } ?>],	  
		  ["  China-Sri Lanka Joint Research and Demonstration Centre for Water Technology", <?php if(isset($instrumentCount20)) { echo $instrumentCount20; } else { echo '0'; } ?>],
		 ["  Coconut Development Authority (CDA)", <?php if(isset($instrumentCount49)) { echo $instrumentCount49; } else { echo '0'; } ?>],
		   ["Coconut Research Institute of Sri Lanka (CRI)", <?php if(isset($instrumentCount18)) { echo $instrumentCount18; } else { echo '0'; } ?>],
       ["Construction Guarantee Fund", <?php if(isset($instrumentCount84)) { echo $instrumentCount84; } else { echo '0'; } ?>],
        ["Department of Agriculture (PGIA)", <?php if(isset($instrumentCount22)) { echo $instrumentCount22; } else { echo '0'; } ?>],
        
        
			 ["Department of Ayurveda", <?php if(isset($instrumentCount32)) { echo $instrumentCount32; } else { echo '0'; } ?>],
        ["Department of Export Agriculture", <?php if(isset($instrumentCount13)) { echo $instrumentCount13; } else { echo '0'; } ?>],
         ["Department of Government Factory", <?php if(isset($instrumentCount83)) { echo $instrumentCount83; } else { echo '0'; } ?>],
  ["Environmental Laboratory & Consultancy Services (ELCS)", <?php if(isset($instrumentCount75)) { echo $instrumentCount75; } else { echo '0'; } ?>],   			  
			  ["   Gem and Jewellery Research and Training Institute (GJRTI)", <?php if(isset($instrumentCount65)) { echo $instrumentCount65; } else { echo '0'; } ?>],
			 ["   Geological Survey & Mines Bureau(GSMB)", <?php if(isset($instrumentCount58)) { echo $instrumentCount58; } else { echo '0'; } ?>],


			 ["    Government Analyst's Department", <?php if(isset($instrumentCount61)) { echo $instrumentCount61; } else { echo '0'; } ?>],		 		
			  ["   Hector Kobbekaduwa Agrarian Research and Training Institute", <?php if(isset($instrumentCount8)) { echo $instrumentCount8; } else { echo '0'; } ?>],			  
			  ["   Horticultural Crops Research and Development Institute", <?php if(isset($instrumentCount23)) { echo $instrumentCount23; } else { echo '0'; } ?>],
			  ["   Industrial Development Board (IDB)", <?php if(isset($instrumentCount64)) { echo $instrumentCount64; } else { echo '0'; } ?>],
			  ["   Industrial Technology Institute (ITI)", <?php if(isset($instrumentCount2)) { echo $instrumentCount2; } else { echo '0'; } ?>],



		 ["   Institute for Research and Development", <?php if(isset($instrumentCount53)) { echo $instrumentCount53; } else { echo '0'; } ?>], 
      ["   Institute of Sports Medicine", <?php if(isset($instrumentCount80)) { echo $instrumentCount80; } else { echo '0'; } ?>],    
      ["   Laboratory for Cultural Material Analysis", <?php if(isset($instrumentCount74)) { echo $instrumentCount74; } else { echo '0'; } ?>],     
		   ["   Lanka Mineral Sands Ltd", <?php if(isset($instrumentCount66)) { echo $instrumentCount66; } else { echo '0'; } ?>],
		  ["   National Aquatic Resources Research and Development Agency (NARA)", <?php if(isset($instrumentCount68)) { echo $instrumentCount68; } else { echo '0'; } ?>],	       
        ["National Building Research Organization (NBRO)", <?php if(isset($instrumentCount73)) { echo $instrumentCount73; } else { echo '0'; } ?>],


		 		  		 
		 ["National Cinnamon Research and Training Center", <?php if(isset($instrumentCount59)) { echo $instrumentCount59; } else { echo '0'; } ?>],		  
			 			  ["National Engineering Research and Development Centre (NERD)", <?php if(isset($instrumentCount50)) { echo $instrumentCount50; } else { echo '0'; } ?>],
		  ["National Institute of Fundamental Studies (NIFS)", <?php if(isset($instrumentCount29)) { echo $instrumentCount29; } else { echo '0'; } ?>],
			 ["National Institute of Post Harvest Management (NIPHM)", <?php if(isset($instrumentCount15)) { echo $instrumentCount15; } else { echo '0'; } ?>],
			  [" National Science Foundation(Test Instruments)", <?php if(isset($instrumentCount5)) { echo $instrumentCount5; } else { echo '0'; } ?>],
         [" National Water Supply and Drainage Board", <?php if(isset($instrumentCount82)) { echo $instrumentCount82; } else { echo '0'; } ?>],
			  

			  
			  ["   	 Palmyrah Research Institute", <?php if(isset($instrumentCount72)) { echo $instrumentCount72; } else { echo '0'; } ?>],
			  ["   	Road Development Authority", <?php if(isset($instrumentCount63)) { echo $instrumentCount63; } else { echo '0'; } ?>],			  
     ["    Rubber Research Institute of Sri Lanka (RRI)", <?php if(isset($instrumentCount39)) { echo $instrumentCount39; } else { echo '0'; } ?>],
	 ["    SGS Lanka ( PVT) Ltd", <?php if(isset($instrumentCount60)) { echo $instrumentCount60; } else { echo '0'; } ?>],		
		  ["Sri Lanka Atomic Energy Board", <?php if(isset($instrumentCount55)) { echo $instrumentCount55; } else { echo '0'; } ?>],


		   [" Sri Lanka Institute of Information Technology (SLIIT)", <?php if(isset($instrumentCount70)) { echo $instrumentCount70; } else { echo '0'; } ?>],		  
		  ["Sri Lanka Institute of Nanotechnology (SLINTEC)", <?php if(isset($instrumentCount54)) { echo $instrumentCount54; } else { echo '0'; } ?>],
		  ["Sri Lanka Institute of Textile & Apparel (SLITA)", <?php if(isset($instrumentCount67)) { echo $instrumentCount67; } else { echo '0'; } ?>],
		  
		   [" Sri Lanka Institute of Biotechnology", <?php if(isset($instrumentCount79)) { echo $instrumentCount79; } else { echo '0'; } ?>],


		
			  ["Sri Lanka Tea Board (STB)", <?php if(isset($instrumentCount57)) { echo $instrumentCount57; } else { echo '0'; } ?>],
			["Sri Lanka Standards Institution (SLSI)", <?php if(isset($instrumentCount11)) { echo $instrumentCount11; } else { echo '0'; } ?>],
      	["State Engineering Corporation", <?php if(isset($instrumentCount81)) { echo $instrumentCount81; } else { echo '0'; } ?>],	
			["State Pharmaceuticals corporation", <?php if(isset($instrumentCount62)) { echo $instrumentCount62; } else { echo '0'; } ?>],			
			[" Sugarcane Research Institute (SRI)", <?php if(isset($instrumentCount51)) { echo $instrumentCount51; } else { echo '0'; } ?>],
			[" Tea Research Institute of Sri Lanka (TRI)", <?php if(isset($instrumentCount16)) { echo $instrumentCount16; } else { echo '0'; } ?>],


      [" The Adolescent and Adult Thalassemia Care Unit", <?php if(isset($instrumentCount76)) { echo $instrumentCount76; } else { echo '0'; } ?>],			
			[" Veterinary Research Institute", <?php if(isset($instrumentCount38)) { echo $instrumentCount38; } else { echo '0'; } ?>]
		  	
		  	
					 
			

			 
		
		  //{ y:   <?php if(isset($instrumentCount9)) { echo $instrumentCount9; } else { echo '0'; } ?>, label: "<?php if(isset($institutename9)) { echo $institutename9; } else { echo '0'; } ?>" }			
        ]);

        var options = {
          title: 'Chess opening moves',
          width: 1100,
          legend: { position: 'none' },
         // chart: { title: 'Chess opening moves',
                 //  subtitle: 'popularity by percentage' },
          bars: 'horizontal', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'top', label: 'Number of Instruments'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        chart.draw(data, options);
      };
    </script>
	
	 <div id="top_x_div" style="width: 1000px; height: 1200px;"></div>

 



</br>
</br>


	   
	   
	   
	   
	   
    </div>
  </section>
  <!-- ================ contact section end ================= -->






<section class="container">


   <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle " >
                        <h2 >Summary of Registered Universities and R&D Institutes</h2>
                    </div>
                </div>
            </div> 
  
 
 
  <input type="search" class="light-table-filter" data-table="order-table" placeholder="Search" style="margin-left:2px;">
  </br>
 </br>
  <table class="order-table table">
    <thead style="background: #F9D165;">
      <tr>
        <th></th>
         <th >Institute Name</th>
        <th >Number of Faculties</th>
		<th>Number of Departments</th>
        <th>Number of Laboratories</th>
		<th>Number of Users</th>
		 <th>Number of Products</th>
		 <th>Number of Instruments</th>
		
      </tr>
    </thead>
	
	
     
    <tbody>
	
	 </tr>
	  
      <tr style="background: #EDEBE6; ">
        <td></td>
        <td></td>
        <td></td>
        <th>Universities</th>
		 		  <td></td>
		   <td></td>
		    <td></td>
			 <td>   </td>
			
		
		
      </tr>
	
  <tr>
        <td>1</td>
        <td>Eastern University, Sri Lanka</td>
        <td><?php if(isset($facultyCount9)) { echo $facultyCount9; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount9)) { echo $departmentCount9; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount9)) { echo $laboratoryCount9; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount9)) { echo $usersCount9; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount9)) { echo $productCount9; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount9)) { echo $instrumentCount9; } else { echo '0'; } ?> </td>
			
			
		
		
     
      <tr  style="background: #FFF7E1; ">
        <td>2</td>
         <td>Gampaha Wickramarachchi University of Indigenous Medicine</td>
        <td><?php if(isset($facultyCount25)) { echo $facultyCount25; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount25)) { echo $departmentCount25; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount25)) { echo $laboratoryCount25; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount25)) { echo $usersCount25; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount25)) { echo $productCount25; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount25)) { echo $instrumentCount25; } else { echo '0'; } ?> </td>
      </tr>
	  
	  
      <tr>
        <td>3</td>
 <td>General Sir John Kotelawala Defence University</td>
       <td><?php if(isset($facultyCount48)) { echo $facultyCount48; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount48)) { echo $departmentCount48; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount48)) { echo $laboratoryCount48; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount48)) { echo $usersCount48; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount48)) { echo $productCount48; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount48)) { echo $instrumentCount48; } else { echo '0'; } ?> </td>
      </tr>
	  
	   
	    <tr style="background: #FFF7E1; ">
	   <td>4</td>
 <td>Institute of Biochemistry Molecular and Biotechnology, University of Colombo (IBMBB)</td>
       <td><?php if(isset($facultyCount46)) { echo $facultyCount46; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount46)) { echo $departmentCount46; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount46)) { echo $laboratoryCount46; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount46)) { echo $usersCount46; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount46)) { echo $productCount46; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount46)) { echo $instrumentCount46; } else { echo '0'; } ?> </td>
      </tr>
	  
	 
 <tr>
	 <td>5</td>
     <td> Institute of Indigenous Medicine</td>
       <td><?php if(isset($facultyCount30)) { echo $facultyCount30; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount30)) { echo $departmentCount30; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount30)) { echo $laboratoryCount30; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount30)) { echo $usersCount30; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount30)) { echo $productCount30; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount30)) { echo $instrumentCount30; } else { echo '0'; } ?> </td>
      </tr>



       <tr style="background: #FFF7E1; ">
	 <td>6</td>
     <td> Institute of Technology, University of Moratuwa (ITUM)</td>
       <td><?php if(isset($facultyCount78)) { echo $facultyCount78; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount78)) { echo $departmentCount78; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount78)) { echo $laboratoryCount78; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount78)) { echo $usersCount78; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount78)) { echo $productCount78; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount78)) { echo $instrumentCount78; } else { echo '0'; } ?> </td>
      </tr>

	  
	  
	 <tr >
	 <td>7</td>
     <td> Postgraduate Institute of Agriculture (PGIA)</td>
       <td><?php if(isset($facultyCount26)) { echo $facultyCount26; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount26)) { echo $departmentCount26; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount26)) { echo $laboratoryCount26; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount26)) { echo $usersCount26; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount26)) { echo $productCount26; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount26)) { echo $instrumentCount26; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>8</td>
     <td> Rajarata University of Sri Lanka</td>
      <td><?php if(isset($facultyCount7)) { echo $facultyCount7; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount7)) { echo $departmentCount7; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount7)) { echo $laboratoryCount7; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount7)) { echo $usersCount7; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount7)) { echo $productCount7; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount7)) { echo $instrumentCount7; } else { echo '0'; } ?> </td>
      </tr> 
	  
	   <tr >
	 <td>9</td>
     <td> Sabaragamuwa University of Sri Lanka</td>
      <td><?php if(isset($facultyCount33)) { echo $facultyCount33; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount33)) { echo $departmentCount33; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount33)) { echo $laboratoryCount33; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount33)) { echo $usersCount33; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount33)) { echo $productCount33; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount33)) { echo $instrumentCount33; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	  
	  <tr style="background: #FFF7E1; ">
	 <td>10</td>
     <td> South Eastern University of Sri Lanka</td>
      <td><?php if(isset($facultyCount12)) { echo $facultyCount12; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount12)) { echo $departmentCount12; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount12)) { echo $laboratoryCount12; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount12)) { echo $usersCount12; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount12)) { echo $productCount12; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount12)) { echo $instrumentCount12; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr >
	 <td>11</td>
     <td> Sri Lanka Technological Campus (SLTC) - Research University</td>
      <td><?php if(isset($facultyCount42)) { echo $facultyCount42; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount42)) { echo $departmentCount42; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount42)) { echo $laboratoryCount42; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount42)) { echo $usersCount42; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount42)) { echo $productCount42; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount42)) { echo $instrumentCount42; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	   <tr style="background: #FFF7E1; ">
	 <td>12</td>
     <td> The Open University of Sri Lanka</td>
      <td><?php if(isset($facultyCount40)) { echo $facultyCount40; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount40)) { echo $departmentCount40; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount40)) { echo $laboratoryCount40; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount40)) { echo $usersCount40; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount40)) { echo $productCount40; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount40)) { echo $instrumentCount40; } else { echo '0'; } ?> </td>
      </tr> 
	  
	   <tr >
	 <td>13</td>
     <td> University of Colombo</td>
      <td><?php if(isset($facultyCount4)) { echo $facultyCount4; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount4)) { echo $departmentCount4; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount4)) { echo $laboratoryCount4; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount4)) { echo $usersCount4; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount4)) { echo $productCount4; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount4)) { echo $instrumentCount4; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>14</td>
     <td> University of Jaffna</td>
      <td><?php if(isset($facultyCount35)) { echo $facultyCount35; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount35)) { echo $departmentCount35; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount35)) { echo $laboratoryCount35; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount35)) { echo $usersCount35; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount35)) { echo $productCount35; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount35)) { echo $instrumentCount35; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	  <tr >
	 <td>15</td>
     <td> University of Kelaniy</td>
      <td><?php if(isset($facultyCount1)) { echo $facultyCount1; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount1)) { echo $departmentCount1; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount1)) { echo $laboratoryCount1; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount1)) { echo $usersCount1; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount1)) { echo $productCount1; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount1)) { echo $instrumentCount1; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>16</td>
     <td> University of Moratuwa</td>
      <td><?php if(isset($facultyCount47)) { echo $facultyCount47; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount47)) { echo $departmentCount47; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount47)) { echo $laboratoryCount47; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount47)) { echo $usersCount47; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount47)) { echo $productCount47; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount47)) { echo $instrumentCount47; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr >
	 <td>17</td>
     <td> University of Peradeniya</td>
     <td><?php if(isset($facultyCount3)) { echo $facultyCount3; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount3)) { echo $departmentCount3; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount3)) { echo $laboratoryCount3; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount3)) { echo $usersCount3; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount3)) { echo $productCount3; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount3)) { echo $instrumentCount3; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>18</td>
     <td> University of Ruhuna</td>
      <td><?php if(isset($facultyCount24)) { echo $facultyCount24; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount24)) { echo $departmentCount24; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount24)) { echo $laboratoryCount24; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount24)) { echo $usersCount24; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount24)) { echo $productCount24; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount24)) { echo $instrumentCount24; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr >
	 <td>19</td>
     <td> University of Sri Jayewardenepura</td>
     <td><?php if(isset($facultyCount27)) { echo $facultyCount27; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount27)) { echo $departmentCount27; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount27)) { echo $laboratoryCount27; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount27)) { echo $usersCount27; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount27)) { echo $productCount27; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount27)) { echo $instrumentCount27; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	   <tr style="background: #FFF7E1; ">
	 <td>20</td>
	 <td> University of Vauniya</td>
     <td><?php if(isset($facultyCount6)) { echo $facultyCount6; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount6)) { echo $departmentCount6; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount6)) { echo $laboratoryCount6; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount6)) { echo $usersCount6; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount6)) { echo $productCount6; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount6)) { echo $instrumentCount6; } else { echo '0'; } ?> </td>
      </tr> 
	  
	   <tr >
	 <td>21</td>
     <td> University of the Visual and Performing Arts</td>
     <td><?php if(isset($facultyCount34)) { echo $facultyCount34; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount34)) { echo $departmentCount34; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount34)) { echo $laboratoryCount34; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount34)) { echo $usersCount34; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount34)) { echo $productCount34; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount34)) { echo $instrumentCount34; } else { echo '0'; } ?> </td>
      </tr> 
	  
	    <tr style="background: #FFF7E1; ">
	 <td>22</td>
     <td> University of Vocational Technology</td>
     <td><?php if(isset($facultyCount45)) { echo $facultyCount45; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount45)) { echo $departmentCount45; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount45)) { echo $laboratoryCount45; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount45)) { echo $usersCount45; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount45)) { echo $productCount45; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount45)) { echo $instrumentCount45; } else { echo '0'; } ?> </td>
      </tr> 
	  
	    <tr >
	 <td>23</td>
     <td> Uva Wellassa University</td>
    <td><?php if(isset($facultyCount17)) { echo $facultyCount17; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount17)) { echo $departmentCount17; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount17)) { echo $laboratoryCount17; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount17)) { echo $usersCount17; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount17)) { echo $productCount17; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount17)) { echo $instrumentCount17; } else { echo '0'; } ?> </td>
      </tr> 
	  
	    <tr style="background: #FFF7E1; ">
	 <td>24</td>
     <td> Wayamba University of Sri Lanka</td>
    <td><?php if(isset($facultyCount36)) { echo $facultyCount36; } else { echo '0'; } ?></td>
        <td><?php if(isset($departmentCount36)) { echo $departmentCount36; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount36)) { echo $laboratoryCount36; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount36)) { echo $usersCount36; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount36)) { echo $productCount36; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount36)) { echo $instrumentCount36; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	  
	  
	 <tr style="background: #EDEBE6; ">
        <td></td>
        <td></td>
        <td></td>
        <th>Institutes</th>
		 		  <td></td>
		   <td></td>
		    <td></td>
			 <td>   </td>
			
		
		
      </tr>
	  
	  
	   <thead style="background: #F9D165;">
      <tr>
        <th></th>
         <th >Institute Name</th>
        <th ></th>
		<th>Number of Departments</th>
        <th>Number of Laboratories</th>
		<th>Number of Users</th>
		 <th>Number of Products</th>
		 <th>Number of Instruments</th>
		
      </tr>
    </thead>
	
	<tr>
        <td>25</td>
        <td>Allergy Immunology and Cell Biology Unit (AICBU)</td>
       <td></td>
        <td><?php if(isset($departmentCount31)) { echo $departmentCount31; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount31)) { echo $laboratoryCount31; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount31)) { echo $usersCount31; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount31)) { echo $productCount31; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount31)) { echo $instrumentCount31; } else { echo '0'; } ?> </td>
			
		
		
      </tr>
      
	  <tr  style="background: #FFF7E1; ">
        <td>26</td>
		 <td>Arthur C. Clarke Institute for Modern Technologies</td>
         <td></td>
        <td><?php if(isset($departmentCount52)) { echo $departmentCount52; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount52)) { echo $laboratoryCount52; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount52)) { echo $usersCount52; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount52)) { echo $productCount52; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount52)) { echo $instrumentCount52; } else { echo '0'; } ?> </td>
      </tr>
	  
	  
	  
	  <tr>
        <td>27</td>
		 <td>AVATO Laboratory (PVT) Ltd</td>
         <td></td>
        <td><?php if(isset($departmentCount56)) { echo $departmentCount56; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount56)) { echo $laboratoryCount56; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount56)) { echo $usersCount56; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount56)) { echo $productCount56; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount56)) { echo $instrumentCount56; } else { echo '0'; } ?> </td>
      </tr>
	  
	  
      <tr style="background: #FFF7E1; ">
        <td>28</td>
 <td>Bandaranayake Memorial Ayurveda Research Institute</td>
       <td></td>
        <td><?php if(isset($departmentCount28)) { echo $departmentCount28; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount28)) { echo $laboratoryCount28; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount28)) { echo $usersCount28; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount28)) { echo $productCount28; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount28)) { echo $instrumentCount28; } else { echo '0'; } ?> </td>
      </tr>
	  
	  
	   <tr >
        <td>29</td>
 <td> Ceylon Petroleum Corporation</td>
       <td></td>
        <td><?php if(isset($departmentCount69)) { echo $departmentCount69; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount69)) { echo $laboratoryCount69; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount69)) { echo $usersCount69; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount69)) { echo $productCount69; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount69)) { echo $instrumentCount69; } else { echo '0'; } ?> </td>
      </tr>
	  
	   
	    <tr style="background: #FFF7E1; ">
	   <td>30</td>
 <td>Central Environmental Authority (CEA)</td>
       <td></td>
        <td><?php if(isset($departmentCount43)) { echo $departmentCount43; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount43)) { echo $laboratoryCount43; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount43)) { echo $usersCount43; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount43)) { echo $productCount43; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount43)) { echo $instrumentCount43; } else { echo '0'; } ?> </td>
      </tr>
	  
	   <tr >
	   <td>31</td>
 <td> Ceylon Petroleum Storage Terminal Limited</td>
       <td></td>
        <td><?php if(isset($departmentCount71)) { echo $departmentCount71; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount71)) { echo $laboratoryCount71; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount71)) { echo $usersCount71; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount71)) { echo $productCount71; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount71)) { echo $instrumentCount71; } else { echo '0'; } ?> </td>
      </tr>
	  
	  
	 
 <tr style="background: #FFF7E1; ">
	 <td>32</td>
     <td> China-Sri Lanka Joint Research and Demonstration Centre for Water Technology</td>
       <td></td>
        <td><?php if(isset($departmentCount20)) { echo $departmentCount20; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount20)) { echo $laboratoryCount20; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount20)) { echo $usersCount20; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount20)) { echo $productCount20; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount20)) { echo $instrumentCount20; } else { echo '0'; } ?> </td>
      </tr>
	  
	  
	 <tr >
	 <td>33</td>
     <td> Coconut Development Authority (CDA)</td>
       <td></td>
        <td><?php if(isset($departmentCount49)) { echo $departmentCount49; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount49)) { echo $laboratoryCount49; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount49)) { echo $usersCount49; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount49)) { echo $productCount49; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount49)) { echo $instrumentCount49; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>34</td>
     <td> Coconut Research Institute of Sri Lanka (CRI)</td>
     <td></td>
        <td><?php if(isset($departmentCount18)) { echo $departmentCount18; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount18)) { echo $laboratoryCount18; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount18)) { echo $usersCount18; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount18)) { echo $productCount18; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount18)) { echo $instrumentCount18; } else { echo '0'; } ?> </td>
      </tr> 
	  

       <tr>
	 <td>35</td>
     <td> Construction Guarantee Fund</td>
     <td></td>
        <td><?php if(isset($departmentCount84)) { echo $departmentCount84; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount84)) { echo $laboratoryCount84; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount84)) { echo $usersCount84; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount84)) { echo $productCount84; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount84)) { echo $instrumentCount84; } else { echo '0'; } ?> </td>
      </tr> 
	   
	   <tr style="background: #FFF7E1; ">
	 <td>36</td>
     <td> Department of Agriculture (PGIA)</td>
      <td></td>
        <td><?php if(isset($departmentCount22)) { echo $departmentCount22; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount22)) { echo $laboratoryCount22; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount22)) { echo $usersCount22; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount22)) { echo $productCount22; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount22)) { echo $instrumentCount22; } else { echo '0'; } ?> </td>
      </tr> 
	  
	    <tr>
	 <td>37</td>
     <td> Department of Ayurveda</td>
      <td></td>
        <td><?php if(isset($departmentCount32)) { echo $departmentCount32; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount32)) { echo $laboratoryCount32; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount32)) { echo $usersCount32; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount32)) { echo $productCount32; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount32)) { echo $instrumentCount32; } else { echo '0'; } ?> </td>
      </tr> 

	  
	  <tr style="background: #FFF7E1; ">
	 <td>38</td>
     <td> Department of Export Agriculture</td>
     <td></td>
        <td><?php if(isset($departmentCount13)) { echo $departmentCount13; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount13)) { echo $laboratoryCount13; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount13)) { echo $usersCount13; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount13)) { echo $productCount13; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount13)) { echo $instrumentCount13; } else { echo '0'; } ?> </td>
      </tr> 
	  
	 <tr >
	 <td>39</td>
     <td> Department of Government Factory</td>
     <td></td>
        <td><?php if(isset($departmentCount83)) { echo $departmentCount83; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount83)) { echo $laboratoryCount83; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount83)) { echo $usersCount83; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount83)) { echo $productCount83; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount83)) { echo $instrumentCount83; } else { echo '0'; } ?> </td>
      </tr> 
	  

 <tr style="background: #FFF7E1; ">
	 <td>40</td>
     <td>  Environmental Laboratory & Consultancy Services (ELCS)</td>
      <td></td>
        <td><?php if(isset($departmentCount75)) { echo $departmentCount75; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount75)) { echo $laboratoryCount75; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount75)) { echo $usersCount75; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount75)) { echo $productCount75; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount75)) { echo $instrumentCount75; } else { echo '0'; } ?> </td>
      </tr> 


     
	  
	  <tr >
	 <td>41</td>
     <td> Gem and Jewellery Research and Training Institute (GJRTI)</td>
     <td></td>
        <td><?php if(isset($departmentCount65)) { echo $departmentCount65; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount65)) { echo $laboratoryCount65; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount65)) { echo $usersCount65; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount65)) { echo $productCount65; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount65)) { echo $instrumentCount65; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>42</td>
     <td> Geological Survey & Mines Bureau (GSMB)</td>
     <td></td>
        <td><?php if(isset($departmentCount58)) { echo $departmentCount58; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount58)) { echo $laboratoryCount58; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount58)) { echo $usersCount58; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount58)) { echo $productCount58; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount58)) { echo $instrumentCount58; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	  
	   <tr >
	 <td>43</td>
     <td> Government Analyst's Department</td>
     <td></td>
        <td><?php if(isset($departmentCount61)) { echo $departmentCount61; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount61)) { echo $laboratoryCount61; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount61)) { echo $usersCount61; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount61)) { echo $productCount61; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount61)) { echo $instrumentCount61; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	  
	  
	  
	  
	  
	   <tr style="background: #FFF7E1; ">
	 <td>44</td>
     <td> Hector Kobbekaduwa Agrarian Research and Training Institute</td>
     <td></td>
        <td><?php if(isset($departmentCount8)) { echo $departmentCount8; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount8)) { echo $laboratoryCount8; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount8)) { echo $usersCount8; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount8)) { echo $productCount8; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount8)) { echo $instrumentCount8; } else { echo '0'; } ?> </td>
      </tr> 
	  
	   <tr >
	 <td>45</td>
     <td> Horticultural Crops Research and Development Institute</td>
      <td></td>
        <td><?php if(isset($departmentCount23)) { echo $departmentCount23; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount23)) { echo $laboratoryCount23; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount23)) { echo $usersCount23; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount23)) { echo $productCount23; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount23)) { echo $instrumentCount23; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	 
	  
	    <tr style="background: #FFF7E1; ">
	 <td>46</td>
     <td>  Industrial Development Board (IDB)</td>
      <td></td>
        <td><?php if(isset($departmentCount64)) { echo $departmentCount64; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount64)) { echo $laboratoryCount64; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount64)) { echo $usersCount64; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount64)) { echo $productCount64; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount64)) { echo $instrumentCount64; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr>
	 <td>47</td>
     <td> Industrial Technology Institute (ITI)</td>
      <td></td>
        <td><?php if(isset($departmentCount2)) { echo $departmentCount2; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount2)) { echo $laboratoryCount2; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount2)) { echo $usersCount2; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount2)) { echo $productCount2; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount2)) { echo $instrumentCount2; } else { echo '0'; } ?> </td>
      </tr> 

      
	  
       <tr style="background: #FFF7E1; ">
	 <td>48</td>
     <td> Institute of Sports Medicine</td>
    <td></td>
        <td><?php if(isset($departmentCount80)) { echo $departmentCount80; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount80)) { echo $laboratoryCount80; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount80)) { echo $usersCount80; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount80)) { echo $productCount80; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount80)) { echo $instrumentCount80; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr>
	 <td>49</td>
     <td> Institute for Research and Development</td>
    <td></td>
        <td><?php if(isset($departmentCount53)) { echo $departmentCount53; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount53)) { echo $laboratoryCount53; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount53)) { echo $usersCount53; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount53)) { echo $productCount53; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount53)) { echo $instrumentCount53; } else { echo '0'; } ?> </td>
      </tr> 
	  

 <tr style="background: #FFF7E1; ">
	 <td>50</td>
     <td> Laboratory for Cultural Material Analysis</td>
    <td></td>
        <td><?php if(isset($departmentCount74)) { echo $departmentCount74; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount74)) { echo $laboratoryCount74; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount74)) { echo $usersCount74; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount74)) { echo $productCount74; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount74)) { echo $instrumentCount74; } else { echo '0'; } ?> </td>
      </tr> 
	  


	   
	  <tr >
	 <td>51</td>
     <td> Lanka Mineral Sands Ltd</td>
      <td></td>
        <td><?php if(isset($departmentCount66)) { echo $departmentCount66; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount66)) { echo $laboratoryCount66; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount66)) { echo $usersCount66; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount66)) { echo $productCount66; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount66)) { echo $instrumentCount66; } else { echo '0'; } ?> </td>
      </tr> 
	  
	    <tr style="background: #FFF7E1; ">
	 <td>52</td>
     <td>  National Aquatic Resources Research and Development Agency (NARA)</td>
    <td></td>
        <td><?php if(isset($departmentCount68)) { echo $departmentCount68; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount68)) { echo $laboratoryCount68; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount68)) { echo $usersCount68; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount68)) { echo $productCount68; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount68)) { echo $instrumentCount68; } else { echo '0'; } ?> </td>
      </tr> 



       <tr >
	 <td>53</td>
     <td>  National Building Research Organization (NBRO)</td>
    <td></td>
        <td><?php if(isset($departmentCount73)) { echo $departmentCount73; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount73)) { echo $laboratoryCount73; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount73)) { echo $usersCount73; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount73)) { echo $productCount73; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount73)) { echo $instrumentCount73; } else { echo '0'; } ?> </td>
      </tr> 
	  
	 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>54</td>
     <td> National Cinnamon Research and Training Center</td>
    <td></td>
        <td><?php if(isset($departmentCount59)) { echo $departmentCount59; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount59)) { echo $laboratoryCount59; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount59)) { echo $usersCount59; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount59)) { echo $productCount59; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount59)) { echo $instrumentCount59; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	  
	  
	  <tr >
	 <td>55</td>
     <td> National Engineering Research and Development Centre (NERD)</td>
      <td></td>
        <td><?php if(isset($departmentCount50)) { echo $departmentCount50; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount50)) { echo $laboratoryCount50; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount50)) { echo $usersCount50; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount50)) { echo $productCount50; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount50)) { echo $instrumentCount50; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>56</td>
     <td> National Institute of Fundamental Studies (NIFS)</td>
     <td></td>
        <td><?php if(isset($departmentCount29)) { echo $departmentCount29; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount29)) { echo $laboratoryCount29; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount29)) { echo $usersCount29; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount29)) { echo $productCount29; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount29)) { echo $instrumentCount29; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr>
	 <td>57</td>
     <td> National Institute of Post Harvest Management (NIPHM)</td>
      <td></td>
        <td><?php if(isset($departmentCount15)) { echo $departmentCount15; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount15)) { echo $laboratoryCount15; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount15)) { echo $usersCount15; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount15)) { echo $productCount15; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount15)) { echo $instrumentCount15; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td>58</td>
     <td> National Science Foundation(Test Instruments)</td>
     <td></td>
        <td><?php if(isset($departmentCount5)) { echo $departmentCount5; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount5)) { echo $laboratoryCount5; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount5)) { echo $usersCount5; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount5)) { echo $productCount5; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount5)) { echo $instrumentCount5; } else { echo '0'; } ?> </td>
      </tr>

       <tr>
	 <td>59</td>
     <td> National Water Supply and Drainage Board</td>
     <td></td>
        <td><?php if(isset($departmentCount82)) { echo $departmentCount82; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount82)) { echo $laboratoryCount82; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount82)) { echo $usersCount82; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount82)) { echo $productCount82; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount82)) { echo $instrumentCount82; } else { echo '0'; } ?> </td>
      </tr>

	   <tr style="background: #FFF7E1; ">
	 <td>60</td>
     <td> Palmyrah Research Institute</td>
     <td></td>
        <td><?php if(isset($departmentCount72)) { echo $departmentCount72; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount72)) { echo $laboratoryCount72; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount72)) { echo $usersCount72; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount72)) { echo $productCount72; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount72)) { echo $instrumentCount72; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	   
	  <tr>
	 <td>61</td>
     <td> Road Development Authority</td>
     <td></td>
        <td><?php if(isset($departmentCount63)) { echo $departmentCount63; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount63)) { echo $laboratoryCount63; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount63)) { echo $usersCount63; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount63)) { echo $productCount63; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount63)) { echo $instrumentCount63; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	   <tr style="background: #FFF7E1; ">
	 <td>62</td>
	 <td> Rubber Research Institute of Sri Lanka (RRI)</td>
     <td></td>
        <td><?php if(isset($departmentCount39)) { echo $departmentCount39; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount39)) { echo $laboratoryCount39; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount39)) { echo $usersCount39; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount39)) { echo $productCount39; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount39)) { echo $instrumentCount39; } else { echo '0'; } ?> </td>
      </tr> 
	  
	   <tr>
	 <td>63</td>
	 <td> SGS Lanka ( PVT) Ltd</td>
     <td></td>
        <td><?php if(isset($departmentCount60)) { echo $departmentCount60; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount60)) { echo $laboratoryCount60; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount60)) { echo $usersCount60; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount60)) { echo $productCount60; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount60)) { echo $instrumentCount60; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  
	  
	   <tr style="background: #FFF7E1; ">
	 <td>64</td>
     <td> Sri Lanka Atomic Energy Board</td>
	 <td></td>
      <td><?php if(isset($departmentCount55)) { echo $departmentCount55; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount55)) { echo $laboratoryCount55; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount55)) { echo $usersCount55; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount55)) { echo $productCount55; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount55)) { echo $instrumentCount55; } else { echo '0'; } ?> </td>
      </tr> 
	  

        <tr >
	 <td>65</td>
     <td> Sri Lanka Institute of Biotechnology</td>
	 <td></td>
      <td><?php if(isset($departmentCount79)) { echo $departmentCount79; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount79)) { echo $laboratoryCount79; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount79)) { echo $usersCount79; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount79)) { echo $productCount79; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount79)) { echo $instrumentCount79; } else { echo '0'; } ?> </td>
      </tr> 



	  
	    <tr style="background: #FFF7E1; ">
	 <td>66</td>
     <td> Sri Lanka Institute of Nanotechnology (SLINTEC)</td>
     <td></td>
        
        <td><?php if(isset($departmentCount54)) { echo $departmentCount54; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount54)) { echo $laboratoryCount54; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount54)) { echo $usersCount54; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount54)) { echo $productCount54; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount54)) { echo $instrumentCount54; } else { echo '0'; } ?> </td>
      </tr> 
	  


	    <tr >
	 <td>67</td>
     <td>   Sri Lanka Institute of Information Technology (SLIIT)</td>
     <td></td>
        
        <td><?php if(isset($departmentCount70)) { echo $departmentCount70; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount70)) { echo $laboratoryCount70; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount70)) { echo $usersCount70; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount70)) { echo $productCount70; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount70)) { echo $instrumentCount70; } else { echo '0'; } ?> </td>
      </tr> 
	  
      
	  
	   <tr style="background: #FFF7E1; ">
	 <td>68</td>
     <td>   Sri Lanka Institute of Textile & Apparel (SLITA)</td>
     <td></td>
        
        <td><?php if(isset($departmentCount67)) { echo $departmentCount67; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount67)) { echo $laboratoryCount67; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount67)) { echo $usersCount67; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount67)) { echo $productCount67; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount67)) { echo $instrumentCount67; } else { echo '0'; } ?> </td>
      </tr>
	  
	  
	  <tr >
	 <td>69</td>
     <td>  Sri Lanka Tea Board</td>
     <td></td>
        
        <td><?php if(isset($departmentCount57)) { echo $departmentCount57; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount57)) { echo $laboratoryCount57; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount57)) { echo $usersCount57; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount57)) { echo $productCount57; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount57)) { echo $instrumentCount57; } else { echo '0'; } ?> </td>
      </tr> 
	  
	
	 
	  
	    <tr style="background: #FFF7E1; ">
	 <td>70</td>
     <td> Sri Lanka Standards Institution (SLSI)</td>
    <td></td>
        <td><?php if(isset($departmentCount11)) { echo $departmentCount11; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount11)) { echo $laboratoryCount11; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount11)) { echo $usersCount11; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount11)) { echo $productCount11; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount11)) { echo $instrumentCount11; } else { echo '0'; } ?> </td>
      </tr>

<tr >
	 <td>71</td>
     <td> State Engineering Corporation</td>
    <td></td>
        <td><?php if(isset($departmentCount81)) { echo $departmentCount81; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount81)) { echo $laboratoryCount81; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount81)) { echo $usersCount81; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount81)) { echo $productCount81; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount81)) { echo $instrumentCount81; } else { echo '0'; } ?> </td>
      </tr>


<tr style="background: #FFF7E1; ">
	 <td>72</td>
     <td> State Pharmaceuticals corporation</td>
    <td></td>
        <td><?php if(isset($departmentCount62)) { echo $departmentCount62; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount62)) { echo $laboratoryCount62; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount62)) { echo $usersCount62; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount62)) { echo $productCount62; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount62)) { echo $instrumentCount62; } else { echo '0'; } ?> </td>
      </tr>

	  
	  
	    <tr >
	 <td>73</td>
     <td> Sugarcane Research Institute (SRI)</td>
    <td></td>
        <td><?php if(isset($departmentCount51)) { echo $departmentCount51; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount51)) { echo $laboratoryCount51; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount51)) { echo $usersCount51; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount51)) { echo $productCount51; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount51)) { echo $instrumentCount51; } else { echo '0'; } ?> </td>
      </tr> 
	  
	  <tr style="background: #FFF7E1; ">
	 <td >74</td>
     <td> Tea Research Institute of Sri Lanka (TRI)</td>
   <td></td>
        <td><?php if(isset($departmentCount16)) { echo $departmentCount16; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount16)) { echo $laboratoryCount16; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount16)) { echo $usersCount16; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount16)) { echo $productCount16; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount16)) { echo $instrumentCount16; } else { echo '0'; } ?> </td>
      </tr> 

<tr >
	 <td >75</td>
     <td>  The Adolescent and Adult Thalassemia Care Unit</td>
   <td></td>
        <td><?php if(isset($departmentCount76)) { echo $departmentCount76; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount76)) { echo $laboratoryCount76; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount76)) { echo $usersCount76; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount76)) { echo $productCount76; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount76)) { echo $instrumentCount76; } else { echo '0'; } ?> </td>
      </tr> 
     
	  
	  <tr style="background: #FFF7E1; ">
	 <td>76</td>
     <td> Veterinary Research Institute</td>
   <td></td>
        <td><?php if(isset($departmentCount38)) { echo $departmentCount38; } else { echo '0'; } ?></td>
		 		  <td><?php if(isset($laboratoryCount38)) { echo $laboratoryCount38; } else { echo '0'; } ?></td>
		   <td><?php if(isset($usersCount38)) { echo $usersCount38; } else { echo '0'; } ?></td>
		    <td><?php if(isset($productCount38)) { echo $productCount38; } else { echo '0'; } ?></td>
			 <td>  <?php if(isset($instrumentCount38)) { echo $instrumentCount38; } else { echo '0'; } ?> </td>
      </tr> 
	
	 
    </tbody>
  </table>

</section>


<script>
(function(document) {
  'use strict';

  var LightTableFilter = (function(Arr) {

    var _input;

    function _onInputEvent(e) {
      _input = e.target;
      var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
      Arr.forEach.call(tables, function(table) {
        Arr.forEach.call(table.tBodies, function(tbody) {
          Arr.forEach.call(tbody.rows, _filter);
        });
      });
    }

    function _filter(row) {
      var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
      row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
    }

    return {
      init: function() {
        var inputs = document.getElementsByClassName('light-table-filter');
        Arr.forEach.call(inputs, function(input) {
          input.oninput = _onInputEvent;
        });
      }
    };
  })(Array.prototype);

  document.addEventListener('readystatechange', function() {
    if (document.readyState === 'complete') {
      LightTableFilter.init();
    }
  });

})(document);

</script>





</br>
</br>








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