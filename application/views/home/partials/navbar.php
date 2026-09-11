 <style>
     /* Navbar */

     body {
         background-color: var(--bg-page) !important;
         font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
         color: var(--text-body);
         margin: 0;
         padding: 0;
     }

     .navbar {
         position: sticky;
         top:0;
         z-index: 900;
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

 <nav class="navbar navbar-expand-lg navbar-light" style="height:80px;">

     <a class="navbar-brand pl-5" href="<?= base_url('home'); ?>">
         <img src="<?= base_url(); ?>catalogUploads/nsf_logo.png"
             width="160px"
             alt="NSF Logo">
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