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
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.16/af-2.2.2/b-1.5.1/b-colvis-1.5.1/b-flash-1.5.1/b-html5-1.5.1/b-print-1.5.1/cr-1.4.1/fc-3.2.4/fh-3.1.3/kt-2.3.2/r-2.2.1/rg-1.0.2/rr-1.2.3/sc-1.4.4/sl-1.2.5/datatables.min.css" />
  <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
  <link href="<?php echo base_url(); ?>assets/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
  <style>
  .error {
    color: red;
    font-weight: normal;
  }

  /* =========================================================
     HEADER
     ========================================================= */
  .main-header {
    background-color: #ffffff;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.12);
    z-index: 1030;
  }

  .main-header > .logo {
    height: 64px;
    line-height: 64px;
    background-color: #ffffff;
    border-right: 1px solid #eef1f4;
    padding: 0 10px;
    overflow: hidden;
  }

  .main-header > .logo img {
    display: inline-block;
    max-width: 210px;
    max-height: 48px;
    width: auto;
    height: auto;
    vertical-align: middle;
  }

  .main-header > .navbar {
    min-height: 64px;
    background-color: #ffffff;
  }

  .main-header > .navbar .sidebar-toggle {
    width: 54px;
    height: 64px;
    padding: 0;
    line-height: 64px;
    text-align: center;
    color: #55595c;
    border-right: 1px solid #eef1f4;
  }

  .main-header > .navbar .sidebar-toggle:hover {
    background-color: #f4f6f9;
    color: #2c3e50;
  }

  /* Centered page title */
  .navbar-title {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 54px;
    right: 170px;
    display: flex;
    align-items: center;
    justify-content: center;
    pointer-events: none;
  }

  .navbar-title .inner-title {
    max-width: 100%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 24px;
    font-weight: 700;
    color: #2c3e50;
    letter-spacing: 0.5px;
  }

  .main-header .navbar-custom-menu {
    z-index: 10;
    margin-right: 8px;
  }

  .main-header .navbar .navbar-nav > li > a {
    color: #55595c;
    padding-top: 20px;
    padding-bottom: 20px;
  }

  .main-header .navbar .navbar-nav > li > a:hover,
  .main-header .navbar .navbar-nav > li > a:focus,
  .main-header .navbar .navbar-nav > .open > a,
  .main-header .navbar .navbar-nav > .open > a:hover,
  .main-header .navbar .navbar-nav > .open > a:focus {
    color: #2c3e50;
    background-color: #f4f6f9;
  }

  /* =========================================================
     SIDEBAR - CONSISTENT SIZE / ALIGNMENT / NO OVERFLOW
     ========================================================= */
  .main-sidebar {
    background-color: #ffffff;
    overflow-x: hidden;
  }

  .sidebar {
    padding-top: 16px;
    padding-bottom: 30px;
    overflow-x: hidden;
  }

  .sidebar-menu {
    width: 100%;
    margin: 0;
    padding: 0;
    list-style: none;
  }

  .sidebar-menu li.header {
    display: none;
  }

  /* Every sidebar item uses the same box dimensions */
  .sidebar-menu > li {
    width: 100%;
    margin: 0;
    padding: 0;
  }

  .sidebar-menu > li > a {
    display: flex;
    align-items: center;
    width: 100%;
    min-height: 52px;
    box-sizing: border-box;
    padding: 8px 14px 8px 12px;
    margin: 0;
    color: #3d4652;
    background: transparent;
    border-left: 3px solid transparent;
    text-decoration: none;
    overflow: hidden;
    transition: background-color 0.18s ease, color 0.18s ease,
                border-color 0.18s ease;
  }

  /* Fixed icon area: all text starts at exactly the same position */
  .sidebar-menu > li > a > i {
    flex: 0 0 42px !important;
    width: 42px !important;
    min-width: 42px !important;
    max-width: 42px !important;
    height: 36px !important;
    min-height: 36px !important;
    max-height: 36px !important;
    margin: 0 10px 0 0 !important;
    padding: 0 !important;
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    box-sizing: border-box !important;
    line-height: 1 !important;
    font-size: 18px;
    font-style: normal;
    overflow: hidden;
  }

  /* Normalize every icon image, including old inline width/height values */
  .sidebar-menu > li > a > i img {
    display: block;
    width: 30px !important;
    height: 30px !important;
    max-width: 30px !important;
    max-height: 30px !important;
    min-width: 0 !important;
    min-height: 0 !important;
    object-fit: contain;
    margin: 0 !important;
    padding: 0 !important;
  }

  /* Combined + and icon */
  .sidebar-menu > li > a > i img + img {
    width: 26px !important;
    height: 26px !important;
    max-width: 26px !important;
    max-height: 26px !important;
    margin-left: -5px !important;
  }

  /* Sidebar text */
  .sidebar-menu > li > a > span {
    flex: 1 1 auto;
    min-width: 0;
    display: block;
    margin: 0;
    padding: 0;
    color: #3d4652 !important;
    font-size: 15px !important;
    font-weight: 500;
    line-height: 1.25 !important;
    white-space: normal;
    overflow-wrap: anywhere;
    word-break: normal;
  }

  .sidebar-menu > li > a:hover {
    background-color: #f4f6f9;
    border-left-color: #00a65a;
    color: #2c3e50;
  }

  .sidebar-menu > li > a:hover > span {
    color: #2c3e50 !important;
  }

  .sidebar-menu > li.active > a {
    background-color: #00a65a;
    border-left-color: #ffffff;
    color: #ffffff;
  }

  .sidebar-menu > li.active > a > span {
    color: #ffffff !important;
  }

  /* Keep the sidebar usable on narrow screens */
  .sidebar-menu > li > a:focus {
    outline: none;
  }

  /* =========================================================
     USER DROPDOWN
     ========================================================= */
  .user-menu .user-image {
    width: 30px;
    height: 30px;
    object-fit: cover;
  }

  /* =========================================================
     TECHNICIAN MODULE (SSO to inst-care)
     ========================================================= */
  .tech-module-nav {
    display: flex;
    align-items: center;
  }

  .tech-module-nav .tech-module-btn {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    height: 38px;
    padding: 0 14px;
    margin-top: 13px;
    background-color: #fff7ec;
    color: #c96f00;
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 0.4px;
    text-transform: uppercase;
    text-decoration: none !important;
    white-space: nowrap;
    border: 1px solid #ee9310;
    border-radius: 8px;
    transition: background-color 0.3s ease, color 0.3s ease;
  }

  .tech-module-nav .tech-module-btn:hover,
  .tech-module-nav .tech-module-btn:focus {
    background-color: #ee9310;
    color: #ffffff;
  }

  @media (max-width: 991px) {
    .tech-module-nav {
      margin: 0;
    }

    .tech-module-nav .tech-module-btn {
      margin-top: 0;
      height: 34px;
      padding: 0 10px;
      font-size: 12px;
    }
  }

  .user-footer .btn {
    margin-bottom: 4px;
  }

  /* =========================================================
     RESPONSIVE HEADER + SIDEBAR
     ========================================================= */
  @media (max-width: 1300px) {
    .navbar-title .inner-title {
      font-size: 20px;
    }
  }

  @media (max-width: 991px) {
    .main-header {
      position: relative;
      height: 56px;
      display: flex;
      align-items: stretch;
      box-shadow: 0 1px 4px rgba(0, 0, 0, 0.12);
    }

    .main-header > .logo {
      flex: 0 0 56px;
      width: 56px;
      height: 56px;
      line-height: 56px;
      padding: 0;
      float: none;
      font-size: 16px;
      font-weight: 700;
      color: #2c3e50;
      border-right: 1px solid #eef1f4;
      text-align: center;
    }

    .main-header > .logo .logo-lg {
      display: none;
    }

    .main-header > .logo .logo-mini {
      display: block;
    }

    .main-header > .navbar {
      flex: 1 1 auto;
      margin: 0;
      width: auto;
      height: 56px;
      min-height: 56px;
      float: none;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .main-header > .navbar .sidebar-toggle {
      width: 52px;
      height: 56px;
      line-height: 56px;
      padding: 0;
      font-size: 18px;
      border-right: 1px solid #eef1f4;
    }

    .main-header > .navbar .navbar-custom-menu {
      float: none;
      margin-left: auto;
      margin-right: 4px;
    }

    .main-header > .navbar .navbar-nav > li > a {
      padding-top: 15px;
      padding-bottom: 15px;
      line-height: 26px;
    }

    .navbar-title {
      display: none;
    }

    .main-sidebar,
    .left-side {
      padding-top: 56px !important;
    }

    .sidebar {
      padding-top: 8px;
    }

    .sidebar-menu > li > a {
      min-height: 50px;
      padding: 7px 12px 7px 10px;
    }

    .sidebar-menu > li > a > i {
      flex-basis: 40px !important;
      width: 40px !important;
      min-width: 40px !important;
      max-width: 40px !important;
      margin-right: 9px !important;
    }

    .sidebar-menu > li > a > span {
      font-size: 14px !important;
    }
  }

  /* Very small screens */
  @media (max-width: 480px) {
    .sidebar-menu > li > a {
      min-height: 48px;
      padding-left: 8px;
      padding-right: 8px;
    }

    .sidebar-menu > li > a > i {
      flex-basis: 36px !important;
      width: 36px !important;
      min-width: 36px !important;
      max-width: 36px !important;
      margin-right: 8px !important;
    }

    .sidebar-menu > li > a > i img {
      width: 27px !important;
      height: 27px !important;
      max-width: 27px !important;
      max-height: 27px !important;
    }

    .sidebar-menu > li > a > span {
      font-size: 13px !important;
    }
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

<body style="background-color:#f4f6f9;">
  <div class="wrapper">

    <header class="main-header">
      <!-- Logo -->
      <a href="#" class="logo" title="National Instrument Database">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>NIDB</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b><img src="<?= base_url(); ?>catalogUploads/nsf_logo.png" alt="logo"></b></span>
      </a>
      <!-- Header Navbar: style can be found in header.less -->
      <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
          <span class="sr-only">Toggle navigation</span>
        </a>

        <!-- Centered page title -->
        <div class="navbar-title">
          <span class="inner-title">National Instrument Database</span>
        </div>

        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <li class="tech-module-nav">
              <a href="<?= base_url('sso/technician'); ?>"
                class="tech-module-btn"
                title="Go to Technician / Inst-Care Module (no separate login)">
                <i class="fa fa-wrench" aria-hidden="true"></i>
                Technician Module
              </a>
            </li>
            <li class="dropdown tasks-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                <i class="fa fa-history"></i>
              </a>
              <ul class="dropdown-menu">
                <li class="header"> Last Login :
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
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">
        <!-- sidebar menu -->
        <ul class="sidebar-menu">
          <li class="header">
          </li>

          <!-- 
		  <li class="treeview">
            <a href="<?php echo base_url(); ?>home">
			
              <i></i>
              <span><img src="<?= base_url(); ?>layout/img/home1.png"/> IDB Home</span>
			  
              </a>
          </li>-->




          <li class="treeview">
            <a href="<?php echo base_url(); ?>dashboard">

              <i> <img src="<?= base_url(); ?>layout/img/ds.png" /></i>
              <span>Dashboard</span>

              </a>
          </li>






          <?php
          // Rol definetion in application/config/constants.php
          if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN) {
          ?>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?= base_url(); ?>layout/img/bank.svg" /></i>
                <span>Institutes</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/graduation-hat.svg" /></i>
                <span>Faculties</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/structure.svg" /></i>
                <span>Departments</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/laboratory.svg" /></i>
                <span>Laboratories</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>Users</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>New Registerd Users</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>All Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Instruments</span>
              </a>
            </li>




            <li class="treeview">
              <!--  <a href="<?php echo base_url(); ?>einstruments">-->
              <a href="<?php echo base_url(); ?>einstruments" target="_blank">

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>All Instruments View</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstrument">
                <i> <img src="<?= base_url(); ?>layout/img/pl.png" /><img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Add Instrument</span>
              </a>
            </li>



            <li class="treeview">
              <a href="<?php echo base_url(); ?>log-history">
                <i> <img src="<?= base_url(); ?>layout/img/log.png" /></i>
                <span>Log Records</span>
              </a>
            </li>
            <li class="treeview">
              <a href="<?php echo base_url(); ?>log-history-upload">
                <i> <img src="<?= base_url(); ?>layout/img/db.png" /></i>
                <span>Download Backup</span>
              </a>
            </li>
            <li class="treeview">
              <a href="<?php echo base_url(); ?>log-history-backup">
                <i> <img src="<?= base_url(); ?>layout/img/lrb.png" /></i>
                <span>Log Records Backup</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>feedbackListing">
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>User Feedbacks</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>homenewsListing">
                <i> <img src="<?= base_url(); ?>layout/img/home_news.png" /></i>
                <span>Home News</span>
              </a>
            </li>


          <?php
          }
          if ($role == ROLE_NSF_AUDIT) {
          ?>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?= base_url(); ?>layout/img/bank.svg" /></i>
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
                <i> <img src="<?= base_url(); ?>layout/img/graduation-hat.svg" /></i>
                <span>Faculties</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/structure.svg" /></i>
                <span>Departments</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/laboratory.svg" /></i>
                <span>Laboratories</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>Users</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Product Categories</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Instruments</span>
              </a>
            </li>






          <?php
          }
          if ($role == ROLE_INSTITUTE_MANAGER) {
          ?>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?= base_url(); ?>layout/img/bank.svg" /></i>
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
                <i> <img src="<?= base_url(); ?>layout/img/graduation-hat.svg" /></i>
                <span>Faculties</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/structure.svg" /></i>
                <span>Departments</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/laboratory.svg" /></i>
                <span>Laboratories</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>Users</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Institutional Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>All Product Categories</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Institutional Instruments</span>
              </a>
            </li>


            <li class="treeview">
              <!--  <a href="<?php echo base_url(); ?>einstruments">-->
              <a href="<?php echo base_url(); ?>einstruments" target="_blank">

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>All Instruments</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>User Feedbacks</span>
              </a>
            </li>





          <?php
          }
          if ($role == ROLE_FACULTY_MANAGER) {
          ?>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?= base_url(); ?>layout/img/bank.svg" /></i>
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
                <i> <img src="<?= base_url(); ?>layout/img/graduation-hat.svg" /></i>
                <span>Faculties</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/structure.svg" /></i>
                <span>Departments</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/laboratory.svg" /></i>
                <span>Laboratories</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>Users</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Institutional Product Categories</span>
              </a>
            </li>
            <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>All Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Institutional Instruments</span>
              </a>
            </li>


            <li class="treeview">
              <!--  <a href="<?php echo base_url(); ?>einstruments">-->
              <a href="<?php echo base_url(); ?>einstruments" target="_blank">

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>All Instruments</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>User Feedbacks</span>
              </a>
            </li>


          <?php
          }
          if ($role == ROLE_DIVISION_MANAGER) {
          ?>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?= base_url(); ?>layout/img/bank.svg" /></i>
                <span>Institutes</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/graduation-hat.svg" /></i>
                <span>Faculties</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/structure.svg" /></i>
                <span>Departments</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/laboratory.svg" /></i>
                <span>Laboratories</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>Users</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Institutional Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>All Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Institutional Instruments</span>
              </a>
            </li>


            <li class="treeview">
              <!--  <a href="<?php echo base_url(); ?>einstruments">-->
              <a href="<?php echo base_url(); ?>einstruments" target="_blank">

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>All Instruments</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>User Feedbacks</span>
              </a>
            </li>




          <?php
          }
          if ($role == ROLE_ADMINISTRATIVE_INCHARGE) {
          ?>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?= base_url(); ?>layout/img/bank.svg" /></i>
                <span>Institutes</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
                <i> <img src="<?= base_url(); ?>layout/img/graduation-hat.svg" /></i>
                <span>Faculties</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
                <i> <img src="<?= base_url(); ?>layout/img/structure.svg" /></i>
                <span>Departments</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                <i> <img src="<?= base_url(); ?>layout/img/laboratory.svg" /></i>
                <span>Laboratories</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>userListing">
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>Users</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Institutional Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>All Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>addCategory">
                <i> <img src="<?= base_url(); ?>layout/img/pl.png" /><img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Add Product Categoy</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Institutional Instruments</span>
              </a>
            </li>


            <li class="treeview">
              <!--  <a href="<?php echo base_url(); ?>einstruments">-->
              <a href="<?php echo base_url(); ?>einstruments" target="_blank">

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>All Instruments</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstrument">
                <i> <img src="<?= base_url(); ?>layout/img/pl.png" /><img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Add Instrument</span>
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
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>User Feedbacks</span>
              </a>
            </li>




          <?php
          }
          if ($role == ROLE_TECHNICAL_INCHARGE) {
          ?>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instituteListing">
                <i> <img src="<?= base_url(); ?>layout/img/bank.svg" /></i>
                <span>Institutes</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>facultyListing">
                <i> <img src="<?= base_url(); ?>layout/img/graduation-hat.svg" /></i>
                <span>Faculties</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>departmentListing">
                <i> <img src="<?= base_url(); ?>layout/img/structure.svg" /></i>
                <span>Departments</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>laboratoryListing">
                <i> <img src="<?= base_url(); ?>layout/img/laboratory.svg" /></i>
                <span>Laboratories</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>userListing">
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>Users</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Institutional Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>All Product Categories</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>addCategory">
                <i> <img src="<?= base_url(); ?>layout/img/pl.png" /><img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Add Categories</span>
              </a>
            </li>




            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Institutional Instruments</span>
              </a>
            </li>


            <li class="treeview">
              <!--  <a href="<?php echo base_url(); ?>einstruments">-->
              <a href="<?php echo base_url(); ?>einstruments" target="_blank">

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>All Instruments</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>addInstrument">
                <i> <img src="<?= base_url(); ?>layout/img/pl.png" /><img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Add Instrument</span>
              </a>
            </li>


            <li class="treeview">
              <a href="<?php echo base_url(); ?>feedbackListing">
                <i> <img src="<?= base_url(); ?>layout/img/person.png" /></i>
                <span>User Feedbacks</span>
              </a>
            </li>







          <?php
          }
          if ($role == ROLE_EQUIPMENT_USER) {
          ?>

            <!--<li class="treeview">
              <a href="<?php echo base_url(); ?>ecategories">
                <i class="fa fa-tasks"></i>
                <span style="color:#FFFFFF; font-size:18px;">Product Categories</span>
              </a>
            </li>-->

            <li class="treeview">
              <a href="<?php echo base_url(); ?>categoryListing">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>Institutional Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>eproduct_instituteView" target="_blank">
                <i> <img src="<?= base_url(); ?>layout/img/box.svg" /></i>
                <span>All Product Categories</span>
              </a>
            </li>

            <li class="treeview">
              <a href="<?php echo base_url(); ?>instrumentListing">
                <!-- <a href="<?php echo base_url(); ?>einstrumentView">-->

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>Institutional Instruments</span>
              </a>
            </li>


            <li class="treeview">
              <!--  <a href="<?php echo base_url(); ?>einstruments">-->
              <a href="<?php echo base_url(); ?>einstruments" target="_blank">

                <i> <img src="<?= base_url(); ?>layout/img/machine.svg" /></i>
                <span>All Instruments</span>
              </a>
            </li>




          <?php
          }
          ?>
        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>