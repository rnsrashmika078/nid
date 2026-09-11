 <style>
     /* Navbar */
     body {
         background-color: var(--bg-page) !important;
         font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
         color: var(--text-body);
         margin: 0;
         padding: 0;
     }

     .skip-link {
         position: fixed;
         top: 8px;
         left: 8px;
         z-index: 1100;
         padding: 10px 14px;
         transform: translateY(-140%);
         background: #2f2a26;
         color: #ffffff !important;
         font-size: 14px;
         font-weight: 700;
         border-radius: 3px;
         transition: transform .2s ease;
     }

     .skip-link:focus {
         transform: translateY(0);
     }

     .navbar {
         background: #FFFFFF;
         box-shadow: 0px 3px 6px #00000029;
         position: sticky;
         top: 0;
         z-index: 1000;
     }

     .navbar .nav-link {
         font-size: 18px;
         position: relative;
     }

     .navbar .nav-link::after {
         content: "";
         position: absolute;
         right: 0;
         bottom: 2px;
         left: 0;
         height: 3px;
         background: #EE9310;
         transform: scaleX(0);
         transition: transform .2s ease;
     }

     .navbar .nav-item.active .nav-link,
     .navbar .nav-link:hover,
     .navbar .nav-link:focus {
         color: #C96F00 !important;
     }

     .navbar .nav-item.active .nav-link::after,
     .navbar .nav-link:hover::after,
     .navbar .nav-link:focus::after {
         transform: scaleX(1);
     }

      .navbar .dashboard-btn {
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


     .navbar .dashboard-btn:active,
     .dashboard-btn:focus,
     .dashboard-btn:hover {
         background-color: #FFFFFF !important;
         color: #EE9310;
         border: 1px solid #EE9310 !important;
         /* border: none !important; */
         transition: all 0.5s ease;
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

      .navbar .user-btn {
          background-color: #F8F8F8;
          color: #EE9310;
          width: 43px;
          height: 43px;
          border-radius: 50%;
          border: 1px solid #EE9310 !important;
          font-size: 18px;
          display: inline-flex;
          align-items: center;
          justify-content: center;
          text-decoration: none;
          transition: all 0.3s ease;
      }

      .navbar .user-btn:hover {
          background-color: #EE9310 !important;
          color: #FFFFFF;
      }
  </style>
 <?php
    $current_page = $this->uri->segment(1);
    ?>

 <nav class="navbar navbar-expand-lg navbar-light" aria-label="Primary navigation" style="height:80px;">

     <a class="navbar-brand pl-5" href="<?= base_url('home'); ?>">
         <img src="<?= base_url(); ?>catalogUploads/nsf_logo.png"
             width="160px"
             alt="NSF Logo">
         <span class="sr-only">Official National Science Foundation instrument database</span>
     </a>

     <button class="navbar-toggler"
         type="button"
         data-toggle="collapse"
         data-target="#navbarSupportedContent"
         aria-controls="navbarSupportedContent"
         aria-expanded="false"
         aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
     </button>

     <div class="collapse navbar-collapse pr-5" id="navbarSupportedContent">

         <ul class="navbar-nav ml-auto">

             <!-- Home -->
             <li class="nav-item mx-3 <?= ($current_page == 'home') ? 'active' : ''; ?>">
                 <a class="nav-link" href="<?= base_url('home'); ?>">
                     Home
                 </a>
             </li>

             <!-- Product Category -->
             <li class="nav-item mx-3 <?= ($current_page == 'eproductView') ? 'active' : ''; ?>">
                 <a class="nav-link" href="<?= base_url('eproductView'); ?>">
                     Product Category
                 </a>
             </li>

             <!-- Institutes -->
             <li class="nav-item mx-3 <?= ($current_page == 'einstituteView') ? 'active' : ''; ?>">
                 <a class="nav-link" href="<?= base_url('einstituteView'); ?>">
                     Institutes
                 </a>
             </li>

             <!-- Laboratories -->
             <li class="nav-item mx-3 <?= ($current_page == 'elaboratories') ? 'active' : ''; ?>">
                 <a class="nav-link" href="<?= base_url('elaboratories'); ?>">
                     Laboratories
                 </a>
             </li>

             <!-- Contact -->
             <li class="nav-item mx-3 <?= ($current_page == 'contact') ? 'active' : ''; ?>">
                 <a class="nav-link" href="<?= base_url('contact'); ?>">
                     Contact
                 </a>
             </li>
             <li class="nav-item mx-3">
                 <a href="<?= base_url('homedashboard'); ?>"
                     class="btn dashboard-btn"
                     role="button"
                     style="font-size:16px;">
                     Dashboard
                 </a>
             </li>

             <?php $isLoggedIn = $this->session->userdata('loggedIn') == true
                 || $this->session->userdata('isLoggedIn') == true
                 || !empty($this->session->userdata('userId')); ?>
             <?php if ($isLoggedIn): ?>
                 <!-- Dashboard -->
                 <li class="nav-item mx-3">
                     <a href="<?= base_url('dashboard'); ?>"
                         class="user-btn"
                         role="button"
                         title="Dashboard"
                         aria-label="Go to dashboard">
                         <i class="fa fa-user" aria-hidden="true"></i>
                     </a>
                 </li>
                 <!-- Logout -->
                 <li class="nav-item mx-3">
                     <a href="<?= base_url('logout'); ?>"
                         class="btn register-btn"
                         role="button"
                         style="font-size:16px;">
                         Logout
                     </a>
                 </li>
             <?php else: ?>
                 <!-- Login -->
                 <li class="nav-item mx-3">
                     <a href="<?= base_url('user_authentication'); ?>"
                         class="btn register-btn"
                         role="button"
                         style="font-size:16px;">
                         Login
                     </a>
                 </li>

                 <!-- Register -->
                 <li class="nav-item mx-3">
                     <a href="<?= base_url('register'); ?>"
                         class="btn register-btn"
                         role="button"
                         style="font-size:16px;">
                         Register
                     </a>
                 </li>
             <?php endif; ?>

         </ul>
     </div>
 </nav>