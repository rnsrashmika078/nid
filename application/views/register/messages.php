<?php
$successMessage = $this->session->flashdata('success');
$errorMessage = $this->session->flashdata('error');
$validationErrors = isset($validationErrors) && is_array($validationErrors) ? $validationErrors : [];
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
<?php } ?>

<?php if (!empty($validationErrors)) { ?>
  <div class="register-toast register-toast--error" role="alert" data-register-toast>
    <span class="register-toast__icon" aria-hidden="true">!</span>
    <div class="register-toast__content">
      <strong>Please fix the following</strong>
      <ul class="register-toast__list">
        <?php foreach ($validationErrors as $validationError) { ?>
          <li><?= htmlspecialchars($validationError, ENT_QUOTES, 'UTF-8'); ?></li>
        <?php } ?>
      </ul>
    </div>
    <button class="register-toast__close" type="button" aria-label="Dismiss notification" data-dismiss-register-toast>&times;</button>
  </div>
<?php } ?>

<?php if ($successMessage || $errorMessage || !empty($validationErrors)) { ?>
  <script>
    (function () {
      var toasts = document.querySelectorAll('[data-register-toast]');
      if (!toasts.length) return;
      var dismiss = function (toast) {
        if (toast.classList.contains('register-toast--leaving')) return;
        var remove = function () { toast.remove(); };
        toast.addEventListener('transitionend', remove, { once: true });
        toast.classList.add('register-toast--leaving');
      };
      toasts.forEach(function (toast) {
        var closeBtn = toast.querySelector('[data-dismiss-register-toast]');
        if (closeBtn) closeBtn.addEventListener('click', function () { dismiss(toast); });
        window.setTimeout(function () { dismiss(toast); }, 6500);
      });
    }());
  </script>
<?php } ?>