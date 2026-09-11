<?php
$instituteId = '';
$facultyId = '';
$departmentId = '';
$laboratoryId = '';
$laboratoryName='';
$laboratory_address = '';
$email = '';
$phone = '';
$description = '';
$accreditationStatus = '';
$accreditationType = '';
$AccreditationCertificateUpload = '';
$AccreditationScopeUpload = '';

$latitude = '';
$longitude = '';




if(!empty($laboratoryInfo))
{
    foreach ($laboratoryInfo as $if)
    {
    $instituteId = $if->institute_id;
        $facultyId = $if->faculty_id;
    $departmentId = $if->department_id;
    $laboratoryId = $if->laboratory_id;
    $laboratoryName = $if->laboratory_name;
        $laboratory_address = $if->laboratory_address;
        $email = $if->email;
    $phone = $if->phone_number;
     $description = $if->description;
     $accreditationStatus = $if->accreditation_status;
     $accreditationType = $if->accreditation_type;
     $AccreditationCertificateUpload = $if->accreditation_certificate;
     $AccreditationScopeUpload = $if->accreditation_scope;
     $latitude = $if->latitude;
     $longitude = $if->longitude;



    }
}


?>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <i> <img src="<?php echo base_url(); ?>layout/img/laboratory.svg"/></i> Laboratory Management
                <small>Edit Laboratory</small>
            </h1>
        </section>

        <section class="content">

            <div class="row">
                <!-- left column -->
                <div class="col-md-8">
                    <!-- general form elements -->



                    <div class="box box-primary">
                        <!--<div class="box-header">
                            <h3 class="box-title">Edit Laboratory information</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <!-- form start -->

                        <form role="form" action="<?php echo base_url() ?>editLaboratory" method="post"  enctype="multipart/form-data" id="editCollaborator" role="form">
                            <div class="box-body">


                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="laboratoryName">Laboratory Name</label>
                                            <input type="text" class="form-control" id="laboratoryName" placeholder="Laboratory Name" name="laboratoryName" value="<?php echo $laboratoryName; ?>" maxlength="128">
                                            <input type="hidden" value="<?php echo $laboratoryId; ?>" name="laboratoryId" id="laboratoryId" />
                                        </div>

                                    </div>
                                                                    </div>











                <div class="row">
              <div class="col-md-4">
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

                                 <div class="col-md-4">
                <div class="form-group">
                  <label for="faculty">faculty</label>
                  <select class="form-control required" id="faculty" name="faculty">
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


              <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="department">Department</label>
                                        <select class="form-control required" id="department" name="department">
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

              </div>




              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="laboratory_address">Address</label>
                    <input type="text" class="form-control" id="laboratory_address" placeholder="Address" name="laboratory_address" value="<?php echo $laboratory_address; ?>" >
                                    </div>
                                </div>
                            </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="email">E-mail address</label>
                                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="<?php echo $email; ?>"
                                                maxlength="128">
                                        </div>

                                    </div>


                  <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="phoneNumber">Phone Number</label>
                                            <input type="text" class="form-control" id="phoneNumber" placeholder="Phone Number" name="phoneNumber" value="<?php echo $phone; ?>"
                                                maxlength="10">
                                        </div>
                                    </div>

               </div>




              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="description">Description </label>
                     <textarea class="form-control" id="description"  name="description"  >
					
					   <?php echo $description; ?>
					 </textarea>
                                    </div>
                                </div>
                            </div>



                            <div class="row">
    <div class="col-md-6">
        <div class="form-group">

            <label for="accreditationStatus">Accreditation Status</label>
            <select class="form-control" id="accreditationStatus" name="accreditationStatus">
                <option value="">Select Yes/No</option>

                <option value="Yes" <?= ($accreditationStatus == "Yes") ? "selected" : "" ?>>Yes</option>
                <option value="No"  <?= ($accreditationStatus == "No")  ? "selected" : "" ?>>No</option>

            </select>

        </div>
    </div>

   
</div>


<!-- Hidden section, shown only when Yes -->
<div id="accreditationDetails" style="display:none;">


    <div class="row">
 <div class="col-md-6">
        <div class="form-group">
            <label for="accreditationType">If Yes, Type of accreditation (ex. ISO/IEC17025)</label>
            <input type="text" class="form-control" id="accreditationType" 
                   name="accreditationType" 
                   value="<?php echo $accreditationType; ?>"
                   placeholder="Accreditation Type">
        </div>
    </div>

 </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="AccreditationCertificateUpload">
                    Upload Accreditation Certificate 
                    <?php echo $AccreditationCertificateUpload; ?>
                </label>

                <input type="file" class="form-control" 
                       id="AccreditationCertificateUpload" 
                       name="AccreditationCertificateUpload">

                <input type="hidden" 
                       id="oldAccreditationCertificateUpload" 
                       name="oldAccreditationCertificateUpload" 
                       value="<?php echo $AccreditationCertificateUpload; ?>">
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="AccreditationScopeUpload">
                    Upload Scope of Accreditation 
                    <?php echo $AccreditationScopeUpload; ?>
                </label>

                <input type="file" class="form-control" 
                       id="AccreditationScopeUpload" 
                       name="AccreditationScopeUpload">

                <input type="hidden" 
                       id="oldAccreditationScopeUpload" 
                       name="oldAccreditationScopeUpload" 
                       value="<?php echo $AccreditationScopeUpload; ?>">
            </div>
        </div>
    </div>

</div>

<!-- JS to toggle fields -->
<script>
    function toggleAccreditationFields() {
        var status = document.getElementById('accreditationStatus').value;
        var details = document.getElementById('accreditationDetails');

        if (status === "Yes") {
            details.style.display = 'block';
        } else {
            details.style.display = 'none';
        }
    }

    // Run on page load (for edit mode)
    window.onload = toggleAccreditationFields;

    // Run on change
    document.getElementById('accreditationStatus').addEventListener('change', toggleAccreditationFields);
</script>



                                                </br>
                                                </br>





                            <div class="box-header">
                        <h3 class="box-title" style="margin: 0; display: inline; color: red;" align="right">For NSF use only</h3>
                    </div>
                               <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="latitude">Latitude</label>
                                            <input type="latitude" class="form-control" id="latitude" placeholder="Latitude" name="latitude" value="<?php echo $latitude; ?>"
                                                maxlength="100">
                                        </div>

                                    </div>


                  <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="longitude">Longitude</label>
                                            <input type="text" class="form-control" id="longitude" placeholder="Longitude" name="longitude" value="<?php echo $longitude; ?>"
                                                maxlength="100">
                                        </div>
                                    </div>

               </div>

                 <p>Latitude, Longitude values are for the purpose of displaying the location of products, instruments in the google map. (Ex- 7.322843145341105, 79.98820556784688) first value is Latitude and second valu is Longitude.These both values will be entered by NSF.</p>





                            </div>
                            <!-- /.box-body -->

                            <div class="box-footer">
                                <input type="submit" class="btn btn-default" value="Update" />
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

