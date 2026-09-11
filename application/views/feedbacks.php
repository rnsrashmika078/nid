<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
      <i> <img src="<?php echo base_url(); ?>assets/dist/img/institute.png"/></i>
            User Feedback List
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
                <!--<div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addFeedback" style="background-color: #EE9310; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
                        <i class="fa fa-plus"></i> ADD USER FEEDBACK</a>
         
                </div>-->
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
                    if($error)
                    {
                ?>
              <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                <?php echo $this->session->flashdata('error'); ?>
                                </div>
              <?php } ?>
              <?php
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
              <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                <?php echo $this->session->flashdata('success'); ?>
                        </div>
              <?php } ?>
              <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                  <thead>
                            <tr>
                                <th>User ID</th>
                                <th>User Name</th>
                                <th>Address</th>
                                <th>Phone Number</th>
                                <th>Email</th>
                                <th>Subject</th>
                                <th>Message</th>
								<th>Image</th>
                                <th>Entered Date</th>
								<?php
                        if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN )
            {
            ?>
                                <th class="text-center">Edit/Delete</th><?php } ?>

                            </tr>
                  </thead>
                  <tbody>
                            <?php
                    if(!empty($feedbackRecords))
                    {
                        foreach($feedbackRecords as $record)
                        {
                    ?>
                                <tr>
                  <td>
                                        <?php echo $record->userf_id ?>
                                    </td>
                                    <td>
                                        <?php echo $record->u_name ?>
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
                                        <?php echo $record->subject ?>
                                    </td>
                  <td>
                                        <?php echo $record->message ?>
                                    </td>
									
									  <td>
                                        <a href="<?=base_url(); ?>imagesUpload/<?php echo $record->user_image ?>">View Image<a>
                                    </td>

                                     <td>
                                        <?php echo $record->created_date_time ?>
                                    </td>
										 <?php
                        if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN )
            {
            ?>
                                    <td class="text-center">
                                       <!-- <a class="btn btn-sm btn-primary" href="<?= base_url().'log-history/'.$record->userf_id; ?>" title="log history">
                                            <i class="fa fa-history"></i>
                                        </a> |-->
                                        <a class="btn btn-sm btn-info" href="<?php echo base_url().'editOldFeedback/'.$record->userf_id; ?>" title="edit">
                                            <i class="fa fa-pencil"></i>
                                        </a>
                                        <a class="btn btn-sm btn-danger deleteFeedback" href="#" data-feedbackid="<?php echo $record->userf_id; ?>" title="delete">
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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/deleteFeedback.js" charset="utf-8"></script>