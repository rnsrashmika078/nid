<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>National Instrument Database</title>
    <link rel="icon" href="<?= base_url(); ?>layout/img/ph3.jpg">
    <!-- Layout CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/animate.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/all.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/flaticon.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/themify-icons.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/magnific-popup.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/slick.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/style.css">
    <link rel="stylesheet" href="<?= base_url(); ?>layout/css/home.css">
    <!-- Page CSS -->
    <link rel="stylesheet" href="<?= base_url('layout/css/contactView.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/contactView.css'); ?>">
</head>

<body>
    <a class="skip-link" href="#main-content">Skip to main content</a>
    <?php $this->load->view('home/partials/navbar_v2'); ?>

    <main id="main-content">

        <section class="contact-hero">
            <div class="container">
                <div class="contact-hero-inner">
                    <span class="contact-badge">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        Contact Us
                    </span>
                    <h1>Get In Touch</h1>
                    <p>
                        Have a question about the national instrument database, a registered laboratory or our
                        services? Send us your query and our team will get back to you.
                    </p>
                </div>
            </div>
        </section>

        <section class="contact-content">
            <div class="container">

                <?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                $success = $this->session->flashdata('success');
                if ($error) {
                ?>
                    <div class="contact-flash alert-danger">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $error; ?>
                    </div>
                <?php } ?>
                <?php if ($success) {
                ?>
                    <div class="contact-flash alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $success; ?>
                    </div>
                <?php } ?>
                <?php echo validation_errors('<div class="contact-flash alert-danger"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>', '</div>'); ?>

                <div class="contact-card">
                    <div class="contact-card-header">
                        <div>
                            <h2>
                                <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                Send Us A Message
                            </h2>
                            <p>Fill in the form below and we will respond as soon as possible</p>
                        </div>
                    </div>

                    <div class="contact-card-body">
                        <div class="row">
                            <div class="col-lg-7">
                                <form class="contact-form" action="<?php echo base_url('sendFeedback'); ?>" method="post" novalidate="novalidate" enctype="multipart/form-data" role="form">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="name">Name</label>
                                                <input class="form-control" name="name" id="name" type="text" placeholder="Enter your name" value="<?php echo set_value('name'); ?>">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="email">E-mail</label>
                                                <input class="form-control" name="email" id="email" type="email" placeholder="Enter email address" value="<?php echo set_value('email'); ?>">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="phone">Mobile Number</label>
                                                <input class="form-control" name="phone" id="phone" type="text" placeholder="Enter phone number" value="<?php echo set_value('phone'); ?>">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="subject">Subject</label>
                                                <input class="form-control" name="subject" id="subject" type="text" placeholder="Subject (Attention: Institute Name)" value="<?php echo set_value('subject'); ?>">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="message">Message</label>
                                                <textarea class="form-control" name="message" id="message" cols="30" rows="6" placeholder="Enter Message"><?php echo set_value('message'); ?></textarea>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="imageUpload">Image Upload</label>
                                                <input class="form-control" name="imageUpload" id="imageUpload" type="file">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mt-3">
                                        <button type="submit" value="submit" class="contact-submit-btn">
                                            <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                            Send Message
                                        </button>
                                    </div>
                                </form>
                            </div>

                            <div class="col-lg-5">
                                <div class="contact-info-panel">
                                    <h3 class="contact-info-title">Contact Information</h3>

                                    <div class="contact-info-item">
                                        <span class="contact-info-icon"><i class="ti-home"></i></span>
                                        <div>
                                            <h3>Address</h3>
                                            <p># 47/5, Maitland Place,<br>Colombo 07, Sri Lanka</p>
                                        </div>
                                    </div>

                                    <div class="contact-info-item">
                                        <span class="contact-info-icon"><i class="ti-tablet"></i></span>
                                        <div>
                                            <h3>Phone &amp; Hours</h3>
                                            <p>Tel: +94 (0)11 2 696771</p>
                                            <p>Fax: +94 (0)11 2 694754</p>
                                            <p>Mon to Fri 8.30am to 4.15pm</p>
                                        </div>
                                    </div>

                                    <div class="contact-info-item">
                                        <span class="contact-info-icon"><i class="ti-email"></i></span>
                                        <div>
                                            <h3>E-mail</h3>
                                            <p>info@nsf.gov.lk</p>
                                            <p>Send us your query anytime!</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="contact-card contact-map-card">
                    <div class="contact-card-header">
                        <div>
                            <h2>
                                <i class="fa fa-map-marker-alt" aria-hidden="true"></i>
                                Find Us
                            </h2>
                            <p>National Science Foundation, # 47/5, Maitland Place, Colombo 07</p>
                        </div>
                    </div>
                    <iframe class="contact-map" src="https://maps.google.com/maps?q=247/5,%20Maitland%20Place,%20Colombo%2007&t=&z=13&ie=UTF8&iwloc=&output=embed" title="National Science Foundation location map" allowfullscreen></iframe>
                </div>

            </div>
        </section>

    </main>

    <?php $this->load->view('home/partials/footer'); ?>

    <script src="<?= base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>
    <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>
</body>

</html>