  <!doctype html>
  <html lang="zxx">

  <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>National Instrument Database</title>
      <link rel="icon" href="<?= base_url(); ?>layout/img/ph3.jpg">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/bootstrap.min.css">
      <!-- animate CSS -->
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/animate.css">
      <!-- owl carousel CSS -->
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/owl.carousel.min.css">
      <!-- font awesome CSS -->
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/all.css">
      <!-- flaticon CSS -->
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/flaticon.css">
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/themify-icons.css">
      <!-- font awesome CSS -->
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/magnific-popup.css">
      <!-- swiper CSS -->
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/slick.css">
      <!-- style CSS -->
      <link rel="stylesheet" href="<?= base_url(); ?>layout/css/style.css">
      <link rel="stylesheet" href="<?= base_url('layout/css/login.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/login.css'); ?>">
  </head>

  <body>
      <?php $this->load->view('home/partials/navbar_v2'); ?>
      <main class="login-wrapper">
          <div class="container">
              <div class="login-card">
                  <div class="row no-gutters">
                      <!-- Left Brand Showcase Panel -->
                      <div class="col-lg-5 col-md-5">
                          <div class="login-left">
                              <div class="login-left-overlay"></div>
                              <div class="login-left-content">
                                  <div class="badge-pill-nsf">
                                      <span>NSF Sri Lanka</span>
                                  </div>
                                  <h2 class="welcome-heading">National Instrument Database</h2>
                                  <p class="welcome-desc">Centralized access to advanced scientific instruments, analytical equipment, and national laboratory resources.</p>
                                  <div class="left-features">
                                      <div class="feature-item">
                                          <span class="feature-icon">
                                              <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                                                  <polyline points="20 6 9 17 4 12"></polyline>
                                              </svg>
                                          </span>
                                          <span>Discover national research equipment</span>
                                      </div>
                                      <div class="feature-item">
                                          <span class="feature-icon">
                                              <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                                                  <polyline points="20 6 9 17 4 12"></polyline>
                                              </svg>
                                          </span>
                                          <span>Explore institutes & laboratories</span>
                                      </div>
                                      <div class="feature-item">
                                          <span class="feature-icon">
                                              <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                                                  <polyline points="20 6 9 17 4 12"></polyline>
                                              </svg>
                                          </span>
                                          <span>Streamlined access for researchers</span>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <!-- Right Form Panel -->
                      <div class="col-lg-7 col-md-7">
                          <div class="login-right">
                              <div class="login-header">
                                  <h1 class="login-title">User Login</h1>
                                  <p class="login-subtitle">Welcome back! Please enter your details to continue.</p>
                              </div>

                              <div class="login-box-body">
                                  <?php $this->load->view('user_authentication/messages'); ?>
                                  <form action="<?php echo base_url(); ?>loginMe" method="post" id="loginForm" novalidate>
                                      <div class="form-group">
                                          <label for="loginEmail" class="form-label">Email Address</label>
                                          <div class="input-wrapper">
                                              <span class="input-icon">
                                                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                      <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                                                      <polyline points="22,6 12,13 2,6"></polyline>
                                                  </svg>
                                              </span>
                                              <input class="form-control" type="email" placeholder="name@example.com" name="email" id="loginEmail" autocomplete="username">
                                          </div>
                                          <div class="login-field-error" data-error-for="loginEmail"></div>
                                      </div>

                                      <div class="form-group">
                                          <label for="loginPassword" class="form-label">Password</label>
                                          <div class="input-wrapper">
                                              <span class="input-icon">
                                                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                      <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                                      <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                                                  </svg>
                                              </span>
                                              <input class="form-control" type="password" placeholder="Enter your password" name="password" id="loginPassword" autocomplete="current-password">
                                              <button type="button" class="btn-toggle-password" id="togglePasswordBtn" aria-label="Toggle password visibility" tabindex="-1">
                                                  <svg id="eyeIconOpen" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                      <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                                      <circle cx="12" cy="12" r="3"></circle>
                                                  </svg>
                                                  <svg id="eyeIconClosed" class="d-none" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                      <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"></path>
                                                      <line x1="1" y1="1" x2="23" y2="23"></line>
                                                  </svg>
                                              </button>
                                          </div>
                                          <div class="login-field-error" data-error-for="loginPassword"></div>
                                      </div>

                                      <div class="form-options-row">
                                          <div class="custom-remember-check">
                                              <input type="checkbox" class="form-check-input" id="rememberMe">
                                              <label class="form-check-label" for="rememberMe">Remember me</label>
                                          </div>
                                          <div class="forgot-link-wrap">
                                              <a href="<?php echo base_url(); ?>forgotPassword" class="forgot-password-link">Forgot Password?</a>
                                          </div>
                                      </div>

                                      <button type="submit" class="btn btn-block login-btn-main">
                                          <span>Login</span>
                                      </button>
                                  </form>

                                  <div class="login-divider">
                                      <span>or continue with</span>
                                  </div>

                                  <!-- google auth button -->
                                  <a href="<?php echo $loginURL; ?>" class="btn btn-block google-login-btn">
                                      <img class="google-icon" src="<?= base_url(); ?>layout/img/google.png" alt="Google logo">
                                      <span>Sign in with Google</span>
                                  </a>

                                  <div class="login-register-prompt">
                                      Don't have an account? <a href="<?= base_url('register'); ?>" class="register-link">Register now</a>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </main>

      <script>
          (function() {
              var form = document.getElementById('loginForm');
              var email = document.getElementById('loginEmail');
              var password = document.getElementById('loginPassword');
              var toggleBtn = document.getElementById('togglePasswordBtn');
              var eyeOpen = document.getElementById('eyeIconOpen');
              var eyeClosed = document.getElementById('eyeIconClosed');

              // Toggle password visibility
              if (toggleBtn && password) {
                  toggleBtn.addEventListener('click', function() {
                      if (password.type === 'password') {
                          password.type = 'text';
                          if (eyeOpen) eyeOpen.classList.add('d-none');
                          if (eyeClosed) eyeClosed.classList.remove('d-none');
                      } else {
                          password.type = 'password';
                          if (eyeOpen) eyeOpen.classList.remove('d-none');
                          if (eyeClosed) eyeClosed.classList.add('d-none');
                      }
                  });
              }

              // Real-time error clearing
              if (email) {
                  email.addEventListener('input', function() {
                      email.classList.remove('login-field--invalid');
                      var err = form ? form.querySelector('[data-error-for="loginEmail"]') : null;
                      if (err) err.textContent = '';
                  });
              }

              if (password) {
                  password.addEventListener('input', function() {
                      password.classList.remove('login-field--invalid');
                      var err = form ? form.querySelector('[data-error-for="loginPassword"]') : null;
                      if (err) err.textContent = '';
                  });
              }

              // Form submit validation
              if (form) {
                  form.addEventListener('submit', function(event) {
                      var valid = true;
                      var emailError = form.querySelector('[data-error-for="loginEmail"]');
                      var passwordError = form.querySelector('[data-error-for="loginPassword"]');

                      [email, password].forEach(function(field) {
                          if (field) field.classList.remove('login-field--invalid');
                      });
                      if (emailError) emailError.textContent = '';
                      if (passwordError) passwordError.textContent = '';

                      if (!email.value.trim()) {
                          email.classList.add('login-field--invalid');
                          if (emailError) emailError.textContent = 'Email is required.';
                          valid = false;
                      } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.value.trim())) {
                          email.classList.add('login-field--invalid');
                          if (emailError) emailError.textContent = 'Enter a valid email address.';
                          valid = false;
                      }

                      if (!password.value) {
                          password.classList.add('login-field--invalid');
                          if (passwordError) passwordError.textContent = 'Password is required.';
                          valid = false;
                      }

                      if (!valid) event.preventDefault();
                  });
              }
          }());
      </script>

      <!--::footer_part start::-->
      <footer class="footer_part" style="background: #070300;">
          <div class="container">
              <div class="row justify-content-around">
                  <div class="col-sm-6 col-lg-5">
                      <div class="single_footer_part">
                          <h4 style="color: #FFFFFF;">Contact Us</h4>
                          <ul class="list-unstyled">
                              <li>
                                  <p style="color: #FFFFFF;">National Science Foundation</p>
                              </li>
                              <li>
                                  <p style="color: #FFFFFF;"># 47/5, Maitland Place, Colombo 07</p>
                              </li>
                              <li>
                                  <p style="color: #FFFFFF;">Phone : +94 (0)11 2 696771, Fax : +94 (0)11 2 694754</p>
                              </li>
                              <li>
                                  <p style="color: #FFFFFF;">Email : info@nsf.gov.lk</p>
                              </li>

                          </ul>
                      </div>
                  </div>

                  <div class="col-sm-6 col-lg-4">
                      <div class="single_footer_part">
                          <h4 style="color: #FFFFFF;">Quick Links</h4>
                          <ul class="list-unstyled">
                              <li><a href="http://www.nsf.ac.lk/" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target=" _blank">NSF Home</a></li>
                              <li><a href="https://gdp.nsf.gov.lk/" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target=" _blank">Global Digital Platform</a></li>
                              <li><a href="https://stmis.nsf.gov.lk/" style="color: #FFFFFF;-webkit-transition: color 1000000000s;  target=" _blank">S & T Management Information System</a></li>
                              <li><a href="http://viduketha.nsf.gov.lk/RTGRA" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target=" _blank">Research & Technology Grant Database</a></li>
                              <li><a href="http://viduketha.nsf.gov.lk" style="color: #FFFFFF; -webkit-transition: color 1000000000s; target=" _blank">Viduketha</a></li>

                          </ul>
                      </div>
                  </div>

                  <div class="col-sm-6 col-lg-3">
                      <div class="single_footer_part">
                          <h4 style="color: #FFFFFF;">Subscribe to NSF eAlerts</h4>
                          <a href="http://lists.nsf.gov.lk/" class="button rounded-0 primary-bg text-white w-10 btn_1" style=" background-color:#EE9310  ;" target="_blank">subscribe</a>

                          </br>
                          </br>

                          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                                      Copyright &copy;<script>
                                          document.write(new Date().getFullYear());
                                      </script> All rights reserved | Powered by National Scienec Foundation of Sri Lanka<!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
      <script src="<?= base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>
      <!-- popper js -->
      <script src="<?= base_url(); ?>layout/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>
      <!-- easing js -->
      <script src="<?= base_url(); ?>layout/js/jquery.magnific-popup.js"></script>
      <!-- swiper js -->
      <script src="<?= base_url(); ?>layout/js/swiper.min.js"></script>
      <!-- swiper js -->
      <script src="<?= base_url(); ?>layout/js/masonry.pkgd.js"></script>
      <!-- particles js -->
      <script src="<?= base_url(); ?>layout/js/owl.carousel.min.js"></script>
      <script src="js/jquery.nice-select.min.js"></script>
      <!-- slick js -->
      <script src="<?= base_url(); ?>layout/js/slick.min.js"></script>
      <script src="<?= base_url(); ?>layout/js/jquery.counterup.min.js"></script>
      <script src="<?= base_url(); ?>layout/js/waypoints.min.js"></script>
      <script src="<?= base_url(); ?>layout/js/contact.js"></script>
      <script src="<?= base_url(); ?>layout/js/jquery.ajaxchimp.min.js"></script>
      <script src="<?= base_url(); ?>layout/js/jquery.form.js"></script>
      <script src="<?= base_url(); ?>layout/js/jquery.validate.min.js"></script>
      <script src="<?= base_url(); ?>layout/js/mail-script.js"></script>
      <!-- custom js -->
      <script src="<?= base_url(); ?>layout/js/custom.js"></script>
  </body>

  </html>