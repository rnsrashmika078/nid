<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i> <img src="<?php echo base_url(); ?>layout/img/structure.svg"/></i> Department List 
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
				 <?php
                        if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER)
            {
            ?>
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addDepartment" style="background-color: #EE9310; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
                        <i class="fa fa-plus"></i>Add  Department</a><?php  }  ?>
          
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Department List</h3>
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

                                <th>Department ID</th>
								<?php
            if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT ||  $role == ROLE_INSTITUTE_MANAGER)
         
            {  ?>
								<th>Institute Name</th><?php } ?>
								
				
							<?php
            if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER)
         
            {  ?>	
								<th>Faculty Name</th><?php } ?>
								
                                <th>Department Name</th>
                                <th>Address</th>
                                <th>Phone Number</th>
                                <th>Email</th>
                                <th>Abbreviation</th>
								
						<?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT)
         
            {  ?>
								<th>Entered By (ID) & Entered Date </th><?php  } ?>

								
								
								<?php
                        if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER)
            {
            ?>
								  <th class="text-center">Edit/Delete</th><?php } ?>
                            </tr>
                  </thead>
                  <tbody>
                            <?php
                    if(!empty($departmentRecords))
                    {
                        foreach($departmentRecords as $record)
                        {
                    ?>
                                <tr>
                  <td>
                                        <?php echo $record->  department_id ?>
                                    </td>
									<?php
            if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN ||$role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER)
         
            {  ?>
									<td>
                                        <?php echo $record->name ?>
                                    </td>
									<?php } ?>
									
									
									
									
									<?php
            if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER)
         
            {  ?>	
									
									<td>
                                        <?php echo $record->faculty_name ?>
                                    </td><?php } ?>
									
									
									
									
									
									
                                    <td>
                                        <?php echo $record->department_name ?>
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
                                        <?php echo $record->abbreviation ?>
                                    </td>
									
									
									
									
									<?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN )
         
            {  ?>
									
									<td>
									
									  <?php echo $record->created_user_id ?>
									  </br>
									
                                        <?php echo $record->created_date_time ?>
                                    </td><?php  } ?>
									
									
									<?php
                        if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER)
            {
            ?>
                                    <td class="text-center">
                                        
                                        <a class="btn btn-sm btn-info" href="<?php echo base_url().'editOldDepartment/'.$record->department_id; ?>" title="edit">
                                            <i class="fa fa-pencil"></i>
                                        </a>
                                        <a class="btn btn-sm btn-danger deleteDepartment" href="#" data-departmentid="<?php echo $record->department_id; ?>" title="delete">
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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/deleteDepartment.js" charset="utf-8"></script>