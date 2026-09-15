<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>National Instrument Database | Update Your Account</title>
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

  <main class="register-wrapper">
    <div class="container">
      <div class="register-card">
        <!-- Card Header -->
        <div class="register-card-header">
          <span class="register-badge">Account Setup</span>
          <h1 class="register-header-title">Complete Your Profile</h1>
          <p class="register-header-subtitle">Finalize your details to start using the National Instrument Database. Update your information below and save.</p>
        </div>

        <!-- Card Body -->
        <div class="register-card-body">
          <?php if ($this->session->flashdata('success')) { ?>
            <div class="alert alert-success alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <?php echo $this->session->flashdata('success'); ?>
            </div>
          <?php } ?>

          <?php if ($this->session->flashdata('error')) { ?>
            <div class="alert alert-danger alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <?php echo $this->session->flashdata('error'); ?>
            </div>
          <?php } ?>

          <?php echo form_open('editRegister', ['id' => 'editOldRegisterForm', 'novalidate' => 'novalidate']); ?>

          <input type="hidden" name="userId" id="userId" value="<?php echo htmlspecialchars((string) $userData['id'], ENT_QUOTES, 'UTF-8'); ?>" />

          <!-- Section 1: Personal Information -->
          <div class="form-section-header first-section">
            <span class="section-number">1</span>
            <span>Personal Information</span>
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="title" class="form-label">Title <span class="required-star">*</span></label>
              <select name="title" class="form-control" id="title">
                <option value="">Select Title</option>
                <?php
                $titles = ['Mr', 'Ms', 'Mrs', 'Miss', 'Eng', 'Dr', 'Prof'];
                foreach ($titles as $t) {
                  $selected = ($t === set_value('title')) || (set_value('title') === '' && isset($userData['title']) && strcasecmp((string) $userData['title'], $t) === 0);
                  echo '<option value="' . $t . '" ' . ($selected ? 'selected="selected"' : '') . '>' . $t . '</option>';
                }
                ?>
              </select>
              <?php echo form_error('title', "<div class='form-field-error'>", "</div>"); ?>
            </div>

            <div class="col-md-6 form-group">
              <label for="gender" class="form-label">Gender <span class="required-star">*</span></label>
              <select name="gender" class="form-control" id="gender">
                <option value="">Select Gender</option>
                <?php foreach (['Male', 'Female'] as $g) {
                  $selected = ($g === set_value('gender')) || (set_value('gender') === '' && isset($userData['gender']) && strcasecmp((string) $userData['gender'], $g) === 0);
                  echo '<option value="' . $g . '" ' . ($selected ? 'selected="selected"' : '') . '>' . $g . '</option>';
                } ?>
              </select>
              <?php echo form_error('gender', "<div class='form-field-error'>", "</div>"); ?>
            </div>
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="firstName" class="form-label">First Name <span class="required-star">*</span></label>
              <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter your first name" value="<?php echo htmlspecialchars((string) $userData['first_name'], ENT_QUOTES, 'UTF-8'); ?>" maxlength="128">
              <?php echo form_error('firstName', "<div class='form-field-error'>", "</div>"); ?>
            </div>

            <div class="col-md-6 form-group">
              <label for="lastName" class="form-label">Last Name <span class="required-star">*</span></label>
              <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter your last name" value="<?php echo htmlspecialchars((string) $userData['last_name'], ENT_QUOTES, 'UTF-8'); ?>" maxlength="128">
              <?php echo form_error('lastName', "<div class='form-field-error'>", "</div>"); ?>
            </div>
          </div>

          <div class="form-group">
            <label for="address" class="form-label">Address</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="Enter your official or residential address" value="<?php echo set_value('address'); ?>" maxlength="300">
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="phoneNumber" class="form-label">Phone Number (Office / Landline)</label>
              <input type="text" class="form-control digits" id="phoneNumber" name="phoneNumber" placeholder="e.g. 0112345678" value="<?php echo set_value('phoneNumber'); ?>" maxlength="10">
            </div>

            <div class="col-md-6 form-group">
              <label for="mobilenumber" class="form-label">Mobile Number</label>
              <input type="text" class="form-control digits" id="mobilenumber" name="mobilenumber" placeholder="e.g. 0771234567 (10 digits)" value="<?php echo set_value('mobilenumber'); ?>" maxlength="10">
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
              if (!empty($institutes)) {
                foreach ($institutes as $il) {
                  echo '<option value="' . $il->institute_id . '" ' . set_select('institute', $il->institute_id) . '>' . $il->name . '</option>';
                }
              }
              ?>
              <option value="other" <?= set_select('institute', 'other'); ?>>Others</option>
            </select>
            <small class="form-hint">Choose your institution if it is already registered in the database, otherwise select "Others".</small>
          </div>

          <div class="form-group" id="otherInstituteGroup" style="display: <?= set_value('institute') === 'other' ? 'block' : 'none'; ?>;">
            <label for="otherInstitute" class="form-label">Other Institution</label>
            <input type="text" class="form-control" id="otherInstitute" name="otherInstitute" placeholder="Enter your institution name if not listed above" value="<?php echo set_value('otherInstitute'); ?>" maxlength="400">
            <small class="form-hint">Fill this only if your institution is not found in the dropdown above.</small>
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

          <!-- Section 3: Account Credentials -->
          <div class="form-section-header">
            <span class="section-number">3</span>
            <span>Account Credentials</span>
          </div>

          <div class="form-group">
            <label for="email" class="form-label">Email Address (User Name) <span class="required-star">*</span></label>
            <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" value="<?php echo htmlspecialchars((string) $userData['username'], ENT_QUOTES, 'UTF-8'); ?>" maxlength="128">
            <small class="form-hint">This email is used as your login credential and for notification alerts.</small>
          </div>

          <button type="submit" name="Update" value="Update" class="btn btn-register-submit">
            Update Account
          </button>

          <?php echo form_close(); ?>
        </div>
      </div>
    </div>
  </main>

  <?php $this->load->view('home/partials/footer'); ?>

  <!-- jquery -->
  <script src="<?= base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>

  <script type="text/javascript">
    $(document).ready(function() {
      var instituteField = $('#institute');
      var otherGroup = $('#otherInstituteGroup');
      var otherInput = $('#otherInstitute');

      function syncOtherInstitute() {
        var show = instituteField.val() === 'other';
        otherGroup.toggle(show);
        otherInput.prop('required', show);
      }

      instituteField.on('change', syncOtherInstitute);
      syncOtherInstitute();
    });
  </script>
</body>

</html>