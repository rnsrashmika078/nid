<?php
$instrumentId = '';
$instrumentName = '';

$instituteId = '';
$facultyId = '';
$departmentId = '';
$laboratoryId = '';
$instrumentTypeId = '';
$ConditionId = '';
$manufacturer = '';
$model = '';
$mYear = '';
$accessories = '';
$instdescription = '';
$instkeywords = '';
$catalogLink = '';
$catalogUpload = '';
$imageUpload1 = '';
$imageUpload2 = '';
$imageUpload3 = '';
$imageUpload4 = '';
$catalogAccess = '';
$price = '';
$scharge = '';
$vendorName = '';
$vendorContact = '';
$vendorUrl = '';
$samplesNo = '';
$samplesPerDay = '';
$usageHour = '';
$staffName = '';
$externalResearch = '';
$FundingSource = '';
$operationsDate = '';
$recordStatus = '';
$contactPersonName = '';
$contactPersonEmail = '';
$contactPersonPhoneNumber = '';
$contactPersonMobileNumber = '';
$pcategories = '';


if(!empty($instrumentInfo))
{
    foreach ($instrumentInfo as $if)
    {
    $instrumentId = $if->instrument_id;
    $instrumentName = $if->instrument_name; 
	
	
	 
	
    $instituteId = $if->institute_id;
    $facultyId = $if->faculty_id;
    $departmentId = $if->department_id;
    $laboratoryId = $if->laboratory_id;
   $instrumentTypeId = $if->instrument_type_id;
    $ConditionId = $if->condition_id;
    $manufacturer = $if->manufacturer;
    $model = $if->model;
    $mYear = $if->year_of_manufacture;
    $accessories = $if->accessories;
    $instdescription = $if->inst_description;
	 $instkeywords = $if->inst_keywords;
    $catalogLink = $if->catalog_link;
    $catalogUpload = $if->catalog_upload;
	 $imageUpload1 = $if->image_upload1;
	 $imageUpload2 = $if->image_upload2;
	 $imageUpload3 = $if->image_upload3;
	 $imageUpload4 = $if->image_upload4;
    $catalogAccess = $if->catalog_access;
    $price = $if->price;
	$scharge = $if->service_charge;
    $vendorName = $if->vendor_name;
    $vendorContact = $if->vendor_contact;
    $vendorUrl = $if->vendor_url;
    $samplesNo = $if->no_of_samples_per_cycle;
    $samplesPerDay = $if->no_of_samples_per_day;
    $usageHour = $if->total_usage_hour_per_day;
    $staffName = $if->availabiltiy_of_staff;
    $externalResearch = $if->external_researchers;
    $FundingSource = $if->funding_source;
    $operationsDate = $if->date_commencement_operation;
    $recordStatus = $if->record_status;
    $contactPersonName = $if->contact_person_name;
    $contactPersonEmail = $if->contact_person_email;
    $contactPersonPhoneNumber = $if->contact_person_phone_number;
    $contactPersonMobileNumber = $if->contact_person_mobile_number  ;
	 $pcategories = $if->p_categories;
    $techspecification = $if->specification;
    }
}


