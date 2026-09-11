<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
             <i> <img src="<?php echo base_url(); ?>layout/img/structure.svg"/></i>Department Management
            <small>Add Department</small>
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->



                <div class="box box-primary">
                    <!--<div class="box-header">
                        <h3 class="box-title">Enter Department information</h3>
                    </div>-->
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addDepartment" action="<?php echo base_url() ?>addNewDepartment" method="post" role="form">
                        <div class="box-body">
						
						
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="institute">Institute</label>
									<select class="form-control required" id="institute" name="institute">
										<option value="">Select Institute</option>
										<?php
										
										if(!empty($institutes))
										{
											foreach ($institutes as $il)
											{
												?>
											<option value="<?php echo $il->institute_id ?>" <?php if($il->institute_id == set_value('name')) {echo "selected=selected";} ?>>
												<?php echo $il->name?>
											</option>
											<?php
											}
										}
										
										?>											
										
									</select>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
									<label for="faculty">faculty</label>
									<select class="form-control required" id="faculty" name="faculty">
										<option value="">Select faculty</Option>											
									</select>
								</div>
							</div>
													</div>
						
						
						

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="departmentName">Department Name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('departmentName'); ?>" id="departmentName" name="departmentName" >
                                    </div>

                                </div>

                            </div>
              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="address">Address</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('address'); ?>" id="address" name="address" maxlength="300">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email">E-mail address</label>
                                        <input type="text" class="form-control required email" id="email" value="<?php echo set_value('email'); ?>" name="email"
                                            maxlength="128">
                                    </div>
                                </div>
								
								<div class="col-md-6">
                                    <div class="form-group">
                                        <label for="phoneNumber">Phone number</label>
                                        <input type="text" class="form-control required digits" id="phoneNumber" value="<?php echo set_value('phoneNumber'); ?>" name="phoneNumber"
                                            maxlength="10">
                                    </div>
                                </div>
								
								
                                                            </div>


              




                             <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="abbreviation">Abbreviation</label>
                     <input type="text" class="form-control required" value="<?php echo set_value('abbreviation'); ?>" id="abbreviation" name="abbreviation" maxlength="300">
                                    </div>
                                </div>
                            </div>

                            
                           




                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <input type="submit" class="btn btn-default" value="Add" />
                            <input type="reset" class="btn btn-default" value="Reset" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-4">
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







                    <div class="row">
                        <div class="col-md-12">
                            <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                        </div>
                    </div>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript">
$(document).ready(function(){
		   $('#institute').change(function(){
           var institute_id = $('#institute').val();
			  if(institute_id != '')
			  {
			   $.ajax({
				url:"<?php echo base_url(); ?>Register/get_faculties",
				method:"POST",
				data:{institute_id:institute_id},
				success:function(data)
				{
				 $('#faculty').html(data);
				}
			   });
			  }
			  else
			  {
			   $('#faculty').html('<option value="">Select faculty</option>');
			  }
			});
             
        });
		
		    </script>
