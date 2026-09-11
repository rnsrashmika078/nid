<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>
    <?php echo $pageTitle; ?>
  </title>
  <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  <!-- Bootstrap 3.3.4 -->
  <link href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <!-- FontAwesome 4.3.0 -->
  <link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <!-- Ionicons 2.0.0 -->
  <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
  <!-- Theme style -->
  <link href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
  <!-- Datatables style -->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.16/af-2.2.2/b-1.5.1/b-colvis-1.5.1/b-flash-1.5.1/b-html5-1.5.1/b-print-1.5.1/cr-1.4.1/fc-3.2.4/fh-3.1.3/kt-2.3.2/r-2.2.1/rg-1.0.2/rr-1.2.3/sc-1.4.4/sl-1.2.5/datatables.min.css"
  />
  <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
  <link href="<?php echo base_url(); ?>assets/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
  <style>
    .error {
      color: red;
      font-weight: normal;
    }
  </style>
  <!-- jQuery 2.1.4 -->
  <script src="<?php echo base_url(); ?>assets/js/jQuery-2.1.4.min.js"></script>
  <script type="text/javascript">
    var baseURL = "<?php echo base_url(); ?>";
  </script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body  style=" background-color:#FFFFFF  ;">
  <div class="wrapper" >

    <header class="main-header"  >
      <!-- Logo 
      <a href="<?php echo base_url(); ?>" class="logo" >-->
	  <a href="#" class="logo"  style=" height:85px; ">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini">
          <b>NIDB</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg" >
          <b><img src="<?=base_url(); ?>catalogUploads/nsf_logo.png" alt="logo" > </b></span>
      </a>
      <!-- Header Navbar: style can be found in header.less -->
      <nav class="navbar navbar-static-top" role="navigation" >
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
          <span class="sr-only">Toggle navigation</span>
		          </a>
		
		 
                    
                        <div class="col-lg-9"  >
                    <div class="section_tittle text-center" style=" height:90px; color:#070300; ">
                        <!--<h2 style="font-size:48px;"><b>National Instrument Database</b></h2>-->
						</br>
						<span style="color:#050300; font-size:42px;"><B>National Instrument Database</B></span>
                    </div>
                </div>
                   
                
				
				
        <div class="navbar-custom-menu" >
          <ul class="nav navbar-nav">
            <li class="dropdown tasks-menu" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                <i class="fa fa-history"></i>
              </a>
              <ul class="dropdown-menu" >
                <li class="header" > Last Login :
                  <i class="fa fa-clock-o"></i>
                  <?= empty($last_login) ? "First Login" : $last_login; ?>
                </li>
              </ul>
            </li>
            <!-- User Account: style can be found in dropdown.less -->
            <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="<?php echo base_url(); ?>assets/dist/img/admin.jpg" class="user-image" alt="User Image" />
                <span class="hidden-xs">
                  <?php echo $name; ?>
                </span>
              </a>
              <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header">
                  <img src="<?php echo base_url(); ?>assets/dist/img/admin.jpg" class="img-circle" alt="User Image" />
                  <p style="  color:#070300; ">
                    <?php echo $name; ?>
                    <small>
                      <?php echo $role_text; ?>
                    </small>
                  </p>
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="<?php echo base_url(); ?>loadChangePass" class="btn btn-default btn-flat">
                      <i class="fa fa-key"></i> Change Password</a>
                    <a href="<?php echo base_url(); ?>userEdit" class="btn btn-default btn-flat">
                      <i class="fa fa-key"></i> Account settings </a>
                  </div>
                  <div class="pull-right">
                    <a href="<?php echo base_url(); ?>logout" class="btn btn-default btn-flat">
                      <i class="fa fa-sign-out"></i> Sign Out</a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar" >
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar" style="background-color:#FFFFFF ; color: #000000; margin-top:35px;">
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu"  ">
          <li class="header">
          </li>
		  
		 <!-- 
		  <li class="treeview">
            <a href="<?php echo base_url(); ?>home">
			
              <i></i>
              <span style="color:#050300; font-size:18px;"><img src="<?=base_url(); ?>layout/img/home1.png" width="50px" height="50px"/> IDB Home</span>
			  
              </i>
            </a>
          </li>-->
		  
		   
		  
		  
          <li class="treeview">
            <a href="<?php echo base_url(); ?>dashboard">
			
               <i> <img src="<?=base_url(); ?>layout/img/ds.png" width="50px" height="50px"/></i>
              <span style="color:#050300; font-size:18px;">Dashboard</span>
			  
              </i>
            </a>
          </li>
		  
		  
		  
		
		 	  
		  
          <?php
            // Rol definetion in application/config/constants.php
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN)
            {
            ?>

               <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?=base_url(); ?>layout/img/bank.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutes</span>
              </a>
            </li>
		
      <!--
            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstitute">
                <i class="fa fa-plus-circle"></i>
                <span>Add Institute</span>
              </a>
            </li> -->

                <li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
                <i> <img src="<?=base_url(); ?>layout/img/graduation-hat.svg"/></i>
                <span style="color:#050300; font-size:18px;">Faculties</span>
              </a>
            </li>
           <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addFaculty">
                <i class="fa fa-plus-circle"></i>
                <span>Add Faculty</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
                <i> <img src="<?=base_url(); ?>layout/img/structure.svg"/></i>
                <span style="color:#050300; font-size:18px;">Departments</span>
              </a>
            </li>
             <!--<li class="treeview">
              <a href="<?php echo base_url(); ?>addDepartment">
                <i class="fa fa-plus-circle"></i>
                <span>Add Department</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                <i> <img src="<?=base_url(); ?>layout/img/laboratory.svg"/></i>
                <span style="color:#050300; font-size:18px;">Laboratories</span>
              </a>
            </li>
            <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addLaboratory">
                <i class="fa fa-plus-circle"></i>
                <span>Add Laboratory</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>userListing">
               <i> <img src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">Users</span>
              </a>
            </li>
          <!--  <li class="treeview">
              <a href="<?php echo base_url(); ?>addNew">
                <i class="fa fa-plus-circle"></i>
                <span>Add User</span>
              </a>
            </li>-->

<li class="treeview">
              <a href="<?php echo base_url(); ?>unactivatedUser">
               <i> <img src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">New Registerd Users</span>
              </a>
            </li>

                <li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">Product Categories</span>
              </a>
            </li>
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">All Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                <span style="color:#050300; font-size:18px;">Instruments</span>
              </a>
            </li>
			
			
					 
					 
					  <li class="treeview">
               <!--  <a href="<?php echo base_url(); ?>einstruments">-->
           <a href="<?php echo base_url(); ?>einstruments" target="_blank">
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;" >All Instruments View</span>
                  </a>
				     </li>
					 
					 
            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstrument">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/pl.png" width="22px" height="22px"/><img src="<?=base_url(); ?>layout/img/machine.svg" width="28px" height="28px"/></i>
                <span style="color:#050300; font-size:18px;">Add Instrument</span>
              </a>
            </li>



            <li class="treeview">
              <a href="<?php echo base_url(); ?>log-history">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/log.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">Log Records</span>
              </a>
            </li>
            <li class="treeview">
              <a href="<?php echo base_url(); ?>log-history-upload">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/db.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">Download Backup</span>
              </a>
            </li>
            <li class="treeview">
              <a href="<?php echo base_url(); ?>log-history-backup">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/lrb.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">Log Records Backup</span>
              </a>
            </li>

             <li class="treeview">
              <a href="<?php echo base_url(); ?>feedbackListing">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">User Feedbacks</span>
              </a>
            </li>

<li class="treeview">
              <a href="<?php echo base_url(); ?>homenewsListing">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/home_news.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">Home News</span>
              </a>
            </li>
			
			
			 <?php
          }
          if($role == ROLE_NSF_AUDIT)
          {
          ?>
			 
 <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                 <i> <img src="<?=base_url(); ?>layout/img/bank.svg"/></i>
                <span style="color:#050300; font-size:18px; ">Institutes</span>
              </a>
            </li>
      <!--
            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstitute">
                <i class="fa fa-plus-circle"></i>
                <span>Add Institute</span>
              </a>
            </li> -->

                <li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
               <i> <img src="<?=base_url(); ?>layout/img/graduation-hat.svg"/></i>
                <span style="color:#050300; font-size:18px;">Faculties</span>
              </a>
            </li>
           <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addFaculty">
                <i class="fa fa-plus-circle"></i>
                <span>Add Faculty</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
                <i> <img src="<?=base_url(); ?>layout/img/structure.svg"/></i>
                <span style="color:#050300; font-size:18px;">Departments</span>
              </a>
            </li>
             <!--<li class="treeview">
              <a href="<?php echo base_url(); ?>addDepartment">
                <i class="fa fa-plus-circle"></i>
                <span>Add Department</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                 <i> <img src="<?=base_url(); ?>layout/img/laboratory.svg"/></i>
                <span style="color:#050300; font-size:18px;">Laboratories</span>
              </a>
            </li>
            <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addLaboratory">
                <i class="fa fa-plus-circle"></i>
                <span>Add Laboratory</span>
              </a>
            </li>-->


               

             <li class="treeview">
            <a href="<?php echo base_url(); ?>userListing">
               <i> <img src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
              <span style="color:#050300; font-size:18px;">Users</span>
            </a>
          </li>
          <!-- <li class="treeview">
            <a href="<?php echo base_url(); ?>addNew">
              <i class="fa fa-plus-circle"></i>
              <span>Add User</span>
            </a>
          </li>-->


			 <li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing" >
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">Product Categories</span>
              </a>
            </li>


       <li class="treeview">
                <a href="<?php echo base_url(); ?>instrumentListing">
           <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">Instruments</span>
                  </a>
				     </li>
					 
					 
					
		  
      

            <?php
          }
          if($role == ROLE_INSTITUTE_MANAGER)
          {
          ?>


             <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                 <i> <img src="<?=base_url(); ?>layout/img/bank.svg"/></i>
                <span style="color:#050300; font-size:18px; ">Institutes</span>
              </a>
            </li>
      <!--
            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstitute">
                <i class="fa fa-plus-circle"></i>
                <span>Add Institute</span>
              </a>
            </li> -->

                <li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
               <i> <img src="<?=base_url(); ?>layout/img/graduation-hat.svg"/></i>
                <span style="color:#050300; font-size:18px;">Faculties</span>
              </a>
            </li>
           <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addFaculty">
                <i class="fa fa-plus-circle"></i>
                <span>Add Faculty</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
                <i> <img src="<?=base_url(); ?>layout/img/structure.svg"/></i>
                <span style="color:#050300; font-size:18px;">Departments</span>
              </a>
            </li>
             <!--<li class="treeview">
              <a href="<?php echo base_url(); ?>addDepartment">
                <i class="fa fa-plus-circle"></i>
                <span>Add Department</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                 <i> <img src="<?=base_url(); ?>layout/img/laboratory.svg"/></i>
                <span style="color:#050300; font-size:18px;">Laboratories</span>
              </a>
            </li>
            <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addLaboratory">
                <i class="fa fa-plus-circle"></i>
                <span>Add Laboratory</span>
              </a>
            </li>-->


               

             <li class="treeview">
            <a href="<?php echo base_url(); ?>userListing">
               <i> <img src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
              <span style="color:#050300; font-size:18px;">Users</span>
            </a>
          </li>
          <!-- <li class="treeview">
            <a href="<?php echo base_url(); ?>addNew">
              <i class="fa fa-plus-circle"></i>
              <span>Add User</span>
            </a>
          </li>-->

 <li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
                 <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutional Product Categories</span>
              </a>
            </li>
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">All Product Categories</span>
              </a>
            </li>


       <li class="treeview">
                <a href="<?php echo base_url(); ?>instrumentListing">
           <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">Institutional Instruments</span>
                  </a>
				     </li>
					 
					 
					  <li class="treeview">
               <!--  <a href="<?php echo base_url(); ?>einstruments">-->
           <a href="<?php echo base_url(); ?>einstruments" target="_blank">
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">All Instruments</span>
                  </a>
				     </li>

        <!--  <li class="treeview">
            <a href="<?php echo base_url(); ?>addInstrument">
              <i class="fa fa-plus-circle"></i>
              <span>Add Instrument</span>
            </a>
          </li>-->
		  
		   <li class="treeview">
              <a href="<?php echo base_url(); ?>feedbackListing">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">User Feedbacks</span>
              </a>
            </li>
		  
		  
		  


   <?php
          }
          if($role == ROLE_FACULTY_MANAGER)
          {
          ?>


             <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                 <i> <img src="<?=base_url(); ?>layout/img/bank.svg"/></i>
                <span style="color:#050300; font-size:18px; ">Institutes</span>
              </a>
            </li>
      <!--
            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstitute">
                <i class="fa fa-plus-circle"></i>
                <span>Add Institute</span>
              </a>
            </li> -->

                <li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
               <i> <img src="<?=base_url(); ?>layout/img/graduation-hat.svg"/></i>
                <span style="color:#050300; font-size:18px;">Faculties</span>
              </a>
            </li>
           <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addFaculty">
                <i class="fa fa-plus-circle"></i>
                <span>Add Faculty</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
                <i> <img src="<?=base_url(); ?>layout/img/structure.svg"/></i>
                <span style="color:#050300; font-size:18px;">Departments</span>
              </a>
            </li>
             <!--<li class="treeview">
              <a href="<?php echo base_url(); ?>addDepartment">
                <i class="fa fa-plus-circle"></i>
                <span>Add Department</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                 <i> <img src="<?=base_url(); ?>layout/img/laboratory.svg"/></i>
                <span style="color:#050300; font-size:18px;">Laboratories</span>
              </a>
            </li>
            <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addLaboratory">
                <i class="fa fa-plus-circle"></i>
                <span>Add Laboratory</span>
              </a>
            </li>-->


               

             <li class="treeview">
            <a href="<?php echo base_url(); ?>userListing">
               <i> <img src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
              <span style="color:#050300; font-size:18px;">Users</span>
            </a>
          </li>
          <!-- <li class="treeview">
            <a href="<?php echo base_url(); ?>addNew">
              <i class="fa fa-plus-circle"></i>
              <span>Add User</span>
            </a>
          </li>-->

 <li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
                 <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutional Product Categories</span>
              </a>
            </li>
 <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">All Product Categories</span>
              </a>
            </li>

         <li class="treeview">
                <a href="<?php echo base_url(); ?>instrumentListing">
           <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">Institutional Instruments</span>
                  </a>
				     </li>
					 
					 
					  <li class="treeview">
               <!--  <a href="<?php echo base_url(); ?>einstruments">-->
           <a href="<?php echo base_url(); ?>einstruments" target="_blank">
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">All Instruments</span>
                  </a>
				     </li>

        <!--  <li class="treeview">
            <a href="<?php echo base_url(); ?>addInstrument">
              <i class="fa fa-plus-circle"></i>
              <span>Add Instrument</span>
            </a>
          </li>-->


 <li class="treeview">
              <a href="<?php echo base_url(); ?>feedbackListing">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">User Feedbacks</span>
              </a>
            </li>


          <?php
        }
        if($role == ROLE_DIVISION_MANAGER)
        {
        ?>

         <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?=base_url(); ?>layout/img/bank.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutes</span>
              </a>
            </li>
      <!--
            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstitute">
                <i class="fa fa-plus-circle"></i>
                <span>Add Institute</span>
              </a>
            </li> -->





                <li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
                 <i> <img src="<?=base_url(); ?>layout/img/graduation-hat.svg"/></i>
                <span style="color:#050300; font-size:18px;">Faculties</span>
              </a>
            </li>
			
			
           <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addFaculty">
                <i class="fa fa-plus-circle"></i>
                <span>Add Faculty</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
              <i> <img src="<?=base_url(); ?>layout/img/structure.svg"/></i>
                <span style="color:#050300; font-size:18px;">Departments</span>
              </a>
            </li>
             <!--<li class="treeview">
              <a href="<?php echo base_url(); ?>addDepartment">
                <i class="fa fa-plus-circle"></i>
                <span>Add Department</span>
              </a>
            </li>-->


      <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                <i> <img src="<?=base_url(); ?>layout/img/laboratory.svg"/></i>
                <span style="color:#050300; font-size:18px;">Laboratories</span>
              </a>
            </li>
            <!-- <li class="treeview">
              <a href="<?php echo base_url(); ?>addLaboratory">
                <i class="fa fa-plus-circle"></i>
                <span>Add Laboratory</span>
              </a>
            </li>-->



             <li class="treeview">
            <a href="<?php echo base_url(); ?>userListing">
              <i> <img src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
              <span style="color:#050300; font-size:18px;">Users</span>
            </a>
          </li>
       <!--   <li class="treeview">
            <a href="<?php echo base_url(); ?>addNew">
              <i class="fa fa-plus-circle"></i>
              <span>Add User</span>
            </a>
          </li>-->


<li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
                 <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutional Product Categories</span>
              </a>
            </li>
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">All Product Categories</span>
              </a>
            </li>

       <li class="treeview">
                <a href="<?php echo base_url(); ?>instrumentListing">
           <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">Institutional Instruments</span>
                  </a>
				     </li>
					 
					 
					  <li class="treeview">
               <!--  <a href="<?php echo base_url(); ?>einstruments">-->
           <a href="<?php echo base_url(); ?>einstruments" target="_blank">
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">All Instruments</span>
                  </a>
				     </li>

        <!--  <li class="treeview">
            <a href="<?php echo base_url(); ?>addInstrument">
              <i class="fa fa-plus-circle"></i>
              <span>Add Instrument</span>
            </a>
          </li>-->

 <li class="treeview">
              <a href="<?php echo base_url(); ?>feedbackListing">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">User Feedbacks</span>
              </a>
            </li>
			
			


                  <?php
                }
                if($role == ROLE_ADMINISTRATIVE_INCHARGE)
                {
                ?>
				
				
				<li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?=base_url(); ?>layout/img/bank.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutes</span>
              </a>
            </li>
			
			
			<li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
                 <i> <img src="<?=base_url(); ?>layout/img/graduation-hat.svg"/></i>
                <span style="color:#050300; font-size:18px;">Faculties</span>
              </a>
            </li>
			
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
              <i> <img src="<?=base_url(); ?>layout/img/structure.svg"/></i>
                <span style="color:#050300; font-size:18px;">Departments</span>
              </a>
            </li>
			
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                <i> <img src="<?=base_url(); ?>layout/img/laboratory.svg"/></i>
                <span style="color:#050300; font-size:18px;">Laboratories</span>
              </a>
            </li>
			
			
			<li class="treeview">
            <a href="<?php echo base_url(); ?>userListing">
              <i> <img src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
              <span style="color:#050300; font-size:18px;">Users</span>
            </a>
          </li>
				
				<li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutional Product Categories</span>
              </a>
            </li>
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">All Product Categories</span>
              </a>
            </li>

<li class="treeview">
              <a href="<?php echo base_url(); ?>addCategory">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/pl.png" width="22px" height="22px"/><img  src="<?=base_url(); ?>layout/img/box.svg" width="28px" height="28px"/></i>
                <span style="color:#050300; font-size:18px;">Add Product Categoy</span>
              </a>
            </li>

             <li class="treeview">
                <a href="<?php echo base_url(); ?>instrumentListing">
           <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">Institutional Instruments</span>
                  </a>
				     </li>
					 
					 
					  <li class="treeview">
               <!--  <a href="<?php echo base_url(); ?>einstruments">-->
           <a href="<?php echo base_url(); ?>einstruments" target="_blank">
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">All Instruments</span>
                  </a>
				     </li>
					 
		<li class="treeview">
              <a href="<?php echo base_url(); ?>addInstrument">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/pl.png" width="22px" height="22px"/><img src="<?=base_url(); ?>layout/img/machine.svg" width="28px" height="28px"/></i>
                <span style="color:#050300; font-size:18px;">Add Instrument</span>
              </a>
            </li>
      <!--  <li class="treeview">
        <a href="<?php echo base_url(); ?>addInstrument">
          <i class="fa fa-plus-circle"></i>
          <span>Add Instrument</span>
        </a>
        </li>-->

               <!-- <li class="treeview">
                  <a href="<?php echo base_url(); ?>userListing">
                    <i class="fa fa-users"></i>
                    <span style="color:#FFFFFF; font-size:18px;">Users</span>
                  </a>
                </li>-->
              <!--  <li class="treeview">
                  <a href="<?php echo base_url(); ?>addNew">
                    <i class="fa fa-plus-circle"></i>
                    <span>Add User</span>
                  </a>
                </li>-->
				
				
				 <li class="treeview">
              <a href="<?php echo base_url(); ?>feedbackListing">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">User Feedbacks</span>
              </a>
            </li>
			
			


                <?php
              }
              if($role == ROLE_TECHNICAL_INCHARGE)
              {
              ?>
			  
			  <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?=base_url(); ?>layout/img/bank.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutes</span>
              </a>
            </li>
			
			
			<li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
                 <i> <img src="<?=base_url(); ?>layout/img/graduation-hat.svg"/></i>
                <span style="color:#050300; font-size:18px;">Faculties</span>
              </a>
            </li>
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
              <i> <img src="<?=base_url(); ?>layout/img/structure.svg"/></i>
                <span style="color:#050300; font-size:18px;">Departments</span>
              </a>
            </li>
			
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                <i> <img src="<?=base_url(); ?>layout/img/laboratory.svg"/></i>
                <span style="color:#050300; font-size:18px;">Laboratories</span>
              </a>
            </li>
			
			
			<li class="treeview">
            <a href="<?php echo base_url(); ?>userListing">
              <i> <img src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
              <span style="color:#050300; font-size:18px;">Users</span>
            </a>
          </li>
		  
		  
<li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutional Product Categories</span>
              </a>
            </li>
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">All Product Categories</span>
              </a>
            </li>
			
			
			<li class="treeview">
              <a href="<?php echo base_url(); ?>addCategory">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/pl.png" width="22px" height="22px"/><img src="<?=base_url(); ?>layout/img/box.svg" width="28px" height="28px"/></i>
                <span style="color:#050300; font-size:18px;">Add Categories</span>
              </a>
            </li>
			
			
            
			  
			  <li class="treeview">
                <a href="<?php echo base_url(); ?>instrumentListing">
           <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">Institutional Instruments</span>
                  </a>
				     </li>
					 
					 
					  <li class="treeview">
               <!--  <a href="<?php echo base_url(); ?>einstruments">-->
           <a href="<?php echo base_url(); ?>einstruments" target="_blank">
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">All Instruments</span>
                  </a>
				     </li>
					 
			  
              <li class="treeview">
                <a href="<?php echo base_url(); ?>addInstrument">
                 <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/pl.png" width="22px" height="22px"/><img src="<?=base_url(); ?>layout/img/machine.svg" width="28px" height="28px"/></i>
                  <span style="color:#050300; font-size:18px;">Add Instrument</span>
                </a>
              </li>
			  
			  
			   <li class="treeview">
              <a href="<?php echo base_url(); ?>feedbackListing">
                <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>
                <span style="color:#050300; font-size:18px;">User Feedbacks</span>
              </a>
            </li>
			
			
		

            
			

              <?php
            }
            if($role == ROLE_EQUIPMENT_USER)
            {
            ?>
			
			<!--<li class="treeview">
              <a href="<?php echo base_url(); ?>ecategories">
                <i class="fa fa-tasks"></i>
                <span style="color:#FFFFFF; font-size:18px;">Product Categories</span>
              </a>
            </li>-->
			
			<li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">Institutional Product Categories</span>
              </a>
            </li>
			
			 <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
               <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
                <span style="color:#050300; font-size:18px;">All Product Categories</span>
              </a>
            </li>
			
                <li class="treeview">
                <a href="<?php echo base_url(); ?>instrumentListing">
           <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">Institutional Instruments</span>
                  </a>
				     </li>
					 
					 
					  <li class="treeview">
               <!--  <a href="<?php echo base_url(); ?>einstruments">-->
           <a href="<?php echo base_url(); ?>einstruments" target="_blank">
                   
                    <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
                    <span style="color:#050300; font-size:18px;">All Instruments</span>
                  </a>
				     </li>
					 
					 
					 
					 
                  <?php
            }
            ?>
        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>