<style>
    body {
        background-color: var(--bg-page) !important;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        color: var(--text-body);
        margin: 0;
        padding: 0;
    }

    .skip-link {
        position: fixed;
        top: 8px;
        left: 8px;
        z-index: 1100;
        padding: 10px 14px;
        transform: translateY(-140%);
        background: #2f2a26;
        color: #ffffff !important;
        font-size: 14px;
        font-weight: 700;
        border-radius: 3px;
        transition: transform .2s ease;
    }

    .skip-link:focus {
        transform: translateY(0);
    }

    .navbar {
        background: #FFFFFF;
        border-bottom: 1px solid #f1f5f9;
        box-shadow: none;
        position: sticky;
        top: 0;
        z-index: 1000;
        min-height: 80px;
        height: auto;
        width: 100%;
        max-width: 100%;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .navbar .nav-shell {
        display: flex;
        align-items: center;
        flex-wrap: wrap;
        justify-content: space-between;
        width: 100%;
        max-width: 1400px;
        margin: 0 auto;
        padding-right: 24px;
        padding-left: 24px;
        box-sizing: border-box;
    }

    .navbar .navbar-brand {
        display: flex;
        align-items: center;
        margin-right: 24px;
        padding: 0;
    }

    .navbar .navbar-brand img {
        height: 56px;
        width: auto;
        object-fit: contain;
    }

    .navbar .nav-link {
        font-size: 17px;
        font-weight: 500;
        color: #374151 !important;
        letter-spacing: 0.2px;
        border-radius: 6px;
    }

    .navbar .nav-item.active .nav-link,
    .navbar .nav-link:hover,
    .navbar .nav-link:focus {
        color: #ea580c !important;
    }

    .navbar .navbar-toggler {
        border: 0;
        outline: 0;
        padding: 6px 10px;
        color: #111827;
        font-size: 24px;
    }

    .navbar .navbar-toggler:focus,
    .navbar .navbar-toggler:active {
        outline: 0;
        box-shadow: none;
    }

    .navbar .nav-actions {
        align-items: center;
        gap: 8px;
    }

    .navbar .nav-actions .nav-item {
        margin: 0;
    }

    .navbar .nav-center .nav-item.active .nav-link {
        font-weight: 600;
    }

    .navbar .dashboard-btn {
        background-color: #EE9310;
        text-transform: uppercase;
        color: #fff;
        min-width: 125px;
        height: 43px;
        padding: 0 18px;
        border-radius: 8px;
        border: none !important;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-weight: 600;
        font-size: 13px;
        letter-spacing: 0.5px;
        white-space: nowrap;
    }

    .navbar .dashboard-btn:hover,
    .navbar .dashboard-btn:active,
    .navbar .dashboard-btn:focus {
        background-color: #d88106 !important;
        color: #FFFFFF;
        border: none !important;
        transition: all 0.3s ease;
    }

    .navbar .login-btn {
        background-color: #FFF7EC;
        text-transform: uppercase;
        color: #C96F00;
        min-width: 170px;
        height: 43px;
        padding: 0 18px;
        border-radius: 8px;
        border: 1px solid #EE9310 !important;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-weight: 600;
        font-size: 13px;
        letter-spacing: 0.5px;
        white-space: nowrap;
    }

    .navbar .login-btn:hover,
    .navbar .login-btn:active,
    .navbar .login-btn:focus {
        background-color: #EE9310 !important;
        color: #FFFFFF;
        border: 1px solid #EE9310 !important;
        transition: all 0.3s ease;
    }

    .navbar .register-btn {
        background-color: #F8F8F8;
        text-transform: uppercase;
        color: #EE9310;
        min-width: 125px;
        height: 43px;
        padding: 0 18px;
        border-radius: 8px;
        border: 1px solid #EE9310 !important;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-weight: 600;
        font-size: 13px;
        letter-spacing: 0.5px;
        white-space: nowrap;
    }

    .navbar .register-btn:hover,
    .navbar .register-btn:active,
    .navbar .register-btn:focus {
        background-color: #EE9310 !important;
        color: #FFFFFF;
        border: 1px solid #EE9310 !important;
        transition: all 0.3s ease;
    }

    .navbar .tech-register-btn {
        background-color: #FFF7EC;
        text-transform: uppercase;
        color: #C96F00;
        min-width: 185px;
        height: 43px;
        padding: 0 18px;
        border-radius: 8px;
        border: 1px solid #EE9310 !important;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-weight: 600;
        font-size: 12.5px;
        letter-spacing: 0.4px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .navbar .tech-register-btn:hover,
    .navbar .tech-register-btn:active,
    .navbar .tech-register-btn:focus {
        background-color: #EE9310 !important;
        color: #FFFFFF;
        border: 1px solid #EE9310 !important;
        transition: all 0.3s ease;
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

    @media (max-width: 991.98px) {

        html,
        body {
            width: 100%;
            max-width: 100%;
            overflow-x: hidden;
        }

        .navbar {
            width: 100%;
            max-width: 100%;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .navbar .nav-shell {
            width: 100%;
            max-width: 100%;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .navbar .navbar-brand {
            margin-left: 0;
            padding-left: 16px;
        }

        .navbar .navbar-toggler {
            margin-right: 0;
            padding-right: 16px;
        }

        .navbar .navbar-collapse {
            width: 100% !important;
            max-width: 100% !important;
            flex: 0 0 100% !important;
            box-sizing: border-box !important;
            margin: 10px 0 0 0 !important;
            padding: 14px 12px 12px !important;
            border-top: 1px solid #f1f5f9;
            overflow-x: hidden;
        }

        .navbar .nav-center,
        .navbar .nav-actions {
            width: 100% !important;
            max-width: 100% !important;
            margin-left: 0 !important;
            margin-right: 0 !important;
            padding: 0 !important;
            box-sizing: border-box;
        }

        .navbar .nav-center {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        .navbar .nav-actions {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        .navbar .nav-center .nav-item,
        .navbar .nav-actions .nav-item {
            width: 100% !important;
            max-width: 100% !important;
            margin: 0 !important;
            box-sizing: border-box;
        }

        .navbar .nav-center .nav-link {
            width: 100%;
            box-sizing: border-box;
            text-align: center;
            padding: 12px 10px;
            border-radius: 8px;
        }

        .navbar .nav-center .nav-link:hover,
        .navbar .nav-center .nav-item.active .nav-link {
            background-color: #FFF7EC;
        }

        .navbar .nav-actions .btn,
        .navbar .nav-actions .dropdown,
        .navbar .nav-actions .user-dropdown-toggle {
            width: 100% !important;
            max-width: 100% !important;
            min-width: 0 !important;
            box-sizing: border-box;
        }

        .navbar .nav-actions .user-dropdown-toggle {
            justify-content: center;
        }

        .navbar .nav-actions .dropdown {
            display: block;
        }

        .navbar .nav-actions .user-dropdown-menu {
            position: static;
            width: 100%;
            min-width: 0;
            margin-top: 6px;
            box-sizing: border-box;
        }
    }

    @media (max-width: 575.98px) {
        .navbar {
            min-height: 70px;
        }

        .navbar .navbar-brand img {
            height: 52px;
        }

        .navbar .navbar-brand {
            padding-left: 12px;
        }

        .navbar .navbar-toggler {
            padding-right: 12px;
        }

        .navbar .navbar-collapse {
            margin-top: 8px !important;
            padding: 12px 8px 10px !important;
        }

        .navbar .nav-center .nav-link {
            padding: 11px 8px;
            font-size: 16px;
        }

        .navbar .dashboard-btn,
        .navbar .login-btn,
        .navbar .register-btn,
        .navbar .tech-register-btn {
            height: 48px;
            font-size: 14px;
        }
    }
</style>

<?php
$current_page = $this->uri->segment(1);
?>

<nav class="navbar navbar-expand-lg navbar-light" aria-label="Primary navigation">
    <div class="container-fluid nav-shell">

        <a class="navbar-brand" href="<?= base_url('home'); ?>">
            <img src="<?= base_url(); ?>catalogUploads/nsf_logo.png"
                alt="NSF Logo">
            <span class="sr-only">Official National Science Foundation instrument database</span>
        </a>

        <button class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation">
            <i class="fa fa-bars" id="navTogglerIcon" aria-hidden="true"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav nav-center mx-auto">

                <li class="nav-item mx-3 <?= ($current_page == 'home') ? 'active' : ''; ?>">
                    <a class="nav-link" href="<?= base_url('home'); ?>">
                        Home
                    </a>
                </li>

                <li class="nav-item mx-3 <?= ($current_page == 'eproductView') ? 'active' : ''; ?>">
                    <a class="nav-link" href="<?= base_url('eproductView'); ?>">
                        Product Category
                    </a>
                </li>

                <li class="nav-item mx-3 <?= ($current_page == 'einstituteView') ? 'active' : ''; ?>">
                    <a class="nav-link" href="<?= base_url('einstituteView'); ?>">
                        Institutes
                    </a>
                </li>

                <li class="nav-item mx-3 <?= ($current_page == 'elaboratories') ? 'active' : ''; ?>">
                    <a class="nav-link" href="<?= base_url('elaboratories'); ?>">
                        Laboratories
                    </a>
                </li>

                <li class="nav-item mx-3 <?= ($current_page == 'contact') ? 'active' : ''; ?>">
                    <a class="nav-link" href="<?= base_url('contact'); ?>">
                        Contact
                    </a>
                </li>

            </ul>

            <ul class="navbar-nav nav-actions">

                <li class="nav-item">
                    <a href="<?= base_url('homedashboard'); ?>"
                        class="btn dashboard-btn"
                        role="button"
                        style="font-size:16px;">
                        Explore
                    </a>
                </li>

                <?php
                $isLoggedIn = $this->session->userdata('loggedIn') == true
                    || $this->session->userdata('isLoggedIn') == true
                    || !empty($this->session->userdata('userId'));
                ?>

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

                    if (mb_strlen($displayName) > 6) {
                        $displayName = mb_substr($displayName, 0, 6) . '...';
                    }
                    ?>

                    <li class="nav-item">
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
                                <a class="dropdown-item" href="<?= base_url('dashboard'); ?>">
                                    Dashboard
                                </a>

                                <div class="dropdown-divider"></div>

                                <a class="dropdown-item logout-item" href="<?= base_url('logout'); ?>">
                                    Logout
                                </a>
                            </div>
                        </div>
                    </li>

                <?php else: ?>

                    <li class="nav-item">
                        <a href="<?= base_url('user_authentication'); ?>"
                            class="btn login-btn"
                            role="button"
                            style="font-size:15px;">
                            Login / Register
                        </a>
                    </li>

                <?php endif; ?>

                <!-- Always show Register as Technician button -->
                <li class="nav-item">
                    <a href="<?= env('REACT_LOGIN_URL', 'http://localhost:5173/auth/login'); ?>"
                        class="btn tech-register-btn"
                        role="button"
                        title="Register as a technician / instrument specialist">
                        Register as Technician
                    </a>
                </li>

            </ul>

        </div>

    </div>
</nav>

<script>
    (function() {
        var toggler = document.querySelector('#navbarSupportedContent');
        var icon = document.getElementById('navTogglerIcon');

        if (!toggler || !icon) {
            return;
        }

        icon.className = 'fa fa-bars';
        icon.setAttribute('aria-hidden', 'true');

        var navbar = document.querySelector('.navbar-toggler');

        if (navbar) {
            navbar.addEventListener('click', function() {
                if (icon.classList.contains('fa-bars')) {
                    icon.classList.remove('fa-bars');
                    icon.classList.add('fa-times');
                } else {
                    icon.classList.remove('fa-times');
                    icon.classList.add('fa-bars');
                }
            });
        }
    })();
</script>