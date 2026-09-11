<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-users"></i> User Management
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">User List</h3>
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
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $this->session->flashdata('error'); ?>
                                </div>
              <?php } ?>
              <?php
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
              <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $this->session->flashdata('success'); ?>
                        </div>
              <?php } ?>
              <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                  <thead>
                            <tr>
                                <th>ID</th>
								<th>Participated Institute Name</th>
								<th>Other Institute Name</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                               <th>User Name</th>
                                <th>Password</th>
                                <th>Authority</th>
                               
                            </tr>
                  </thead>
                  <tbody>
                            <?php
                    if(!empty($userRecords))
                    {
                        foreach($userRecords as $record)
                        {
                    ?>
                                <tr>
                  <td>
                                        <?php echo $record->id ?>
                                    </td>
									<td>
                                        <?php echo $record->name ?>
                                    </td>
									<td>
                                        <?php echo $record->other_institute_name ?>
                                    </td>
                                    <td>
                                        <?php echo $record->first_name ?>
                                    </td>
                                    <td>
                                        <?php echo $record->last_name ?>
                                    </td>
                                   <td>
                                        <?php echo $record->username ?>
                                    </td>
                                    <td>
                                        <?php echo $record->password ?>
                                    </td>
                                    <td>
                                        <?php echo $record->user_type ?>
                                    </td>
                                   
                                </tr>
                                <?php
                        }
                    }
                    ?>
                  </tbody>
                        </table
              </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>