?>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <i> <img src="<?php echo base_url(); ?>layout/img/machine.svg"/> </i> Instrument Management
                <small>Edit Instrument</small>
            </h1>
        </section>

        <section class="content">

            <div class="row">
                <!-- left column -->
                <div class="col-md-8">
                    <!-- general form elements -->



                    <div class="box box-primary">
                        <!--<div class="box-header">
                            <h3 class="box-title">Enter Instrument information</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <!-- form start -->

                        <form role="form" action="<?php echo base_url() ?>editInstrument" method="post" id="editInstrument" role="form" enctype="multipart/form-data">
                            <div class="box-body">
            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instrumentName">Instrument Name</label>
                                        <input type="text" class="form-control required" value="<?php echo $instrumentName; ?>" id="instrumentName" name="instrumentName">
                    <input type="hidden" value="<?php echo $instrumentId; ?>" name="instrumentId" id="instrumentId" />
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
                      <option value="<?php echo $il->institute_id ?>" <?php if($il->institute_id == $instituteId) {echo "selected=selected";} ?>>
                        <?php echo $il->name?>
                      </option>
                      <?php
                      }
                    }

                    ?>

                  </select>
                  <input type="hidden" value="<?php echo $instituteId; ?>" name="instituteId" id="instituteId" />
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="faculty">faculty</label>
                  <select class="form-control " id="faculty" name="faculty">
                    <option value="">Select faculty</Option>
                       <?php
                                            if(!empty($faculties))
                                            {
                                                foreach ($faculties as $f)
                                                {
                                                    ?>
                                                <option value="<?php echo $f->faculty_id ?>" <?php if($f->faculty_id == $facultyId) {echo "selected=selected";} ?>>
                                                    <?php echo $f->faculty_name?>
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
                                        <label for="department">Department</label>
                                        <select class="form-control " id="department" name="department">
                                            <option value="">Select department</Option>
                      <?php
                                            if(!empty($departments))
                                            {
                                                foreach ($departments as $de)
                                                {
                                                    ?>
                                                <option value="<?php echo $de->department_id ?>" <?php if($de->department_id == $departmentId) {echo "selected=selected";} ?>>
                                                    <?php echo $de->department_name?>
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
                                        <label for="laboratory">Laboratory</label>
                                        <select class="form-control
                    " id="laboratory" name="laboratory">
                                            <option value="">Select Laboratory</Option>
                      <?php
                                            if(!empty($laboratories))
                                            {
                                                foreach ($laboratories as $la)
                                                {
                                                    ?>
                                                <option value="<?php echo $la->laboratory_id ?>" <?php if($la->laboratory_id == $laboratoryId) {echo "selected=selected";} ?>>
                                                    <?php echo $la->laboratory_name?>
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
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instrumentType">Product Category/ Test Name (Matrix)</label>
                                        <select class="form-control required" id="instrumentType" name="instrumentType">
                                            <option value="0">Product Category/ Test Name (Matrix)</option>
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
                                                <option value="<?php echo $rl->instrument_type_id ?>" <?php if($rl->instrument_type_id == $instrumentTypeId) {echo "selected=selected";} ?>>
                                                    <?php echo $rl->instrument_type ?>(ID:<?php echo $rl->institute_id ?>)
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
                                                <option value="<?php echo $rl->instrument_type_id ?>" <?php if($rl->instrument_type_id == $instrumentTypeId) {echo "selected=selected";} ?>>
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
							
							
							<!--  <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="pcategories">Other Product Categories</label>
                                        <textarea class="form-control" id="pcategories" name="pcategories" rows="4">
                                         <?php echo $pcategories; ?>
                                        </textarea>
                                    </div>
                                </div>
                            </div>-->
							
							
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="instrumentCondition">Instrument Condition</label>
                                        <select class="form-control required" id="instrumentCondition" name="instrumentCondition">
                                            <option value="0">Instrument Condition</option>
                                            <?php
                                            if(!empty($instrument_condition))
                                            {
                                                foreach ($instrument_condition as $iC)
                                                {
                                                    ?>
                                                <option value="<?php echo $iC->condition_id ?>" <?php if($iC->condition_id == $ConditionId) {echo "selected=selected";} ?>>
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
                                        <input type="text" class="form-control required" value="<?php echo $manufacturer; ?>" id="manufacturer" name="manufacturer" maxlength="128">
                                    </div>
                                </div>
                            </div>
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="model">Model</label>
                                        <input type="text" class="form-control required" value="<?php echo $model; ?>" id="model" name="model" maxlength="128">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="manufactureYear">Manufactured year(yyyy)</label>
                                        <input type="text" class="form-control required digits" value="<?php echo $mYear; ?>" id="manufactureYear" name="manufactureYear" maxlength="4">
                                    </div>
                                </div>
                            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="accessories">HS Code</label>
                  <input type="text" class="form-control required" value="<?php echo $accessories; ?>" id="accessories" name="accessories">
                </div>
              </div>
            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instdescription">Description/ Function</label>
                                        <textarea class="form-control" id="instdescription" name="instdescription" rows="4">
                                            <?php echo $instdescription; ?>
                                        </textarea>
                                    </div>
                                </div>
                            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="catalogLink">Web Link/ Catalog link</label>
                  <input type="url" class="form-control required" value="<?php echo $catalogLink; ?>" id="catalogLink" name="catalogLink">
                </div>
              </div>
            </div>
            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="catalogUpload">Catalog Upload (File name: <?php echo $catalogUpload;?>)</label>
                                        <input type="file" class="form-control required"  id="catalogUpload" name="catalogUpload">
                    <input type="hidden" class="form-control required"  id="oldCatalog" name="oldCatalog" value="<?php echo $catalogUpload; ?>">
                                    </div>
                                </div>
                        </div>
            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="catalogAccess">Catalog Access</label>
                                        <input type="text" class="form-control required" value="<?php echo $catalogAccess; ?>" id="catalogAccess" name="catalogAccess" maxlength="128">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="price">Instrument Price (Ex: 1000.00)</label>
                                        <input type="text" class="form-control required digits" value="<?php echo $price; ?>" id="price" name="price" maxlength="15">
                                    </div>
                                </div>
                            </div>
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="vendorName">Vendor Name</label>
                                        <input type="text" class="form-control required" value="<?php echo $vendorName; ?>" id="vendorName" name="vendorName" maxlength="128">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="vendorContact">Vendor Contact</label>
                                        <input type="text" class="form-control required" value="<?php echo $vendorContact; ?>" id="vendorContact" name="vendorContact" maxlength="128">
                                    </div>
                                </div>
                            </div>
              <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="vendorUrl">Vendor Url</label>
                  <input type="url" class="form-control required" value="<?php echo $vendorUrl; ?>" id="vendorUrl" name="vendorUrl">
                </div>
              </div>
            </div>
            
            <div class="row">
                                
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="staffName">Availability Of Technically Competent Staff (Yes/No)</label>
                                        <input type="text" class="form-control required" value="<?php echo $staffName; ?>" id="staffName" name="staffName" maxlength="128">
                                    </div>
                                </div>
                            </div>
            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                    <label for="externalResearch">Whether The Equipment Service Can Be Provided To External Researchers/Institutions</label>
                    <br>

                    <input type="Radio" class="custom-radio" name="externalResearch" id="yes" value="1" <?php echo set_radio('externalResearch','1'); ?> <?php if($externalResearch =="1"){ echo "checked";}?>> Yes &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="Radio" class="custom-radio" name="externalResearch" id="no" value="0" <?php echo set_radio('externalResearch','0'); ?> <?php if($externalResearch =="0"){ echo "checked";}?>> NO

                  </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="FundingSource">Funding Source</label>
                                        <input type="text" class="form-control required" value="<?php echo $FundingSource; ?>" id="FundingSource" name="FundingSource" maxlength="128">
                                    </div>
                                </div>
                            </div>
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="usageHour">Commencement of Operations Date</label>
                                        <input type="date" class="form-control" name="operationsDate" value="<?php echo $operationsDate;?>">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                    <label for="recordStatus">Record Status</label>
                    <br>

                    <input type="Radio" class="custom-radio" name="recordStatus" id="incomplete" value="0" <?php echo set_radio('recordStatus','0'); ?> <?php if($recordStatus =="0"){ echo "checked";}?>> Incomplete &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="Radio" class="custom-radio" name="recordStatus" id="completed" value="1" <?php echo set_radio('recordStatus','1'); ?> <?php if($recordStatus =="1"){ echo "checked";}?>> Completed

                  </div>
                                </div>
                            </div>





              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="contactPersonName">Contact Person Name</label>
                                        <input type="text" class="form-control required" value="<?php echo $contactPersonName; ?>" id="contactPersonName" name="contactPersonName" maxlength="200">
                                    </div>

                                </div>
              </div>


              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="contactPersonEmail">E-mail</label>
                                        <input type="text" class="form-control required" value="<?php echo $contactPersonEmail; ?>" id="contactPersonEmail" name="contactPersonEmail" maxlength="200">
                                    </div>

                                </div>
              </div>


              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="contactPersonPhoneNumber">Phone Number</label>
                                        <input type="text" class="form-control required" value="<?php echo $contactPersonPhoneNumber; ?>" id="contactPersonPhoneNumber" name="contactPersonPhoneNumber" maxlength="10">
                                    </div>

                                </div>
              </div>


              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="contactPersonMobileNumber">Mobile Number</label>
                                        <input type="text" class="form-control required" value="<?php echo $contactPersonMobileNumber; ?>" id="contactPersonMobileNumber" name="contactPersonMobileNumber" maxlength="10">
                                    </div>

                                </div>
              </div>
			  
			  
			   
			   
			   </br>
			
					
			</br>
			   <p align="center" style="color:red;"> <b>TECHNICAL SPECIFICATIONS</p>
			   
			   <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="techspecification">Specification</label>
                                        <textarea class="form-control" id="techspecification" name="techspecification" rows="4">
                                            <?php echo $techspecification; ?>
                                        </textarea>
                                    </div>
                                </div>
                            </div>
							
							
			   <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="samplesNo">Number of samples per cycle</label>
                                        <input type="text" class="form-control required digits" id="samplesNo" value="<?php echo $samplesNo; ?>" name="samplesNo" maxlength="10">

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="samplesPerDay">Number of samples per_day</label>
                                        <input type="text" class="form-control required digits" id="samplesPerDay" value="<?php echo $samplesPerDay; ?>" name="samplesPerDay" maxlength="10">
                                    </div>
                                </div>
								
								<div class="col-md-4">
                                    <div class="form-group">
                                        <label for="usageHour">Total usage hour per day</label>
                                        <input type="text" class="form-control required digits" id="usageHour" value="<?php echo $usageHour ; ?>" name="usageHour" maxlength="10">
                                    </div>
                                </div>
                        </div>
			   
			   
			   
			   
			   
			   
			   </br>
			
					
			</br>
			
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			  
			   <div class="row">
                                <div class="col-md-12">
                                  
                                     <div class="form-group">
                                        <label for="instkeywords">Keywords</label>
                                        <input type="text" class="form-control required digits" id="instkeywords" value="<?php echo $instkeywords ; ?>" name="instkeywords" >
                                    </div>
                                </div>
                            </div>



<div class="row"> 
    <div class="col-md-12"> 
        <div class="form-group"> 
            <label for="imageUpload1">Image 1 Upload (File name: <?php echo $imageUpload1;?>) <span style="color: red;">* (Only JPG, JPEG, and PNG files are allowed. Maximum size: 1MB)</span></label> 
            <input type="file" class="form-control required" id="imageUpload1" name="imageUpload1" accept=".jpg,.jpeg,.png" required> 
            <input type="hidden" class="form-control required" id="oldImage1" name="oldImage1" value="<?php echo $imageUpload1; ?>"> 
        </div> 
    </div> 
</div>


<div class="row"> 
    <div class="col-md-12"> 
        <div class="form-group"> 
            <label for="imageUpload2">Image 2 Upload (File name: <?php echo $imageUpload2;?>) </label> 
            <input type="file" class="form-control required" id="imageUpload2" name="imageUpload2" accept=".jpg,.jpeg,.png" required> 
            <input type="hidden" class="form-control required" id="oldImage2" name="oldImage2" value="<?php echo $imageUpload2; ?>"> 
        </div> 
    </div> 
</div>


<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="imageUpload3">Image 3 Upload (File name: <?php echo $imageUpload3;?>) <span style="color: #666;">(Optional - JPG, JPEG, PNG only, maximum 1MB)</span></label>
            <input type="file" class="form-control" id="imageUpload3" name="imageUpload3" accept=".jpg,.jpeg,.png">
            <input type="hidden" class="form-control" id="oldImage3" name="oldImage3" value="<?php echo $imageUpload3; ?>">
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="imageUpload4">Image 4 Upload (File name: <?php echo $imageUpload4;?>) <span style="color: #666;">(Optional - JPG, JPEG, PNG only, maximum 1MB)</span></label>
            <input type="file" class="form-control" id="imageUpload4" name="imageUpload4" accept=".jpg,.jpeg,.png">
            <input type="hidden" class="form-control" id="oldImage4" name="oldImage4" value="<?php echo $imageUpload4; ?>">
        </div>
    </div>
</div>




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
                                        <input type="text" class="form-control required digits" value="<?php echo $scharge; ?>" id="scharge" name="scharge" maxlength="15">
                                    </div>
                                </div>
                            </div>	



					
					
							
						

          </div>
                            <!-- /.box-body -->

                            <div class="box-footer">
                                <input type="submit" class="btn btn-default" value="Update" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
		
		
    </script>
	
	
	  <script src="https://cdn.ckeditor.com/ckeditor5/39.0.0/classic/ckeditor.js"></script>
<script>
    document.querySelectorAll('textarea').forEach((textarea) => {
        ClassicEditor
            .create(textarea)
            .catch(error => {
                console.error(error);
            });
    });
</script>