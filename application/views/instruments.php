<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i> <img src="<?php echo base_url(); ?>layout/img/machine.svg"/> </i>Instrument Management
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
	
	<?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
        <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
				
				 
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addInstrument" style="background-color: #EE9310; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
              <i class="fa fa-plus"></i> Add Instrument</a>
			  
			  
                </div>
            </div>
        </div>
		  <?php
            }
            ?>

		
		
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Instrument List</h3>
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
                    <th>NID REFERENCE NO</th>
                    <th>Name</th>
                    <th>Product Category/ Services</th>
          <!--<th>Latitude</th>
                 <th>Longitude</th>-->

            <!--<th>Keywords</th>
                 <th>Entered By</th>
                    <th>Contact Person No</th>
                    <th>Authority</th>-->
                    <th>Institute</th>
          <!--<th>Laboratory Name</th>
          <th>Laboratory Address</th>
          <th>Laboratory   latitude</th>
          <th>Laboratory   longitude</th>-->
          <th>Contact Person Name</th>
          <th>Contact Person E-mail</th>
          <th>Contact Person Phone Number</th>
          <th>Contact Person Mobile Number</th>
		  
		  
		   <?php
           
           if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT)
         
            {  ?>
								<th>Entered By (ID) & Entered Date </th><?php  } ?>

          <!--<th>Keywords</th>  -->
		  <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
                    <th>Record Status</th>
					 
                    <th>Edit/Delete</th>
					
					
					
					
                    <th>Completed</th>

	  	 
                  <?php
            }
            ?>

                  </tr>
                </thead>
                <tbody>
                  <?php
                      if(!empty($instrumentRecords))
                      {
                          foreach($instrumentRecords as $record)
                          {
                      ?>
                    <tr>
                      <td>
                        NID/<?php echo $record->instrument_id ?>
                      </td>
                      <td>
                        <a href="<?php echo base_url().'authorized_instrumentView/'.$record->instrument_id; ?>" target="_blank"> <?php echo $record->instrument_name ?></a>
                      </td>

                       <td align="justify">
                        <?php echo $record->instrument_type?>, <?php echo $record->keywords ?>
                      </td>

           <!-- <td>
                                        <?php echo $record->inst_latitude ?>
                                    </td>


                  <td>
                                        <?php echo $record->inst_longitude ?>
                                    </td>-->
              <!-- <td>
                        <?php echo $record->keywords?>
                      </td>
                       <td>


                        <?php echo $record->last_name ?>
                      </td>
           <td>
                        <?php echo $record->mobile_number ?>
                      </td>
            <td>
                        <?php echo $record->user_type ?>
                      </td>-->

                       <td>
                        <?php echo $record->name ?>
                      </td>
            <!-- <td>
                        <?php echo $record->laboratory_name ?>
                      </td>
             <td>
                        <?php echo $record->laboratory_address ?>
                      </td>

             <td>
                        <?php echo $record->latitude ?>
                      </td>
             <td>
                        <?php echo $record->longitude ?>
                      </td>-->

            <td>
                        <?php echo $record->contact_person_name ?>
                      </td>

            <td>
                        <?php echo $record->contact_person_email ?>
                      </td>


            <td>
                        <?php echo $record->contact_person_phone_number ?>
                      </td>

            <td>
                        <?php echo $record->contact_person_mobile_number ?>
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
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>

                      <td>
                        <div class="label label-<?php
                        if ($record->record_status == '0')
                        echo 'danger';
                        else if ($record->record_status == '1')
                        echo 'success';
                        ?>">
                          <?php if ($record->record_status == '0')
              echo 'Incomplete';
              else if ($record->record_status == '1')
              echo 'Completed'; ?>
                        </div>
                      </td>
					  
					  
					   
                      <td class="text-center">
                        <a class="btn btn-sm btn-info" href="<?php echo base_url().'editOldInstrument/'.$record->instrument_id; ?>" title="edit">
                          <i class="fa fa-pencil"></i>
                        </a>
                        <a class="btn btn-sm btn-danger deleteInstrument" href="#" data-instrumentid="<?php echo $record->instrument_id; ?>" title="delete">
                                            <i class="fa fa-trash"></i>
                        </a>
                      </td>
					  
					  
					  
					  
					  
                      <td class="text-center">
            <a class="btn btn-sm btn-primary" href="javascript:void(0);" onclick="reocrdStatus(<?php  echo $record->instrument_id;?>);" title="Finish Record" >
                          <i class="fa fa-check-circle"></i>
                        </a>
                      </td>
					  
					  	 
                  <?php
            }
            ?>
					  
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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/deleteInstrument.js" charset="utf-8"></script>

<script type="text/javascript">
    var url="<?php echo base_url();?>";
    function reocrdStatus(id){
       var r=confirm("Are you sure you want to finish this record?")
        if (r==true)
          window.location = url+"endInstrument/"+id;
        else
          return false;
        }
</script>