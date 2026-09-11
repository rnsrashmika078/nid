<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
      <i> <img src="<?php echo base_url(); ?>layout/img/box.svg"/></i>
            Product Category/ Test Name (Matrix) Services
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
				
				<?php
            // Rol definetion in application/config/constants.php
            if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
            ?>
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addCategory" style="background-color: #EE9310; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
                        <i class="fa fa-plus"></i>Add  Category</a> 
						
						<?php  } ?>
          
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
                <th>Institute Name</th>
				<?php  } ?>
                                <th>Product Category/ Test Name (Matrix)</th>
								<th>Sub Category</th>
                                 <th>Testing Parameters</th>
                                <th>Description</th>
                                <th>Relavant Instruments</th>
								
								  <?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT)
         
            {  ?>
								<th>Entered By (ID) & Entered Date </th><?php  } ?>
								
								<?php
            // Rol definetion in application/config/constants.php
            if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
            ?>
                                <th class="text-center">Edit/Delete</th><?php  } ?>

                            </tr>
                  </thead>
                  <tbody>
                            <?php
                    if(!empty($categoryRecords))
                    {
                        foreach($categoryRecords as $record)
                        {
                    ?>
                                <tr>
                  <td>
                                        <?php echo $record->instrument_type_id ?>
                                    </td>
									
									
									<?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN)
         
            {  ?>
									<td>
																	
                                        <?php echo $record->name ?>
                                    </td><?php  } ?>
									
									
									
                                    <td>
                                        <?php echo $record->instrument_type ?>
                                    </td>
 <td align="justify">
                                        <?php echo $record->keywords ?>
                                    </td>
                                    <td align="justify">
                                        <?php echo $record->parameters ?>
                                    </td>
                                       <td align="justify"> 
                                        <?php echo $record->description ?>
                                    </td>
                                   
									
									<td align="justify">
                                        <?php echo $record->relevant_instruments ?>
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
            // Rol definetion in application/config/constants.php
            if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
            ?>
                                    <td class="text-center">
                                       <!-- <a class="btn btn-sm btn-primary" href="<?= base_url().'log-history/'.$record->institute_id; ?>" title="log history">
                                            <i class="fa fa-history"></i>
                                        </a> |-->
                                        <a class="btn btn-sm btn-info" href="<?php echo base_url().'editOldCategory/'.$record->instrument_type_id; ?>" title="edit">
                                            <i class="fa fa-pencil"></i>
                                        </a>
                                        <a class="btn btn-sm btn-danger deleteCategory" href="#" data-categoryid="<?php echo $record->instrument_type_id; ?>" title="delete">
										 
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td><?php  } ?>


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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/deleteCategory.js" charset="utf-8"></script>