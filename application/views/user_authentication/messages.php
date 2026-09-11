<?php $this->load->helper('form'); ?>
<?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button></div>'); ?>

<?php
$error = $this->session->flashdata('error');
$success = $this->session->flashdata('success');

// Consume these notifications immediately after reading them so they cannot
// reappear when the login page is opened again.
$this->session->unset_userdata('error');
$this->session->unset_userdata('success');
?>

<?php if ($error) { ?>
  <div class="alert alert-danger alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
    <?php echo $error; ?>
  </div>
<?php } elseif ($success) { ?>
  <div class="alert alert-success alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
    <?php echo $success; ?>
  </div>
<?php } ?>
