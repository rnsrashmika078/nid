<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i> <img src="<?php echo base_url(); ?>layout/img/laboratory.svg"/></i> Laboratory Management
            <small>Add Laboratory</small>
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->



                <div class="box box-primary">
                    <!--<div class="box-header">
                        <h3 class="box-title">Enter Laboratory information</h3>
                    </div>-->
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addLaboratory" action="<?php echo base_url() ?>addNewLaboratory" enctype="multipart/form-data" method="post" role="form">
                        <div class="box-body">


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

              <div class="col-md-4">
                <div class="form-group">
                  <label for="faculty">Faculty (Only for Universities)</label>
                  <select class="form-control required" id="faculty" name="faculty">
                    <option value="">Select Faculty</Option>
                  </select>
                </div>
              </div>
               <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="department">Department/Division</label>
                                        <select class="form-control required" id="department" name="department">
                                            <option value="">Select Department</Option>
                                        </select>
                                    </div>
                                </div>
              </div>




                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="laboratoryName">Laboratory Name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('laboratoryName'); ?>" id="laboratoryName" name="laboratoryName" >
                                    </div>

                                </div>

                            </div>


              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="laboratory_address">Address</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('laboratory_address'); ?>" id="laboratory_address" name="laboratory_address" >
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
                                        <label for="description">Description</label>
                                        <textarea class="form-control" id="description" name="description" rows="4">
                                            <?php echo set_value('description'); ?>
                                        </textarea>

                                    </div>
                                </div>
                            </div>


 <div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label for="accreditationStatus">Accreditation Status 
                <p style="margin: 0; display: inline; color: red;" align="right">* </p>
            </label>
            <select class="form-control" id="accreditationStatus" name="accreditationStatus">
                <option value="">Select Yes/No</option>
                <option value="Yes">Yes</option>
                <option value="No">No</option>
            </select>
        </div>
    </div>
</div>

<!-- Section to show only when Yes -->
<div id="accreditationDetails" style="display: none;">

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="accreditationType">If Yes, Type of accreditation (ex. ISO/IEC17025)</label>
                <input type="text" class="form-control" 
                       value="<?php echo set_value('accreditationType'); ?>" 
                       id="accreditationType" name="accreditationType">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="AccreditationCertificateUpload">Upload Accreditation Certificate</label>
                <input type="file" class="form-control"  
                       id="AccreditationCertificateUpload" name="AccreditationCertificateUpload">
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="AccreditationScopeUpload">Upload Scope of Accreditation</label>
                <input type="file" class="form-control"  
                       id="AccreditationScopeUpload" name="AccreditationScopeUpload">
            </div>
        </div>
    </div>

    

</div>

<script>
    document.getElementById('accreditationStatus').addEventListener('change', function() {
        var details = document.getElementById('accreditationDetails');
        if (this.value === 'Yes') {
            details.style.display = 'block';
        } else {
            details.style.display = 'none';
        }
    });
</script>

                         
                </br>
                </br>
                               <div class="box-header">
                        <h3 class="box-title" style="margin: 0; display: inline; color: red;" align="right">For NSF use only</h3>
                    </div>

                             <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="latitude"><p style="margin: 0; display: inline;" >Latitude</p> <p style="margin: 0; display: inline; color: red;" align="right">(* for NSF) </p></label>
                                        <input type="text" class="form-control required latitude" id="latitude" value="6.905121270473732" name="latitude"
                                            maxlength="100">
                                    </div>
                                </div>

                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="longitude"><p style="margin: 0; display: inline;" >Longitude</p> <p style="margin: 0; display: inline; color: red;" align="right">(* for NSF) </p></label>
                                        <input type="text" class="form-control required longitude" id="longitude" value="79.86996135538563" name="longitude"
                                            maxlength="100">
                                    </div>

                                </div>


                                                            </div>
              <p>Latitude, Longitude values are for the purpose of displaying the location of products, instruments in the google map. (Ex- 7.322843145341105, 79.98820556784688) first value is Latitude and second valu is Longitude.
        These both values will be entered by NSF.</p>



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