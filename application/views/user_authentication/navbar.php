<head>
    <link rel="stylesheet"
        href="<?= base_url('layout/css/navbarlogin.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/navbarlogin.css'); ?>">
</head>

<nav class="navbar navbar-expand-lg navbar-light">

    <a class="navbar-brand pl-lg-5" href="<?= base_url('home'); ?>">
        <img src="<?= base_url(); ?>catalogUploads/nsf_logo.png" alt="NSF Logo">
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

    <div class="collapse navbar-collapse pr-lg-5" id="navbarSupportedContent">

        <ul class="navbar-nav ml-auto">

            <li class="nav-item mx-lg-3">
                <a class="nav-link" href="<?= base_url('home'); ?>">
                    Home
                </a>
            </li>

            <li class="nav-item mx-lg-3">
                <a class="nav-link" href="<?= base_url('eproductView'); ?>">
                    Product Category
                </a>
            </li>

            <li class="nav-item mx-lg-3">
                <a class="nav-link" href="<?= base_url('einstituteView'); ?>">
                    Institutes
                </a>
            </li>

            <li class="nav-item mx-lg-3">
                <a class="nav-link" href="<?= base_url('contact'); ?>">
                    Contact
                </a>
            </li>

            <!-- Dashboard -->
            <li class="nav-item mx-lg-2 my-2 my-lg-0">
                <a
                    href="<?= base_url('homedashboard'); ?>"
                    class="btn dashboard-btn"
                    role="button">
                    Dashboard
                </a>
            </li>

            <!-- Login -->
            <li class="nav-item mx-lg-2 my-2 my-lg-0">
                <a
                    href="<?= base_url('user_authentication'); ?>"
                    class="btn login-btn"
                    role="button">
                    Login
                </a>
            </li>

            <!-- Register -->
            <li class="nav-item mx-lg-2 my-2 my-lg-0">
                <a
                    href="<?= base_url('register'); ?>"
                    class="btn register-btn"
                    role="button">
                    Register
                </a>
            </li>

        </ul>

    </div>
</nav>