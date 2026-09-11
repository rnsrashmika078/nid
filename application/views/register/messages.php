<?php
$successMessage = $this->session->flashdata('success');
$errorMessage = $this->session->flashdata('error');
?>

<?php if ($successMessage || $errorMessage) { ?>
  <?php $isSuccess = (bool) $successMessage; ?>
  <div class="register-toast register-toast--<?= $isSuccess ? 'success' : 'error'; ?>" role="alert" data-register-toast>
    <span class="register-toast__icon" aria-hidden="true"><?= $isSuccess ? '✓' : '!'; ?></span>
    <div class="register-toast__content">
      <strong><?= $isSuccess ? 'Success' : 'Registration failed'; ?></strong>
      <span><?= htmlspecialchars($isSuccess ? $successMessage : $errorMessage, ENT_QUOTES, 'UTF-8'); ?></span>
    </div>
    <button class="register-toast__close" type="button" aria-label="Dismiss notification" data-dismiss-register-toast>&times;</button>
  </div>
  <script>
    (function () {
      var toast = document.querySelector('[data-register-toast]');
      if (!toast) return;
      var dismiss = function () { toast.classList.add('register-toast--leaving'); };
      toast.querySelector('[data-dismiss-register-toast]').addEventListener('click', dismiss);
      window.setTimeout(dismiss, 6000);
    }());
  </script>
<?php } ?>
