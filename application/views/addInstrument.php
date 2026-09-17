<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i> <img src="<?php echo base_url(); ?>layout/img/machine.svg"/> </i></i>Instrument
            <!--<small>Add Instrument</small>-->
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-10">
                <!-- general form elements -->
                <div class="box box-primary">
                   <!-- <div class="box-header">
                        <h3 class="box-title">Enter instrument information</h3>
                    </div>-->
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addInstrument" action="<?php echo base_url() ?>addInstruments" method="post" role="form" enctype="multipart/form-data">
                        <div class="box-body">
            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instrumentName">Instrument Name (Do not leave spaces before instrument name)</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('instrumentName'); ?>" id="instrumentName" name="instrumentName">
                                    </div>
                                </div>
                        </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="institute"><p style="margin: 0; display: inline;" >Institute</p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>
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
                  <label for="faculty">Faculty</label>
                  <select class="form-control required" id="faculty" name="faculty">
                    <option value="">Select Faculty</Option>
                  </select>
                </div>
              </div>
            </div>
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="department">Department</label>
                                        <select class="form-control " id="department" name="department">
                                            <option value="">Select Department</Option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="laboratory"><p style="margin: 0; display: inline;" >Laboratory</p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>
                                        <select class="form-control " id="laboratory" name="laboratory">
                                            <option value="">Select Laboratory</Option>
                                        </select>
                                    </div>
                                </div>
                            </div>
              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instrumentType"><p style="margin: 0; display: inline;" >Product Category/ Test Name (Matrix) </p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>
                                        <select class="form-control required" id="instrumentType" name="instrumentType">
                                            <option value="">Product Category/ Test Name (Matrix)</option>

                     <?php
                        if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN )
            {
            ?>
                                            <?php
                                            if(!empty($instrument_type))
                                            {
                                                foreach ($instrument_type as $rl)
                                                {
                                                    ?>
                                                <option value="<?php echo $rl->instrument_type_id ?>" <?php if($rl->instrument_type_id == set_value('instrument_type')) {echo "selected=selected";} ?>>
                                                    <?php echo $rl->instrument_type ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    (INSTITUTE ID:<?php echo $rl->institute_id ?>)
                                                </option>
                                                <?php
                                                }
                                            }
                                            ?>
											
											<?php  }  ?>
											
											
											<?php
   if($role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
											<?php
                                            if(!empty($instrument_type))
                                            {
                                                foreach ($instrument_type as $rl)
                                                {
                                                    ?>
                                                <option value="<?php echo $rl->instrument_type_id ?>" <?php if($rl->instrument_type_id == set_value('instrument_type')) {echo "selected=selected";} ?>>
                                                    <?php echo $rl->instrument_type ?>   
                                                </option>
                                                <?php
                                                }
                                            }
                                            ?>
											<?php  }  ?>
											
                                        </select>
                                    </div>
                                </div>
                            </div>

              <!--<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="pcategories">Other Product Categories</label>
                                        <textarea class="form-control" id="pcategories" name="pcategories" rows="4">
                                            <?php echo set_value('pcategories'); ?>
                                        </textarea>
                                    </div>
                                </div>
                            </div>-->

              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="instrumentCondition"><p style="margin: 0; display: inline;" >Instrument Condition</p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>
                                        <select class="form-control required" id="instrumentCondition" name="instrumentCondition">
                                            <option value="">Instrument Condition</option>
                                            <?php
                                            if(!empty($instrument_condition))
                                            {
                                                foreach ($instrument_condition as $iC)
                                                {
                                                    ?>
                                                <option value="<?php echo $iC->condition_id ?>" <?php if($iC->condition_id == set_value('instrument_condition')) {echo "selected=selected";} ?>>
                                                    <?php echo $iC->instrument_condition ?>
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
                                        <label for="manufacturer">Manufacturer</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('manufacturer'); ?>" id="manufacturer" name="manufacturer" maxlength="128">
                                    </div>
                                </div>
                            </div>
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="model">Model</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('model'); ?>" id="model" name="model" maxlength="128">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="manufactureYear">Manufactured year(yyyy)</label>
                                        <input type="text" class="form-control required digits" value="<?php echo set_value('manufactureYear'); ?>" id="manufactureYear" name="manufactureYear" maxlength="4">
                                    </div>
                                </div>
                            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="accessories">HS Code</label>
                  <input type="text" class="form-control required" value="<?php echo set_value('accessories'); ?>" id="accessories" name="accessories">
                </div>
              </div>
            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instdescription">Description/ Function</label>
                                        <textarea class="form-control" id="instdescription" name="instdescription" rows="4">
                                            <?php echo set_value('instdescription'); ?>
                                        </textarea>
                                    </div>
                                </div>
                            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="catalogLink">Web Link/ Catalog link</label>
                  <input type="url" class="form-control required" value="<?php echo set_value('catalogLink'); ?>" id="catalogLink" name="catalogLink">
                </div>
              </div>
            </div>
            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="catalogUpload">Catalog Upload</label>
                                        <input type="file" class="form-control required"  id="catalogUpload" name="catalogUpload">
                                    </div>
                                </div>
                        </div>
            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="catalogAccess">Catalog Access </label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('catalogAccess'); ?>" id="catalogAccess" name="catalogAccess" maxlength="128">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="price">Instrument Price (Ex: 1000.00)</label>
                                        <input type="text" class="form-control required digits" value="<?php echo set_value('price'); ?>" id="price" name="price" maxlength="15">
                                    </div>
                                </div>
                            </div>
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="vendorName">Vendor Name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('vendorName'); ?>" id="vendorName" name="vendorName" maxlength="128">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="vendorContact">Vendor Contact</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('vendorContact'); ?>" id="vendorContact" name="vendorContact" maxlength="128">
                                    </div>
                                </div>
                            </div>
              <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="vendorUrl">Vendor Url</label>
                  <input type="url" class="form-control required" value="<?php echo set_value('vendorUrl'); ?>" id="vendorUrl" name="vendorUrl">
                </div>
              </div>
            </div>
          
		  
		  
            <div class="row">
                                
                                <div class="col-md-12">

                                    <div class="form-group">
                                        <label for="staffName">Availability Of technically competent Staff(Yes/No)</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('staffName'); ?>" id="staffName" name="staffName" maxlength="128">
                                    </div>
                                </div>
                            </div>
            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                    <label for="externalResearch"><p style="margin: 0; display: inline;" >Whether the instrument service can be provided to external Researchers/Institutions</p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>
                    <br>

                    <input type="Radio" class="custom-radio" name="externalResearch" id="yes" value="1" <?php echo set_radio('externalResearch','1'); ?>> Yes &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="Radio" class="custom-radio" name="externalResearch" id="no" value="0" <?php echo set_radio('externalResearch','0'); ?>> NO

                  </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="FundingSource">Funding Source<p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>


                                        <input type="text" class="form-control required" value="<?php echo set_value('FundingSource'); ?>" id="FundingSource" name="FundingSource" maxlength="128">
                                    </div>
                                </div>
                            </div>
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="usageHour">Commencement of Operations Date</label>

                                        <input type="date" class="form-control" name="operationsDate" value="<?php echo isset($itemOutData->operationsDate) ? set_value('operationsDate', date('Y-m-d', strtotime($itemOutData->operationsDate))) : set_value('operationsDate'); ?>">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                    <label for="recordStatus"><p style="margin: 0; display: inline;" >Record Status</p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>
                    <br>

                    <input type="Radio" class="custom-radio" name="recordStatus" id="incomplete" value="0" <?php echo set_radio('recordStatus','0'); ?>> Incomplete &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="Radio" class="custom-radio" name="recordStatus" id="completed" value="1" <?php echo set_radio('recordStatus','1'); ?>> Completed

                  </div>
                                </div>
                            </div>




              <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="accessories">Contact Person Name</label>
                  <input type="text" class="form-control required" value="<?php echo set_value('contactPersonName'); ?>" id="contactPersonName" name="contactPersonName">
                </div>
              </div>
            </div>


              <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="accessories">E-mail</label>
                  <input type="text" class="form-control required" value="<?php echo set_value('contactPersonEmail'); ?>" id="contactPersonEmail" name="contactPersonEmail">
                </div>
              </div>
            </div>



              <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="accessories">Phone Number</label>
                  <input type="text" class="form-control required" value="<?php echo set_value('contactPersonPhoneNumber'); ?>" id="contactPersonPhoneNumber" name="contactPersonPhoneNumber">
                </div>
              </div>
            </div>


              <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="accessories">Mobile Number</label>
                  <input type="text" class="form-control required" value="<?php echo set_value('contactPersonMobileNumber'); ?>" id="contactPersonMobileNumber" name="contactPersonMobileNumber">
                </div>
              </div>
            </div>
			
			
			
			</br>
			
					
			</br>
			
			<p align="center" style="color:red;"> <b>TECHNICAL SPECIFICATIONS</p>
			
			
			   <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="techspecification">Specification (Create a table or paste content from your site to add specfication) </label>
                                        <textarea class="form-control" id="techspecification" name="techspecification" rows="4">
                                            <?php echo set_value('techspecification'); ?>
                                        </textarea>
                                    </div>
                                </div>
                            </div>
			
			
			
		  <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="samplesNo">Number of samples per cycle</label>
                                        <input type="text" class="form-control required digits" id="samplesNo" value="<?php echo set_value('samplesNo'); ?>" name="samplesNo" maxlength="10">

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="samplesPerDay">Number of samples per_day</label>
                                        <input type="text" class="form-control required digits" id="samplesPerDay" value="<?php echo set_value('samplesPerDay'); ?>" name="samplesPerDay" maxlength="10">
                                    </div>
                                </div>
								
								
								<div class="col-md-4">
                                    <div class="form-group">
                                        <label for="usageHour">Total usage hour per day</label>
                                        <input type="text" class="form-control required digits" id="usageHour" value="<?php echo set_value('usageHour'); ?>" name="usageHour" maxlength="10">
                                    </div>
                                </div>
                        </div>	
			
			
			
			
			
			
			</br>
			
					
			</br>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			


 <div class="row">
                                <div class="col-md-12">
                                
                                    <div class="form-group">
                                        <label for="instkeywords">Keywords (Use comma to seperate each keyword)</label>
                                        <input type="text" class="form-control required digits" id="instkeywords" value="<?php echo set_value('instkeywords'); ?>" name="instkeywords" >

                                    </div>
                                </div>
                            </div>




<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="imageUpload1">Image 1 Upload <p style="margin: 0; display: inline; color: red;" align="right">(Image size should be less than 1 MB and image format - jpg/jpeg/png) *</p></label>
            <input type="file" class="form-control required" id="imageUpload1" name="imageUpload1" accept=".jpg,.jpeg,.png" required>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="imageUpload2">Image 2 Upload </label>
            <input type="file" class="form-control required" id="imageUpload2" name="imageUpload2" accept=".jpg,.jpeg,.png" required>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="imageUpload3">Image 3 Upload</label>
            <input type="file" class="form-control" id="imageUpload3" name="imageUpload3" accept=".jpg,.jpeg,.png">
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="imageUpload4">Image 4 Upload</label>
            <input type="file" class="form-control" id="imageUpload4" name="imageUpload4" accept=".jpg,.jpeg,.png">
        </div>
    </div>
</div>




            <script>
document.querySelectorAll('#imageUpload1, #imageUpload2').forEach(function(input) {
    input.addEventListener('change', function() {
        const file = this.files[0];

        if (!file) {
            return;
        }

        // 1 MB = 1024 * 1024 bytes
        if (file.size > 1024 * 1024) {
            alert('Image size must be less than 1MB.');
            this.value = '';
            return;
        }

        const allowedTypes = [
            'image/jpg',
            'image/jpeg',
            'image/png'
        ];

        if (!allowedTypes.includes(file.type)) {
            alert('Only GIF, JPG, JPEG, and PNG image formats are allowed.');
            this.value = '';
            return;
        }
    });
});
</script>
     
	

<script>
    document.getElementById('imageUpload1').addEventListener('change', function () {

        var file = this.files[0];

        if (file) {

            var allowedTypes = ['image/jpeg', 'image/png'];

            if (!allowedTypes.includes(file.type)) {
                alert('Invalid file format. Only JPG, JPEG, and PNG files are allowed.');
                this.value = '';
                return;
            }

            if (file.size > 1024 * 1024) {
                alert('Image size should be less than 1MB.');
                this.value = '';
                return;
            }
        }
    });


    document.getElementById('imageUpload2').addEventListener('change', function () {

        var file = this.files[0];

        if (file) {

            var allowedTypes = ['image/jpeg', 'image/png'];

            if (!allowedTypes.includes(file.type)) {
                alert('Invalid file format. Only JPG, JPEG, and PNG files are allowed.');
                this.value = '';
                return;
            }

            if (file.size > 1024 * 1024) {
                alert('Image size should be less than 1MB.');
                this.value = '';
                return;
            }
        }
    });


    document.getElementById('imageUpload3').addEventListener('change', function () {

        var file = this.files[0];

        if (file) {

            var allowedTypes = ['image/jpeg', 'image/png'];

            if (!allowedTypes.includes(file.type)) {
                alert('Invalid file format. Only JPG, JPEG, and PNG files are allowed.');
                this.value = '';
                return;
            }

            if (file.size > 1024 * 1024) {
                alert('Image size should be less than 1MB.');
                this.value = '';
                return;
            }
        }
    });


    document.getElementById('imageUpload4').addEventListener('change', function () {

        var file = this.files[0];

        if (file) {

            var allowedTypes = ['image/jpeg', 'image/png'];

            if (!allowedTypes.includes(file.type)) {
                alert('Invalid file format. Only JPG, JPEG, and PNG files are allowed.');
                this.value = '';
                return;
            }

            if (file.size > 1024 * 1024) {
                alert('Image size should be less than 1MB.');
                this.value = '';
                return;
            }
        }
    });
</script>


        <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="scharge">Service Charge (Ex: 5000.00)</label>
                                        <input type="scharge" class="form-control "  id="scharge" value="<?php echo set_value('service_charge'); ?>" name="scharge">
                                    </div>
                                </div>
                        </div>


		

          </div>
                            <!-- /.box-body -->

                            <div class="box-footer">
                                <input type="submit" class="btn btn-default" value="Add" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
	
	
	
<script src="https://cdn.ckeditor.com/ckeditor5/39.0.0/classic/ckeditor.js"></script>

<script>
    document.querySelectorAll('textarea').forEach((textarea) => {
        ClassicEditor
            .create(textarea, {
                // Adjust the height property to get 4 rows (experiment based on your needs)
            })
            .catch(error => {
                console.error(error);
            });
    });
</script>