<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>National Instrument Database | Register</title>
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
  <link rel="stylesheet" href="<?= base_url('layout/css/navbarlogin.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/navbarlogin.css'); ?>">
  <link rel="stylesheet" href="<?= base_url('layout/css/registerForm.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/registerForm.css'); ?>">
</head>


<body>
  <?php $this->load->view('home/partials/navbar_v2'); ?>
-  <main class="register-wrapper">
    <div class="container">
      <div class="register-card">
        <!-- Card Header -->
        <div class="register-card-header">
          <h1 class="register-header-title">Create an Account</h1>
          <p class="register-header-subtitle">Join the National Instrument Database to access, reserve, and share research facilities across Sri Lanka.</p>
        </div>

        <!-- Card Body -->
        <div class="register-card-body">
          <?php $this->load->view('register/messages'); ?>
          <?php echo form_open('register', ['id' => 'registerForm', 'novalidate' => 'novalidate']); ?>

          <!-- Section 1: Personal Information -->
          <div class="form-section-header first-section">
            <span class="section-number">1</span>
            <span>Personal Information</span>
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="title" class="form-label">Title <span class="required-star">*</span></label>
              <select name="title" class="form-control" id="title" required>
                <option value="">Select Title</option>
                <option value="Mr" <?php echo set_select('title', 'Mr'); ?>>Mr</option>
                <option value="Ms" <?php echo set_select('title', 'Ms'); ?>>Ms</option>
                <option value="Mrs" <?php echo set_select('title', 'Mrs'); ?>>Mrs</option>
                <option value="Miss" <?php echo set_select('title', 'Miss'); ?>>Miss</option>
                <option value="Eng" <?php echo set_select('title', 'Eng'); ?>>Eng</option>
                <option value="Dr" <?php echo set_select('title', 'Dr'); ?>>Dr</option>
                <option value="Prof" <?php echo set_select('title', 'Prof'); ?>>Prof</option>
              </select>
              <?php echo form_error('title', "<div class='form-field-error'>", "</div>"); ?>
            </div>

            <div class="col-md-6 form-group">
              <label for="gender" class="form-label">Gender <span class="required-star">*</span></label>
              <select name="gender" class="form-control" id="gender" required>
                <option value="">Select Gender</option>
                <option value="Male" <?php echo set_select('gender', 'Male'); ?>>Male</option>
                <option value="Female" <?php echo set_select('gender', 'Female'); ?>>Female</option>
              </select>
              <?php echo form_error('gender', "<div class='form-field-error'>", "</div>"); ?>
            </div>
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="firstName" class="form-label">First Name <span class="required-star">*</span></label>
              <?php echo form_input(['name' => 'firstName', 'id' => 'firstName', 'class' => 'form-control', 'placeholder' => 'Enter your first name', 'value' => set_value('firstName')]); ?>
              <?php echo form_error('firstName', "<div class='form-field-error'>", "</div>"); ?>
            </div>

            <div class="col-md-6 form-group">
              <label for="lastName" class="form-label">Last Name <span class="required-star">*</span></label>
              <?php echo form_input(['name' => 'lastName', 'id' => 'lastName', 'class' => 'form-control', 'placeholder' => 'Enter your last name', 'value' => set_value('lastName')]); ?>
              <?php echo form_error('lastName', "<div class='form-field-error'>", "</div>"); ?>
            </div>
          </div>

          <div class="form-group">
            <label for="address" class="form-label">Address</label>
            <?php echo form_input(['name' => 'address', 'id' => 'address', 'class' => 'form-control', 'placeholder' => 'Enter your official or residential address', 'value' => set_value('address')]); ?>
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="phoneNumber" class="form-label">Phone Number (Office / Landline)</label>
              <?php echo form_input(['name' => 'phoneNumber', 'id' => 'phoneNumber', 'class' => 'form-control', 'placeholder' => 'e.g. 0112345678', 'value' => set_value('phoneNumber')]); ?>
            </div>

            <div class="col-md-6 form-group">
              <label for="mobilenumber" class="form-label">Mobile Number <span class="required-star">*</span></label>
              <?php echo form_input(['name' => 'mobilenumber', 'id' => 'mobilenumber', 'class' => 'form-control', 'placeholder' => 'e.g. 0771234567 (10 digits)', 'value' => set_value('mobilenumber')]); ?>
              <?php echo form_error('mobilenumber', "<div class='form-field-error'>", "</div>"); ?>
            </div>
          </div>

          <!-- Section 2: Institutional Affiliation -->
          <div class="form-section-header">
            <span class="section-number">2</span>
            <span>Institutional Affiliation</span>
          </div>

          <div class="form-group">
            <label for="institute" class="form-label">Registered Institution</label>
            <select class="form-control" name="institute" id="institute" onchange="document.getElementById('otherInstituteGroup').style.display = this.value === 'other' ? 'block' : 'none'; document.getElementById('otherInstitute').required = this.value === 'other';">
              <option value="">Select Institute (if already in system)</option>
              <?php
              foreach ($institutes as $row) {
                echo '<option value="' . $row->institute_id . '" ' . set_select('institute', $row->institute_id) . '>' . $row->name . '</option>';
              }
              ?>
              <option value="other" <?= set_select('institute', 'other'); ?>>Others</option>
            </select>
            <small class="form-hint">Choose your institution if it is already registered in the database.</small>
          </div>

          <div class="form-group" id="otherInstituteGroup" style="display: <?= set_value('institute') === 'other' ? 'block' : 'none'; ?>;">
            <label for="otherInstitute" class="form-label">Other Institution</label>
            <?php echo form_input(['name' => 'otherInstitute', 'id' => 'otherInstitute', 'class' => 'form-control', 'placeholder' => 'Enter your institution name if not listed above', 'value' => set_value('otherInstitute'), 'maxlength' => '255']); ?>
            <small class="form-hint">Fill this only if your institution is not found in the dropdown above.</small>
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="faculty" class="form-label">Faculty (Only for Universities)</label>
              <select class="form-control" id="faculty" name="faculty">
                <option value="">Select Faculty</option>
              </select>
            </div>

            <div class="col-md-6 form-group">
              <label for="department" class="form-label">Department / Division</label>
              <select class="form-control" id="department" name="department">
                <option value="">Select Department/Division</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label for="designation" class="form-label">Designation</label>
            <select class="form-control" name="designation" id="designation">
              <option value="">Select Designation</option>
              <?php
              foreach ($designation as $row) {
                echo '<option value="' . $row->name . '" ' . set_select('designation', $row->name) . '>' . $row->name . '</option>';
              }
              ?>
            </select>
          </div>

          <div class="form-group technician-box">
            <label class="technician-card" for="isTechnician">
              <input class="form-check-input" type="checkbox" name="isTechnician" id="isTechnician" value="1" <?php echo set_checkbox('isTechnician', '1', $this->input->get('isTechnician') === '1'); ?>>
              <div class="technician-text">
                <span class="technician-title">I am an expert to repair laboratory equipments</span>
                <span class="technician-desc">Check this option if you operate, maintain, or manage laboratory instruments.</span>
              </div>
            </label>
          </div>

          <!-- Section 3: Account Credentials -->
          <div class="form-section-header">
            <span class="section-number">3</span>
            <span>Account Credentials</span>
          </div>

          <div class="form-group">
            <label for="userName" class="form-label">Email Address (User Name) <span class="required-star">*</span></label>
            <?php echo form_input(['name' => 'userName', 'id' => 'userName', 'type' => 'email', 'class' => 'form-control', 'placeholder' => 'name@example.com', 'value' => set_value('userName')]); ?>
            <?php echo form_error('userName', "<div class='form-field-error'>", "</div>"); ?>
            <small class="form-hint">This email will be used as your login credential and for notification alerts.</small>
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="password" class="form-label">Password <span class="required-star">*</span></label>
              <div class="password-input-wrapper">
                <?php echo form_password(['name' => 'password', 'id' => 'password', 'class' => 'form-control', 'placeholder' => 'Minimum 6 characters', 'value' => set_value('password')]); ?>
                <button type="button" class="btn-toggle-password" id="togglePasswordBtnReg" aria-label="Toggle password visibility" tabindex="-1">
                  <svg id="eyeIconOpenReg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                    <circle cx="12" cy="12" r="3"></circle>
                  </svg>
                  <svg id="eyeIconClosedReg" class="d-none" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"></path>
                    <line x1="1" y1="1" x2="23" y2="23"></line>
                  </svg>
                </button>
              </div>
              <?php echo form_error('password', "<div class='form-field-error'>", "</div>"); ?>
            </div>

            <div class="col-md-6 form-group">
              <label for="confirmpassword" class="form-label">Confirm Password <span class="required-star">*</span></label>
              <div class="password-input-wrapper">
                <?php echo form_password(['name' => 'confirmpassword', 'id' => 'confirmpassword', 'class' => 'form-control', 'placeholder' => 'Re-type password', 'value' => set_value('confirmpassword')]); ?>
                <button type="button" class="btn-toggle-password" id="toggleConfirmPasswordBtnReg" aria-label="Toggle confirm password visibility" tabindex="-1">
                  <svg id="eyeIconOpenConfirmReg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                    <circle cx="12" cy="12" r="3"></circle>
                  </svg>
                  <svg id="eyeIconClosedConfirmReg" class="d-none" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"></path>
                    <line x1="1" y1="1" x2="23" y2="23"></line>
                  </svg>
                </button>
              </div>
              <?php echo form_error('confirmpassword', "<div class='form-field-error'>", "</div>"); ?>
            </div>
          </div>

          <button type="submit" name="Register" value="Register" class="btn btn-register-submit">
            Register Account
          </button>

          <div class="register-login-prompt">
            Already have an account? <a href="<?= base_url('user_authentication'); ?>" class="login-link">Sign In here</a>
          </div>
          </form>
        </div>
      </div>
    </div>
  </main>

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
              <li><a href="http://www.nsf.ac.lk/" style="color: #FFFFFF;" target="_blank">NSF Home</a></li>
              <li><a href="https://gdp.nsf.gov.lk/" style="color: #FFFFFF;" target="_blank">Global Digital Platform</a></li>
              <li><a href="https://stmis.nsf.gov.lk/" style="color: #FFFFFF;" target="_blank">S & T Management Information System</a></li>
              <li><a href="http://viduketha.nsf.gov.lk/RTGRA" style="color: #FFFFFF;" target="_blank">Research & Technology Grant Database</a></li>
              <li><a href="http://viduketha.nsf.gov.lk" style="color: #FFFFFF;" target="_blank">Viduketha</a></li>
            </ul>
          </div>
        </div>

        <div class="col-sm-6 col-lg-3">
          <div class="single_footer_part">
            <h4 style="color: #FFFFFF;">Subscribe to NSF eAlerts</h4>
            <a href="http://lists.nsf.gov.lk/" class="button rounded-0 primary-bg text-white w-10 btn_1" style="background-color:#EE9310;" target="_blank">subscribe</a>
            <br><br>
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
              <p style="color: #FFFFFF;">
                Copyright &copy;<script>
                  document.write(new Date().getFullYear());
                </script> All rights reserved | Powered by National Science Foundation of Sri Lanka
              </p>
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
  <script src="<?= base_url(); ?>layout/js/slick.min.js"></script>
  <!-- custom js -->
  <script src="<?= base_url(); ?>layout/js/custom.js"></script>

  <!-- Interactive Dynamic Cascading Dropdowns & UX Scripts -->
  <script type="text/javascript">
    $(document).ready(function() {
      // Dynamic Institute -> Faculties & Departments
      $('#institute').change(function() {
        var institute_id = $(this).val();
        var isOtherInstitute = institute_id === 'other';

        $('#otherInstituteGroup').toggle(isOtherInstitute);
        $('#otherInstitute').prop('required', isOtherInstitute);

        if (isOtherInstitute) {
          $('#department').html('<option value="">Select Department/Division</option>');
          $('#faculty').html('<option value="">Select Faculty</option>');
          return;
        }

        if (institute_id != '') {
          // Load departments
          $.ajax({
            url: "<?php echo base_url(); ?>Register/get_departments",
            method: "POST",
            data: {
              institute_id: institute_id
            },
            success: function(data) {
              $('#department').html(data);
            }
          });
          // Load faculties
          $.ajax({
            url: "<?php echo base_url(); ?>Register/get_faculties",
            method: "POST",
            data: {
              institute_id: institute_id
            },
            success: function(data) {
              $('#faculty').html(data);
            }
          });
        } else {
          $('#department').html('<option value="">Select Department/Division</option>');
          $('#faculty').html('<option value="">Select Faculty</option>');
        }
      });

      $('#institute').trigger('change');

      // Dynamic Faculty -> Departments
      $('#faculty').change(function() {
        var faculty_id = $(this).val();
        if (faculty_id != '') {
          $.ajax({
            url: "<?php echo base_url(); ?>Register/get_departmentsByFaculty",
            method: "POST",
            data: {
              faculty_id: faculty_id
            },
            success: function(data) {
              $('#department').html(data);
            }
          });
        } else {
          var institute_id = $('#institute').val();
          if (institute_id != '') {
            $.ajax({
              url: "<?php echo base_url(); ?>Register/get_departments",
              method: "POST",
              data: {
                institute_id: institute_id
              },
              success: function(data) {
                $('#department').html(data);
              }
            });
          } else {
            $('#department').html('<option value="">Select Department/Division</option>');
          }
        }
      });

      // Password visibility toggle helpers
      function setupPasswordToggle(btnId, inputId, openSvgId, closedSvgId) {
        var btn = document.getElementById(btnId);
        var input = document.getElementById(inputId);
        var openSvg = document.getElementById(openSvgId);
        var closedSvg = document.getElementById(closedSvgId);
        if (btn && input) {
          btn.addEventListener('click', function() {
            if (input.type === 'password') {
              input.type = 'text';
              if (openSvg) openSvg.classList.add('d-none');
              if (closedSvg) closedSvg.classList.remove('d-none');
            } else {
              input.type = 'password';
              if (openSvg) openSvg.classList.remove('d-none');
              if (closedSvg) closedSvg.classList.add('d-none');
            }
          });
        }
      }

      setupPasswordToggle('togglePasswordBtnReg', 'password', 'eyeIconOpenReg', 'eyeIconClosedReg');
      setupPasswordToggle('toggleConfirmPasswordBtnReg', 'confirmpassword', 'eyeIconOpenConfirmReg', 'eyeIconClosedConfirmReg');
    });
  </script>
</body>

</html>