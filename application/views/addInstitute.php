<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
             <i> <img src="<?php echo base_url(); ?>layout/img/bank.svg"/></i> Institute Management
            <small>Add Institute</small>
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->



                <div class="box box-primary">
                    <!--<div class="box-header">
                        <h3 class="box-title">Enter Institute information</h3>
                    </div>-->
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addInstitute" action="<?php echo base_url() ?>addNewInstitute" method="post" role="form">
                        <div class="box-body">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instituteName"><p style="margin: 0; display: inline;" >Institute Name</p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('instituteName'); ?>" id="instituteName" name="instituteName" maxlength="128">
                                    </div>

                                </div>

                            </div>
							
							
							              <div class="row">.
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instituteCoordinator">Institute Coordinator</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('instituteCoordinator'); ?>" id="instituteCoordinator" name="instituteCoordinator" maxlength="800">
                                    </div>
                                </div>
                            </div>


              
              <div class="row">.
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
                                        <label for="email"><p style="margin: 0; display: inline;" >E-mail address</p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </p></label>
                                        <input type="text" class="form-control required email" id="email" value="<?php echo set_value('email'); ?>" name="email"
                                            maxlength="128">
                                    </div>
                                </div>

                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="phoneNumber"><p style="margin: 0; display: inline;" >Phone number</p> <p style="margin: 0; display: inline; color: red;" align="right">(* required) </label>
                                        <input type="text" class="form-control required digits" id="phoneNumber" value="<?php echo set_value('phoneNumber'); ?>" name="phoneNumber"
                                            maxlength="10">
                                    </div>
                                </div>
                                                            </div>





              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="ministry">Ministry</label>
                     <input type="text" class="form-control required" value="<?php echo set_value('ministry'); ?>" id="ministry" name="ministry" maxlength="300">
                                    </div>
                                </div>
                            </div>
							
						  <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <textarea class="form-control" id="description" name="description" rows="10">
                                            <?php echo set_value('description'); ?>
                                        </textarea>

                                    </div>
                                </div>
                            </div>




                           




	
							
				<div class="box-header">
                        <h3 class="box-title" style="margin: 0; display: inline; color: red;" align="right">For NSF use only</h3>
                    </div>			
							
              <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="latitude"><p style="margin: 0; display: inline;" >Default Latitude</p> <p style="margin: 0; display: inline; color: red;" align="right">(* for NSF) </p></label>
                                        <input type="text" class="form-control  latitude" id="latitude" value="6.975669430511738" name="latitude"
                                            maxlength="100">
                                    </div>
                                </div>

                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="longitude"><p style="margin: 0; display: inline;" >Default Longitude</p> <p style="margin: 0; display: inline; color: red;" align="right">(* for NSF) </p></label>
                                        <input type="text" class="form-control  digits" id="longitude" value="79.91556412524763" name="longitude"
                                            maxlength="100">
                                    </div>

                                </div>


                                                            </div>
                     <p> Latitude, Longitude values are for the purpose of displaying institutes in the google map. (Ex- 6.975669430511738, 79.91556412524763) first value is Latitude and second valu is Longitude. 
					 These default values will be replaced with your institution's Latitude, Longitude values by NSF.</p> 

                         




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
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">�</button>
                        <?php echo $this->session->flashdata('error'); ?>
                    </div>
                    <?php } ?>
                    <?php
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">�</button>
                        <?php echo $this->session->flashdata('success'); ?>
                    </div>
                    <?php } ?>







                    <div class="row">
                        <div class="col-md-12">
                            <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">�</button></div>'); ?>
                        </div>
                    </div>
            </div>
        </div>
    </section>
</div>
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