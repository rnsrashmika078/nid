<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Verify Email | National Instrument Database</title>
    <link rel="icon" href="<?= base_url(); ?>layout/img/ph3.jpg">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/bootstrap.min.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/all.css">
    <link rel="stylesheet" href="<?= base_url('layout/css/login.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/login.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('layout/css/verifyEmail.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/verifyEmail.css'); ?>">
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
                            <div class="verify-header">
                                <div class="verify-icon">
                                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                                        <polyline points="22,6 12,13 2,6"></polyline>
                                    </svg>
                                </div>
                                <h1 class="verify-title">Verify Your Email</h1>
                                <p class="verify-subtitle">A 6-digit verification code was sent to your email address. Enter the code below to activate your account.</p>

                                <?php $registered_email = $this->session->userdata('userName'); ?>
                                <?php if ($registered_email): ?>
                                    <div class="verify-email-chip">
                                        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                                            <polyline points="22,6 12,13 2,6"></polyline>
                                        </svg>
                                        <span><?= htmlspecialchars($registered_email, ENT_QUOTES, 'UTF-8'); ?></span>
                                    </div>
                                <?php endif; ?>
                            </div>

                            <div class="verify-box-body">
                                <?php $this->load->view('user_authentication/messages'); ?>

                                <?php if (!empty($error)): ?>
                                    <div class="verify-inline-error"><?php echo $error; ?></div>
                                <?php endif; ?>

                                <form action="<?= site_url('register/verifyUser'); ?>" method="post" id="verifyForm" novalidate>
                                    <div class="code-input-wrapper">
                                        <input class="form-control code-input"
                                            type="text"
                                            inputmode="numeric"
                                            maxlength="6"
                                            autocomplete="one-time-code"
                                            placeholder="000000"
                                            name="code"
                                            id="verifyCode"
                                            required>
                                    </div>
                                    <div class="verify-form-actions">
                                        <button type="submit" class="btn verify-submit-btn" id="verifySubmitBtn">
                                            Verify Email
                                        </button>
                                    </div>
                                </form>

                                <div class="verify-resend">
                                    <div class="verify-resend-title">Didn't receive the code?</div>
                                    <div class="verify-resend-hint">Check your spam or junk folder, or resend the code.</div>
                                    <form action="<?= site_url('register/resendCode'); ?>" method="post" class="verify-resend-form" id="resendForm">
                                        <button type="submit" class="btn resend-btn" id="resendBtn">
                                            Resend Code
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="footer_part" style="background: #070300;">
        <div class="container">
            <div class="row justify-content-around">
                <div class="col-sm-6 col-lg-5">
                    <div class="single_footer_part">
                        <h4 style="color: #FFFFFF;">Contact Us</h4>
                        <ul class="list-unstyled">
                            <li><p style="color: #FFFFFF;">National Science Foundation</p></li>
                            <li><p style="color: #FFFFFF;"># 47/5, Maitland Place, Colombo 07</p></li>
                            <li><p style="color: #FFFFFF;">Phone : +94 (0)11 2 696771, Fax : +94 (0)11 2 694754</p></li>
                            <li><p style="color: #FFFFFF;">Email : info@nsf.gov.lk</p></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-4">
                    <div class="single_footer_part">
                        <h4 style="color: #FFFFFF;">Quick Links</h4>
                        <ul class="list-unstyled">
                            <li><a href="http://www.nsf.ac.lk/" style="color: #FFFFFF;" target="_blank">NSF Home</a></li>
                            <li><a href="https://gdp.nsf.gov.lk/" style="color: #FFFFFF;" target="_blank">Global Digital Platform</a></li>
                            <li><a href="https://stmis.nsf.gov.lk/" style="color: #FFFFFF;" target="_blank">S &amp; T Management Information System</a></li>
                            <li><a href="http://viduketha.nsf.gov.lk/RTGRA" style="color: #FFFFFF;" target="_blank">Research &amp; Technology Grant Database</a></li>
                            <li><a href="http://viduketha.nsf.gov.lk" style="color: #FFFFFF;" target="_blank">Viduketha</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-3">
                    <div class="single_footer_part">
                        <h4 style="color: #FFFFFF;">Subscribe to NSF eAlerts</h4>
                        <a href="http://lists.nsf.gov.lk/" class="button rounded-0 primary-bg text-white w-10 btn_1" style="background-color:#EE9310;" target="_blank">subscribe</a>
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
                                <P style="color: #FFFFFF;">Copyright &copy;<script>
                                        document.write(new Date().getFullYear());
                                    </script> All rights reserved | Powered by National Science Foundation of Sri Lanka</P>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- jquery -->
    <script src="<?= base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="<?= base_url(); ?>layout/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>
    <script src="<?= base_url(); ?>layout/js/custom.js"></script>

    <script>
        (function() {
            var codeInput = document.getElementById('verifyCode');
            var verifyForm = document.getElementById('verifyForm');
            var submitBtn = document.getElementById('verifySubmitBtn');
            var resendBtn = document.getElementById('resendBtn');

            if (codeInput) {
                codeInput.focus();
                codeInput.addEventListener('input', function() {
                    var sanitized = codeInput.value.replace(/[^0-9]/g, '').slice(0, 6);
                    if (codeInput.value !== sanitized) {
                        codeInput.value = sanitized;
                    }
                    codeInput.classList.remove('login-field--invalid');
                });
            }

            if (verifyForm && codeInput) {
                verifyForm.addEventListener('submit', function(event) {
                    codeInput.classList.remove('login-field--invalid');
                    if (!codeInput.value.trim()) {
                        codeInput.classList.add('login-field--invalid');
                        codeInput.focus();
                        event.preventDefault();
                        return;
                    }
                    if (codeInput.value.trim().length !== 6) {
                        codeInput.classList.add('login-field--invalid');
                        codeInput.focus();
                        event.preventDefault();
                        return;
                    }
                    if (submitBtn) submitBtn.disabled = true;
                });
            }

            if (resendBtn) {
                resendBtn.addEventListener('click', function() {
                    resendBtn.disabled = true;
                    resendBtn.textContent = 'Sending...';
                });
            }
        }());
    </script>
</body>

</html>