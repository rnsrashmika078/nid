<?php
$successMessage = $this->session->flashdata('success');
$errorMessage = $this->session->flashdata('error');
$validationErrors = isset($validationErrors) && is_array($validationErrors) ? $validationErrors : [];

// Consume the notifications immediately after reading them so a stale
// message can never reappear on a later page.
$this->session->unset_userdata('success');
$this->session->unset_userdata('error');

$showSuccess = !empty($successMessage);
$showError = !$showSuccess && !empty($errorMessage);
$showValidation = !$showSuccess && !$showError && !empty($validationErrors);
?>

<style>
  .register-toast {
    display: flex;
    align-items: center;
    gap: 12px;
    position: fixed;
    z-index: 1080;
    top: 24px;
    right: 24px;
    width: min(420px, calc(100vw - 32px));
    padding: 15px 18px;
    color: #173d25;
    background: #ffffff;
    border: 1px solid #b9e5c6;
    border-radius: 12px;
    box-shadow: 0 14px 32px rgba(0, 0, 0, 0.14);
    animation: register-toast-in 0.25s ease-out;
    transition: opacity 0.2s ease, transform 0.2s ease;
  }

  .register-toast--error {
    color: #7a2020;
    border-color: #f0b6b6;
  }

  .register-toast__icon {
    display: grid;
    place-items: center;
    flex: 0 0 28px;
    height: 28px;
    color: #ffffff;
    background: #249344;
    border-radius: 50%;
    font-weight: 700;
    font-size: 14px;
  }

  .register-toast--error .register-toast__icon {
    background: #d63a3a;
  }

  .register-toast__content {
    display: grid;
    gap: 2px;
    flex: 1;
  }

  .register-toast__content strong {
    font-size: 14.5px;
    font-weight: 700;
  }

  .register-toast__content span {
    font-size: 13.5px;
  }

  .register-toast__list {
    margin: 4px 0 0;
    padding: 0 0 0 16px;
  }

  .register-toast__list li {
    font-size: 13px;
    line-height: 1.5;
  }

  .register-toast__close {
    padding: 0 4px;
    color: inherit;
    background: transparent;
    border: 0;
    font-size: 22px;
    line-height: 1;
    cursor: pointer;
    opacity: 0.6;
    transition: opacity 0.2s ease;
  }

  .register-toast__close:hover {
    opacity: 1;
  }

  .register-toast--leaving {
    opacity: 0;
    transform: translateY(-10px);
    pointer-events: none;
  }

  @keyframes register-toast-in {
    from { opacity: 0; transform: translateY(-10px); }
    to { opacity: 1; transform: translateY(0); }
  }
</style>

<?php if ($showSuccess) { ?>
  <div class="register-toast" role="alert" data-register-toast>
    <span class="register-toast__icon" aria-hidden="true">✓</span>
    <div class="register-toast__content">
      <strong>Success</strong>
      <span><?= htmlspecialchars($successMessage, ENT_QUOTES, 'UTF-8'); ?></span>
    </div>
    <button class="register-toast__close" type="button" aria-label="Dismiss notification" data-dismiss-register-toast>&times;</button>
  </div>
<?php } ?>

<?php if ($showError) { ?>
  <div class="register-toast register-toast--error" role="alert" data-register-toast>
    <span class="register-toast__icon" aria-hidden="true">!</span>
    <div class="register-toast__content">
      <strong>Error</strong>
      <span><?= htmlspecialchars($errorMessage, ENT_QUOTES, 'UTF-8'); ?></span>
    </div>
    <button class="register-toast__close" type="button" aria-label="Dismiss notification" data-dismiss-register-toast>&times;</button>
  </div>
<?php } ?>

<?php if ($showValidation) { ?>
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

<?php if ($showSuccess || $showError || $showValidation) { ?>
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