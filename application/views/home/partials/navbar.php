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

      .navbar .user-dropdown-toggle {
          display: inline-flex;
          align-items: center;
          gap: 8px;
          min-width: 150px;
          padding: 10px 16px !important;
          font-size: 15px;
      }

      .navbar .dropdown .user-dropdown-menu {
          position: absolute;
          top: 100%;
          right: 0;
          min-width: 210px;
          padding: 8px;
          margin-top: 12px;
          background-color: #ffffff !important;
          border: 1px solid rgba(0, 0, 0, 0.08) !important;
          border-radius: 10px;
          box-shadow: 0 10px 26px rgba(0, 0, 0, 0.1) !important;
          transform: none !important;
          display: none !important;
          overflow: visible !important;
          z-index: 1000;
      }

      .navbar .dropdown .user-dropdown-menu.show {
          display: block !important;
      }

      .navbar .dropdown .user-dropdown-menu .dropdown-item {
          padding: 10px 14px !important;
          border-radius: 7px;
          font-size: 14.5px;
          font-weight: 500;
          color: #2f2a26 !important;
          background-color: transparent !important;
          text-transform: none;
          transition: background-color 0.2s ease, color 0.2s ease;
      }

      .navbar .dropdown .user-dropdown-menu .dropdown-item:hover,
      .navbar .dropdown .user-dropdown-menu .dropdown-item:focus {
          background-color: #FFF7EC !important;
          color: #C96F00 !important;
      }

      .navbar .dropdown .user-dropdown-menu .dropdown-divider {
          margin: 6px 0;
          border-color: #f0eadf;
      }

      .navbar .dropdown .user-dropdown-menu .dropdown-item.logout-item {
          color: #dc2626 !important;
      }

      .navbar .dropdown .user-dropdown-menu .dropdown-item.logout-item:hover,
      .navbar .dropdown .user-dropdown-menu .dropdown-item.logout-item:focus {
          background-color: #fef2f2 !important;
          color: #b91c1c !important;
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
                 <?php
                    $userDataArr = $this->session->userdata('userData');
                    $displayName = trim((string) $this->session->userdata('firstName'));
                    if ($displayName === '' && !empty($userDataArr['first_name'])) {
                        $displayName = trim((string) $userDataArr['first_name']);
                    }
                    if ($displayName === '') {
                        $displayName = trim((string) $this->session->userdata('name'));
                    }
                    if ($displayName === '') {
                        $displayName = 'My Account';
                    }
                    ?>
                 <!-- Logged in User Menu -->
                 <li class="nav-item mx-3">
                     <div class="dropdown">
                         <button type="button"
                             class="btn register-btn user-dropdown-toggle"
                             id="userMenu"
                             data-toggle="dropdown"
                             aria-haspopup="true"
                             aria-expanded="false">
                             <span><?= htmlspecialchars($displayName, ENT_QUOTES, 'UTF-8'); ?></span>
                             <i class="fa fa-caret-down" aria-hidden="true"></i>
                         </button>
                         <div class="dropdown-menu dropdown-menu-right user-dropdown-menu"
                             aria-labelledby="userMenu">
                             <a class="dropdown-item" href="<?= base_url('dashboard'); ?>">Dashboard</a>
                             <div class="dropdown-divider"></div>
                             <a class="dropdown-item logout-item" href="<?= base_url('logout'); ?>">Logout</a>
                         </div>
                     </div>
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