<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i> <img src="<?php echo base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i> User Management
            <small>Add User</small>
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->



                <div class="box box-primary">
                   <!-- <div class="box-header">
                        <h3 class="box-title">Enter user information</h3>
                    </div>-->
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addUser" action="<?php echo base_url() ?>addNewUser" method="post" role="form">
                        <div class="box-body">
						<div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="title">Title</label>
                                        <select class="form-control required" id="title" name="title">
                                            <option value="">Select title</Option>
											<option value="Mr">Mr</Option>
											<option value="Ms">Ms</Option>
											<option value="Mrs">Mrs</Option>
											<option value="Miss">Miss</Option>
											<option value="Eng">Eng</Option>
											<option value="Dr">Dr</Option>
											<option value="Prof"> Prof</Option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="gender">Gender</label>
                                        <select class="form-control required" id="gender" name="gender">
                                            <option value="">Select gender</Option>
											<option value="Male">Male</Option>
											<option value="Female">Female</Option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="firstName">First name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('firstName'); ?>" id="firstName" name="firstName" maxlength="128">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="lastName">Last name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('lastName'); ?>" id="lastName" name="lastName" maxlength="128">
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
                                        <label for="designation">Designation</label>
                                        <select class="form-control required" id="designation" name="designation">
                                            <option value="">Select designation</option>
                                            <?php 
												foreach($designation as $row)
												{
												 echo '<option value="'.$row->name.'">'.$row->name.'</option>';
												}
											?>
                                        </select>
                                    </div>
                                </div>
                            </div>
							<div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="mobilenumber">Mobile number</label>
                                        <input type="text" class="form-control required digits" id="mobilenumber" value="<?php echo set_value('mobilenumber'); ?>" name="mobilenumber"
                                            maxlength="10">
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
									<label for="faculty">Faculty (Only for Universities)</label>
									<select class="form-control" id="faculty" name="faculty">
										<option value="">Select Faculty</Option>											
									</select>
								</div>
							</div>
								
														
                               
                            </div>
							
							
							
							<div class="row">
                               						
																			
								
								
								
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="department">Department</label>
                                        <select class="form-control" id="department" name="department">
                                            <option value="">Select department</Option>											
                                        </select>
                                    </div>
                                </div>
								
								
								<div class="col-md-6">
                                    <div class="form-group">
                                        <label for="laboratory">Laboratory</label>
                                        <select class="form-control " id="laboratory" name="laboratory">
                                            <option value="">Select Laboratory</Option>											
                                        </select>
                                    </div>
                                </div>
								
								
								
								
                            </div>
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="userName">User name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('userName'); ?>" id="userName" name="userName" maxlength="128">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="role">User authority</label>
                                        <select class="form-control required" id="role" name="role">
                                            <option value="">Select authorization</option>
                                            <?php
                                            if(!empty($roles))
                                            {
                                                foreach ($roles as $rl)
                                                {
                                                    ?>
                                                <option value="<?php echo $rl->user_type_id ?>" <?php if($rl->user_type_id == set_value('role')) {echo "selected=selected";} ?>>
                                                    <?php echo $rl->user_type ?>
                                                </option>
                                                <?php
                                                }
                                            }
                                            ?>
											
											

                                        </select>
                                    </div>
                                </div>
                            </div>
							<div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control required" id="password" name="password" maxlength="20">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="cpassword">Verify Password</label>
                                        <input type="password" class="form-control required equalTo" id="cpassword" name="cpassword" maxlength="20">
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
<!--<script src="<?php echo base_url(); ?>assets/js/addUser.js" type="text/javascript"></script>-->
<script type="text/javascript">
	$(document).ready(function(){
		   $('#institute').change(function(){
           var institute_id = $('#institute').val();
			  if(institute_id != '')
			  {
			   $.ajax({
				url:"<?php echo base_url(); ?>Register/get_departments",
				method:"POST",
				data:{institute_id:institute_id},
				success:function(data)
				{
				 $('#department').html(data);
				}
			   });
			  }
			  else
			  {
			   $('#department').html('<option value="">Select Department</option>');
			  }
			});
             
        });
       
	   
	   
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
		
		$(document).ready(function(){
		   $('#faculty').change(function(){
           var faculty_id = $('#faculty').val();
			  if(faculty_id != '')
			  {
			   $.ajax({
				url:"<?php echo base_url(); ?>Register/get_departmentsByFaculty",
				method:"POST",
				data:{faculty_id:faculty_id},
				success:function(data)
				{
				 $('#department').html(data);
				}
			   });
			  }
			  else
			  {
			   $('#department').html('<option value="">Select Department</option>');
			  }
			});
             
        });
		
		
		
		 $(document).ready(function(){
       $('#institute').change(function(){
           var institute_id = $('#institute').val();
        if(institute_id != '')
        {
         $.ajax({
        url:"<?php echo base_url(); ?>Register/get_laboratoriesByInstitute",
        method:"POST",
        data:{institute_id:institute_id},
        success:function(data)
        {
         $('#laboratory').html(data);
        }
         });
        }
        else
        {
         $('#laboratory').html('<option value="">Select Laboratory</option>');
        }
      });

        });
		
		
		
		$(document).ready(function(){
		   $('#department').change(function(){
           var department_id = $('#department').val();
			  if(department_id != '')
			  {
			   $.ajax({
				url:"<?php echo base_url(); ?>Register/get_laboratories",
				method:"POST",
				data:{department_id:department_id},
				success:function(data)
				{
				 $('#laboratory').html(data);
				}
			   });
			  }
			  else
			  {
			   $('#laboratory').html('<option value="">Select Laboratory</option>');
			  }
			});
             
        });
    </script>
