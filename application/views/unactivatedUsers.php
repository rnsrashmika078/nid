<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
             <i> <img src="<?php echo base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i>  Registered Users
            <small>Add, Give Permission, Delete</small>
        </h1>		 
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addNew" style="background-color: #EE9310; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
                        <i class="fa fa-plus"></i>Add User</a>
						
					 <a class="btn btn-primary" href="<?php echo base_url(); ?>userListing" style="background-color: #EE9310; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
                        <i></i>Users List</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Unactivated Users List</h3>
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
								

								
								<?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN)
         
            {  ?>
								<th>Institute Name</th><?php  } ?>
								
								<?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN)
         
            {  ?>
								<th>Other Institute Name</th><?php  } ?>
								
								
																
								
								 <th>Name</th>
								 			 
                               
                               
								
								
								
			
								<th>Address</th>
								
								
								
								<?php
            
            if($role == ROLE_INSTITUTE_MANAGER || $role == ROLE_DIVISION_MANAGER|| $role == ROLE_FACULTY_MANAGER )
            {
            ?>
			
								<th>E-mail</th><?php  } ?>
								
								
								
								 <?php
            
            if($role == ROLE_INSTITUTE_MANAGER || $role == ROLE_DIVISION_MANAGER|| $role == ROLE_FACULTY_MANAGER )
            {
            ?>			 
                               
                                <th>Mobile Number</th><?php  } ?>
								
								
								
                                
                                
                                <th class="text-center">logs/Edit/Delete</th>
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
									
									
									<?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN)
         
            {  ?>
									<td>
                                        <?php echo $record->name ?>
                                    </td><?php  } ?>
									
									
									
									<?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN)
         
            {  ?>
									
									<td>
                                        <?php echo $record->other_institute_name ?>
                                    </td><?php  } ?>
									
									
									
									<td>
                                        <?php echo $record->title ?>. <?php echo $record->first_name ?> <?php echo $record->last_name ?>
                                    </td>
                                    
									
									
									
									<td>
                                        <?php echo $record->address ?>
                                    </td>
									
									
									
									<?php
            
            if($role == ROLE_INSTITUTE_MANAGER || $role == ROLE_DIVISION_MANAGER|| $role == ROLE_FACULTY_MANAGER )
            {
            ?>
									<td>
                                        <?php echo $record->email ?>
                                    </td><?php  } ?>
									
									
									<?php
            
            if($role == ROLE_INSTITUTE_MANAGER || $role == ROLE_DIVISION_MANAGER|| $role == ROLE_FACULTY_MANAGER )
            {
            ?>
									<td>
                                        <?php echo $record->mobile_number ?>
                                    </td><?php  } ?>
									
									
									
									
									
                                    
                                    <td class="text-center"> 
                                      <a class="btn btn-sm btn-primary" href="<?= base_url().'log-history/'.$record->id; ?>" title="log history">
                                            <i class="fa fa-history"></i>
                                        </a>									
                                        <a class="btn btn-sm btn-info" href="<?php echo base_url().'selectRole/'.$record->id; ?>" title="Select Role">
                                            <i class="fa fa-pencil"></i>
                                        </a> 
                                        <a class="btn btn-sm btn-danger deleteUser" href="#" data-userid="<?php echo $record->id; ?>" title="delete">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>