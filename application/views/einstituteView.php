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
    <link rel="stylesheet" href="<?= base_url('layout/css/einstituteView.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/einstituteView.css'); ?>">
</head>

<body>
    <a class="skip-link" href="#main-content">Skip to main content</a>
    <?php $this->load->view('home/partials/navbar_v2'); ?>

    <main id="main-content">

        <section class="einstitute-hero">
            <div class="container">
                <div class="einstitute-hero-inner">
                    <span class="einstitute-badge">
                        <i class="fa fa-building" aria-hidden="true"></i>
                        Institutes Directory
                    </span>
                    <h1>Registered Institutes</h1>
                    <p>
                        Browse the national directory of registered research institutes, along with their
                        coordinators, contact details and areas of work.
                    </p>
                    <a href="<?= base_url('google'); ?>" class="einstitute-hero-btn">
                        <i class="fa fa-map-marker-alt" aria-hidden="true"></i>
                        View Institutes in a Google Map
                    </a>
                </div>
            </div>
        </section>

        <section class="einstitute-content">
            <div class="container-fluid">

                <?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                $success = $this->session->flashdata('success');
                if ($error) {
                ?>
                    <div class="einstitute-flash alert-danger">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $error; ?>
                    </div>
                <?php } ?>
                <?php if ($success) {
                ?>
                    <div class="einstitute-flash alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $success; ?>
                    </div>
                <?php } ?>

                <div class="einstitute-card">
                    <div class="einstitute-card-header">
                        <div>
                            <h2>
                                <i class="fa fa-university" aria-hidden="true"></i>
                                Registered Institutes
                            </h2>
                            <p>Institutes registered in the national instrument database</p>
                        </div>
                        <span class="einstitute-count-badge">
                            <i class="fa fa-database" aria-hidden="true"></i>
                            <?= count($instituteRecords); ?> records
                        </span>
                    </div>

                    <div class="einstitute-card-body">
                        <div class="einstitute-table-wrap">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Institute Name</th>
                                        <th>Institute Coordinator</th>
                                        <th>Address</th>
                                        <th>Phone Number</th>
                                        <th>Email</th>
                                        <th>Ministry</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    if (!empty($instituteRecords)) {
                                        foreach ($instituteRecords as $record) {
                                    ?>
                                            <tr>
                                                <td>
                                                    <span class="einstitute-row-num"><?php echo $no++; ?></span>
                                                </td>
                                                <td>
                                                    <span class="einstitute-plain"><?php echo htmlspecialchars((string) $record->name, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="einstitute-plain"><?php echo htmlspecialchars((string) $record->inst_coordinator, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="einstitute-plain"><?php echo nl2br(htmlspecialchars((string) $record->address, ENT_QUOTES, 'UTF-8')); ?></span>
                                                </td>
                                                <td>
                                                    <span class="einstitute-plain"><?php echo htmlspecialchars((string) $record->phone_number, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="einstitute-plain"><?php echo htmlspecialchars((string) $record->email, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="einstitute-plain"><?php echo htmlspecialchars((string) $record->ministry, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="einstitute-plain"><?php echo nl2br(htmlspecialchars((string) $record->description, ENT_QUOTES, 'UTF-8')); ?></span>
                                                </td>
                                            </tr>
                                    <?php
                                        }
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>

                        <?php if (empty($instituteRecords)) { ?>
                            <div class="einstitute-empty">
                                <i class="fa fa-inbox" aria-hidden="true"></i>
                                <p>No institutes found yet.</p>
                            </div>
                        <?php } ?>
                    </div>
                </div>

            </div>
        </section>

    </main>

    <?php $this->load->view('home/partials/footer'); ?>

    <script src="<?= base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>
    <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>
</body>

</html>