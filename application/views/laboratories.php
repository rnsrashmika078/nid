<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <i> <img src="<?php echo base_url(); ?>layout/img/laboratory.svg" /></i> Laboratory List
      <small>Add, Edit, Delete</small>
    </h1>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-xs-12 text-right">
        <div class="form-group">
          <?php
          if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER) {
          ?>
            <a class="btn btn-primary" href="<?php echo base_url(); ?>addLaboratory" style="background-color: #EE9310; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
              <i class="fa fa-plus"></i>Add Laboratory</a><?php  }  ?>

        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title">Laboratory List</h3>
          </div>
          <!-- /.box-header -->
          <div class="box-body table-responsive no-padding">
            <?php
            $this->load->helper('form');
            $error = $this->session->flashdata('error');
            if ($error) {
            ?>
              <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                <?php echo $this->session->flashdata('error'); ?>
              </div>
            <?php } ?>
            <?php
            $success = $this->session->flashdata('success');
            if ($success) {
            ?>
              <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                <?php echo $this->session->flashdata('success'); ?>
              </div>
            <?php } ?>
            <div class="panel-body">


              <style>
                .popup {
                  display: none;
                  position: fixed;
                  z-index: 9999;
                  left: 0;
                  top: 0;
                  width: 100%;
                  height: 100%;
                  overflow: auto;
                  background-color: rgba(0, 0, 0, 0.5);
                }

                .popup-content {
                  background-color: #ffffff;
                  color: #333;
                  /* fix white font issue */
                  font-family: Arial, sans-serif;
                  line-height: 1.6;
                  margin: 10% auto;
                  padding: 25px;
                  border-radius: 8px;
                  width: 50%;
                  max-width: 600px;
                  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
                }

                .close {
                  color: #aaa;
                  float: right;
                  font-size: 24px;
                  font-weight: bold;
                  cursor: pointer;
                }

                .close:hover {
                  color: #000;
                }
              </style>
              <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                  <tr>
                    <th>Laboratory ID</th>

                    <th>Institute Detail
                    </th>

                    <th>Laboratory Name</th>
                    <th>Contact Detail</th>
                    <th>Description</th>
                    <th>Accreditation Detail</th>


                    <?php

                    if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT) {  ?>
                      <th>Entered By (ID) & Entered Date </th><?php  } ?>



                    <?php
                    if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER) {
                    ?>
                      <th class="text-center">Edit/Delete</th><?php } ?>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  if (!empty($laboratoryRecords)) {
                    foreach ($laboratoryRecords as $record) {
                  ?>
                      <tr>
                        <td>
                          <?php echo $record->laboratory_id ?>
                        </td>


                        <td>
                          <?php
                          if (
                            $role == ROLE_SUPER_ADMIN ||
                            $role == ROLE_ADMIN ||
                            $role == ROLE_NSF_AUDIT ||
                            $role == ROLE_INSTITUTE_MANAGER
                          ) {
                          ?>
                            <b>Institute: </b><?php echo $record->name; ?><br>

                            <?php if (!empty($record->faculty_name)) { ?>
                              <b>Faculty: </b><?php echo $record->faculty_name; ?><br>
                            <?php } ?>
                          <?php
                          }
                          ?>

                          <b>Department: </b><?php echo $record->department_name; ?>
                        </td>







                        <td>
                          <?php echo $record->laboratory_name ?>
                        </td>
                        <td>
                          <b>Address: </b><?php echo $record->laboratory_address ?>
                          </br>
                          <b>Phone Number: </b><?php echo $record->phone_number ?>
                          </br>
                          <b>Phone Number: </b><?php echo $record->email ?>

                        </td>
                        <td align="justify">
                          <!-- The Popup -->
                          <div id="institutionPopup_<?php echo $record->laboratory_id ?>" class="popup">
                            <div class="popup-content">
                              <span class="close" onclick="closePopup(<?php echo $record->laboratory_id ?>)">&times;</span>
                              <h3><?php echo $record->name ?></h3>
                              <h4>laboratory Name: <?php echo $record->laboratory_name ?></h4>

                              <p id="institutionDescription_<?php echo $record->laboratory_id ?>">
                                <?php echo $record->description ?>
                              </p>
                            </div>
                          </div>

                          <!-- Button to open popup -->
                          <button onclick="openPopup(<?php echo $record->laboratory_id ?>)">View</button>
                        </td>



                        <td>
                          <?php if ($record->accreditation_status == "Yes" || $record->accreditation_status == "No") { ?>

                            <b>Accreditation Status:</b>
                            <?php echo $record->accreditation_status; ?>
                            <br>
                          <?php } ?>

                          <?php if ($record->accreditation_status == "Yes") { ?>
                            <b>Accreditation Type:</b>
                            <?php echo $record->accreditation_type; ?>
                            <br>


                            <b>Accreditation Certificate:</b>
                            <?php if (!empty($record->accreditation_certificate)) { ?>
                              <a href="<?php echo base_url('AccreditationdocUpload/' . $record->accreditation_certificate); ?>" target="_blank">View</a>
                            <?php } else {
                              echo '<span style="color:red;">Not Uploaded</span>';
                            } ?>
                            <br>

                            <b>Accreditation Scope:</b>
                            <?php if (!empty($record->accreditation_scope)) { ?>
                              <a href="<?php echo base_url('AccreditationdocUpload/' . $record->accreditation_scope); ?>" target="_blank">View</a>
                            <?php } else {
                              echo '<span style="color:red;">Not Uploaded</span>';
                            } ?>
                            <br>

                          <?php } ?>
                        </td>




                        <?php

                        if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN) {  ?>

                          <td>

                            <?php echo $record->created_user_id ?>
                            </br>

                            <?php echo $record->created_date_time ?>
                          </td><?php  } ?>







                        <?php
                        if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER) {
                        ?>
                          <td class="text-center">

                            <a class="btn btn-sm btn-info" href="<?php echo base_url() . 'editOldLaboratory/' . $record->laboratory_id; ?>" title="edit">
                              <i class="fa fa-pencil"></i>
                            </a>
                            <a class="btn btn-sm btn-danger deleteLaboratory" href="#" data-laboratoryid="<?php echo $record->laboratory_id; ?>" title="delete">
                              <i class="fa fa-trash"></i>
                            </a>
                          </td><?php } ?>
                      </tr>
                  <?php
                    }
                  }
                  ?>
                </tbody>
              </table>
            </div>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
    </div>
  </section>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/deleteLaboratory.js" charset="utf-8"></script>

<script>
  function openPopup(id) {
    const popup = document.getElementById("institutionPopup_" + id);
    if (popup) popup.style.display = "block";
  }

  function closePopup(id) {
    const popup = document.getElementById("institutionPopup_" + id);
    if (popup) popup.style.display = "none";
  }

  // Optional: close popup when clicking outside the box
  window.onclick = function(event) {
    const popups = document.getElementsByClassName("popup");
    for (let i = 0; i < popups.length; i++) {
      if (event.target == popups[i]) {
        popups[i].style.display = "none";
      }
    }
  }
</script>