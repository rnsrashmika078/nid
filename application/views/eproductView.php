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
    <link rel="stylesheet" href="<?= base_url('layout/css/eproductView.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/eproductView.css'); ?>">
</head>

<body>
    <a class="skip-link" href="#main-content">Skip to main content</a>
    <?php $this->load->view('home/partials/navbar_v2'); ?>

    <main id="main-content">

        <section class="eproduct-hero">
            <div class="container">
                <div class="eproduct-hero-inner">
                    <span class="eproduct-badge">
                        <i class="fa fa-boxes" aria-hidden="true"></i>
                        Product Directory
                    </span>
                    <h1>Product Category / Test Name (Matrix)</h1>
                    <p>
                        Explore the national catalogue of product categories and test matrices offered by registered
                        institutes, together with their testing parameters and relevant instruments.
                    </p>
                </div>
            </div>
        </section>

        <section class="eproduct-content">
            <div class="container-fluid">

                <?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                $success = $this->session->flashdata('success');
                if ($error) {
                ?>
                    <div class="eproduct-flash alert-danger">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $error; ?>
                    </div>
                <?php } ?>
                <?php if ($success) {
                ?>
                    <div class="eproduct-flash alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $success; ?>
                    </div>
                <?php } ?>

                <div class="eproduct-card">
                    <div class="eproduct-card-header">
                        <div>
                            <h2>
                                <i class="fa fa-th-large" aria-hidden="true"></i>
                                Product Catalogue
                            </h2>
                            <p>Registered product categories / test names and their details</p>
                        </div>
                        <span class="eproduct-count-badge">
                            <i class="fa fa-database" aria-hidden="true"></i>
                            <?= count($categoryRecords); ?> records
                        </span>
                    </div>

                    <div class="eproduct-card-body">
                        <div class="eproduct-table-wrap">
                            <table class="table eproduct-table" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Institute Name</th>
                                        <th>Product Category / Test Name (Matrix)</th>
                                        <th>Sub Category</th>
                                        <th>Testing Parameters</th>
                                        <th>Description</th>
                                        <th>Relevant Instruments</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    if (!empty($categoryRecords)) {
                                        foreach ($categoryRecords as $record) {
                                    ?>
                                            <tr>
                                                <td>
                                                    <span class="eproduct-row-num"><?php echo $no++; ?></span>
                                                </td>
                                                <td>
                                                    <span class="eproduct-plain"><?php echo htmlspecialchars((string) $record->name, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="eproduct-plain"><?php echo htmlspecialchars((string) $record->instrument_type, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="eproduct-plain"><?php echo nl2br(htmlspecialchars((string) $record->keywords, ENT_QUOTES, 'UTF-8')); ?></span>
                                                </td>
                                                <td>
                                                    <span class="eproduct-plain"><?php echo nl2br(htmlspecialchars((string) $record->parameters, ENT_QUOTES, 'UTF-8')); ?></span>
                                                </td>
                                                <td>
                                                    <span class="eproduct-plain"><?php echo nl2br(htmlspecialchars((string) $record->description, ENT_QUOTES, 'UTF-8')); ?></span>
                                                </td>
                                                <td>
                                                    <span class="eproduct-plain"><?php echo htmlspecialchars((string) $record->relevant_instruments, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                            </tr>
                                    <?php
                                        }
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>

                        <?php if (empty($categoryRecords)) { ?>
                            <div class="eproduct-empty">
                                <i class="fa fa-inbox" aria-hidden="true"></i>
                                <p>No product categories found yet.</p>
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