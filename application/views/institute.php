
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          <i> <img src="<?php echo base_url(); ?>layout/img/bank.svg" /></i>
          Institute List
          <small>Add, Edit, Delete</small>
        </h1>
      </section>
      <section class="content">
        <div class="row">
          <div class="col-xs-12 text-right">
            <div class="form-group">

              <?php

              if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER) {   ?>
                <a class="btn btn-primary" href="<?php echo base_url(); ?>addInstitute" style="background-color: #EE9310; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
                  <i class="fa fa-plus"></i> ADD INSTITUTE</a>


              <?php  }     ?>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <div class="box">
              <div class="box-header">
                <!--  <h3 class="box-title">institutes List</h3>-->
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
                        <th>ID</th>

                        <th>Institute Name</th>
                        <th>Institute Coordinator</th>

                        <!--<th>Latitude</th>
                 <th>Longitude</th>-->
                        <th>Address</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Ministry</th>
                        <th>Description</th>
                        <?php

                        if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT) {  ?>
                          <th>Entered By (ID) & Entered Date </th><?php  } ?>


                        <?php

                        if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER) {   ?>
                          <th class="text-center">Edit/Delete</th> <?php  }     ?>

                      </tr>
                    </thead>
                    <tbody>


                      <?php
                      if (!empty($instituteRecords)) {
                        foreach ($instituteRecords as $record) {
                      ?>


                          <tr>

                            <td>
                              <?php echo $record->institute_id ?>
                            </td>
                            <td>
                              <?php echo $record->name ?>

                              <p><a href="JavaScript:newPopup('<?php echo base_url() . 'ind_institute_googleview/' . $record->institute_id; ?>');">View Location</a></p>
                            </td>
                            <td>
                              <?php echo $record->inst_coordinator ?>
                            </td>

                            <td>
                              <?php echo $record->address ?>
                            </td>
                            <td>
                              <?php echo $record->phone_number ?>
                            </td>
                            <td>
                              <?php echo $record->email ?>
                            </td>
                            <td>
                              <?php echo $record->ministry ?>
                            </td>
                            <td align="justify">

                              <!-- The Popup -->
                              <div id="institutionPopup_<?php echo $record->institute_id ?>" class="popup">
                                <div class="popup-content">
                                  <span class="close" onclick="closePopup(<?php echo $record->institute_id ?>)">&times;</span>
                                  <h3><?php echo $record->name ?></h3>
                                  <p id="institutionDescription_<?php echo $record->institute_id ?>">
                                    <?php echo $record->description ?>
                                  </p>
                                </div>
                              </div>

                              <!-- Button to open popup -->
                              <button onclick="openPopup(<?php echo $record->institute_id ?>)">View</button>






                            </td>


                            <?php

                            if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN) {  ?>

                              <td>

                                <?php echo $record->created_user_id ?>
                                </br>

                                <?php echo $record->created_date_time ?>
                              </td><?php  } ?>




                            <?php

                            if ($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER) {   ?>
                              <td class="text-center">


                                <a class="btn btn-sm btn-info" href="<?php echo base_url() . 'editOldInstitute/' . $record->institute_id; ?>" title="edit">
                                  <i class="fa fa-pencil"></i>
                                </a>
                                <a class="btn btn-sm btn-danger deleteInstitute" href="#" data-instituteid="<?php echo $record->institute_id; ?>" title="delete">
                                  <i class="fa fa-trash"></i>
                                </a>
                              </td><?php  }     ?>


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
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/deleteInstitute.js" charset="utf-8"></script>

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

    <script type="text/javascript">
      // Popup google window code
      function newPopup(url) {
        popupWindow = window.open(
          url, 'popUpWindow', 'height=500,width=450,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
      }
    </script>