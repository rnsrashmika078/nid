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
    <link rel="stylesheet" href="<?= base_url('layout/css/elaboratoriesView.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/elaboratoriesView.css'); ?>">
</head>

<body>
    <a class="skip-link" href="#main-content">Skip to main content</a>
    <?php $this->load->view('home/partials/navbar_v2'); ?>

    <main id="main-content">

        <section class="elaboratories-hero">
            <div class="container">
                <div class="elaboratories-hero-inner">
                    <span class="elaboratories-badge">
                        <i class="fa fa-flask" aria-hidden="true"></i>
                        Laboratories Directory
                    </span>
                    <h1>Registered Laboratories</h1>
                    <p>
                        Browse the national directory of registered laboratories, together with their host institutes,
                        accreditation details and contact information.
                    </p>
                </div>
            </div>
        </section>

        <section class="elaboratories-content">
            <div class="container-fluid">

                <?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                $success = $this->session->flashdata('success');
                if ($error) {
                ?>
                    <div class="elaboratories-flash alert-danger">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $error; ?>
                    </div>
                <?php } ?>
                <?php if ($success) {
                ?>
                    <div class="elaboratories-flash alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $success; ?>
                    </div>
                <?php } ?>

                <div class="elaboratories-card">
                    <div class="elaboratories-card-header">
                        <div>
                            <h2>
                                <i class="fa fa-flask" aria-hidden="true"></i>
                                Laboratories
                            </h2>
                            <p>Laboratories registered in the national instrument database</p>
                        </div>
                        <span class="elaboratories-count-badge">
                            <i class="fa fa-database" aria-hidden="true"></i>
                            <?= count($laboratoryRecords); ?> records
                        </span>
                    </div>

                    <div class="elaboratories-card-body">
                        <div class="elaboratories-table-wrap">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Laboratory Name</th>
                                        <th>Institute Detail</th>
                                        <th>Contact Detail</th>
                                        <th>Description</th>
                                        <th>Accreditation Detail</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    if (!empty($laboratoryRecords)) {
                                        foreach ($laboratoryRecords as $record) {
                                    ?>
                                            <tr>
                                                <td>
                                                    <span class="elaboratories-row-num"><?php echo $no++; ?></span>
                                                </td>
                                                <td>
                                                    <span class="elaboratories-plain"><?php echo htmlspecialchars((string) $record->laboratory_name, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="elaboratories-label">Institute:</span>
                                                    <span class="elaboratories-v"><?php echo htmlspecialchars((string) $record->name, ENT_QUOTES, 'UTF-8'); ?></span>
                                                    <?php if (!empty($record->faculty_name)) { ?>
                                                        <br>
                                                        <span class="elaboratories-label">Faculty:</span>
                                                        <span class="elaboratories-v"><?php echo htmlspecialchars((string) $record->faculty_name, ENT_QUOTES, 'UTF-8'); ?></span>
                                                    <?php } ?>
                                                    <br>
                                                    <span class="elaboratories-label">Department:</span>
                                                    <span class="elaboratories-v"><?php echo htmlspecialchars((string) $record->department_name, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <span class="elaboratories-label">Address:</span>
                                                    <span class="elaboratories-v"><?php echo htmlspecialchars((string) $record->laboratory_address, ENT_QUOTES, 'UTF-8'); ?></span>
                                                    <br>
                                                    <span class="elaboratories-label">Phone:</span>
                                                    <span class="elaboratories-v"><?php echo htmlspecialchars((string) $record->phone_number, ENT_QUOTES, 'UTF-8'); ?></span>
                                                    <br>
                                                    <span class="elaboratories-label">Email:</span>
                                                    <span class="elaboratories-v"><?php echo htmlspecialchars((string) $record->email, ENT_QUOTES, 'UTF-8'); ?></span>
                                                </td>
                                                <td>
                                                    <button type="button" class="elaboratories-view-btn" onclick="openLabPopup(<?php echo (int) $record->laboratory_id; ?>)">
                                                        <i class="fa fa-eye" aria-hidden="true"></i>
                                                        View
                                                    </button>
                                                    <div id="labPopup_<?php echo (int) $record->laboratory_id; ?>" class="elaboratories-popup">
                                                        <div class="elaboratories-popup-content">
                                                            <span class="elaboratories-popup-close" onclick="closeLabPopup(<?php echo (int) $record->laboratory_id; ?>)">&times;</span>
                                                            <h3><?php echo htmlspecialchars((string) $record->name, ENT_QUOTES, 'UTF-8'); ?></h3>
                                                            <p class="elaboratories-popup-meta"><?php echo htmlspecialchars((string) $record->laboratory_name, ENT_QUOTES, 'UTF-8'); ?></p>
                                                            <p><?php echo nl2br(htmlspecialchars((string) $record->description, ENT_QUOTES, 'UTF-8')); ?></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <?php if ($record->accreditation_status == "Yes" || $record->accreditation_status == "No") { ?>
                                                        <span class="elaboratories-label">Accreditation Status:</span>
                                                        <span class="elaboratories-v"><?php echo htmlspecialchars((string) $record->accreditation_status, ENT_QUOTES, 'UTF-8'); ?></span>
                                                    <?php } ?>
                                                    <?php if ($record->accreditation_status == "Yes") { ?>
                                                        <br>
                                                        <span class="elaboratories-label">Accreditation Type:</span>
                                                        <span class="elaboratories-v"><?php echo htmlspecialchars((string) $record->accreditation_type, ENT_QUOTES, 'UTF-8'); ?></span>
                                                        <br>
                                                        <span class="elaboratories-label">Accreditation Certificate:</span>
                                                        <?php if (!empty($record->accreditation_certificate)) { ?>
                                                            <a class="elaboratories-link" href="<?php echo base_url('AccreditationdocUpload/' . $record->accreditation_certificate); ?>" target="_blank">
                                                                <i class="fa fa-file" aria-hidden="true"></i> View
                                                            </a>
                                                        <?php } else { ?>
                                                            <span class="elaboratories-not-uploaded">Not Uploaded</span>
                                                        <?php } ?>
                                                        <br>
                                                        <span class="elaboratories-label">Accreditation Scope:</span>
                                                        <?php if (!empty($record->accreditation_scope)) { ?>
                                                            <a class="elaboratories-link" href="<?php echo base_url('AccreditationdocUpload/' . $record->accreditation_scope); ?>" target="_blank">
                                                                <i class="fa fa-file" aria-hidden="true"></i> View
                                                            </a>
                                                        <?php } else { ?>
                                                            <span class="elaboratories-not-uploaded">Not Uploaded</span>
                                                        <?php } ?>
                                                    <?php } ?>
                                                </td>
                                            </tr>
                                    <?php
                                        }
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>

                        <?php if (empty($laboratoryRecords)) { ?>
                            <div class="elaboratories-empty">
                                <i class="fa fa-inbox" aria-hidden="true"></i>
                                <p>No laboratories found yet.</p>
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
    <script>
        function openLabPopup(id) {
            var popup = document.getElementById("labPopup_" + id);
            if (popup) popup.style.display = "block";
        }

        function closeLabPopup(id) {
            var popup = document.getElementById("labPopup_" + id);
            if (popup) popup.style.display = "none";
        }

        window.onclick = function(event) {
            var popups = document.getElementsByClassName("elaboratories-popup");
            for (var i = 0; i < popups.length; i++) {
                if (event.target == popups[i]) {
                    popups[i].style.display = "none";
                }
            }
        };
    </script>
</body>

</html>