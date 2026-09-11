<!doctype html>
<html lang="en">

<head>
    <?php $this->load->view('home/partials/head'); ?>
</head>

<body>
    <a class="skip-link" href="#main-content">Skip to main content</a>
    <?php $this->load->view('home/partials/navbar_v2'); ?>

    <main id="main-content">
    <?php $this->load->view('home/sections/hero'); ?>
    <?php $this->load->view('home/sections/map'); ?>


    <?php $this->load->view('home/sections/news'); ?>

    <?php $this->load->view('home/sections/statistics'); ?>

    <?php $this->load->view('home/sections/instrument'); ?>

    <?php $this->load->view('home/sections/technicians'); ?>



    <?php $this->load->view('home/sections/stakeholders'); ?>

    <?php $this->load->view('home/sections/popups'); ?>

    <?php $this->load->view('home/sections/disclaimer'); ?>
    </main>

    <?php $this->load->view('home/partials/footer'); ?>

    <?php $this->load->view('home/partials/script'); ?>

</body>

</html>