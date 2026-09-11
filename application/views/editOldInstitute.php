<?php
$instituteId = '';
$instituteName='';
$instituteCoordinator='';
$address = '';
$email = '';
$phone = '';
$ministry = '';
$description = '';
$latitude = '';
$longitude = '';



if(!empty($instituteInfo))
{
    foreach ($instituteInfo as $if)
    {
        $instituteId = $if->institute_id;
    $instituteName = $if->name;
	$instituteCoordinator = $if->inst_coordinator;
        $address = $if->address;
        $email = $if->email;
    $phone = $if->phone_number;
     $ministry = $if->ministry;
    $description = $if->description;
       $latitude = $if->latitude;
     $longitude = $if->longitude;


    }
}


?>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <i> <img src="<?php echo base_url(); ?>layout/img/bank.svg"/></i> Institute Management
                <small>Edit Institute</small>
            </h1>
        </section>

        <section class="content">

            <div class="row">
                <!-- left column -->
                <div class="col-md-8">
                    <!-- general form elements -->



                    <div class="box box-primary">
                        <!--<div class="box-header">
                            <h3 class="box-title">Edit Institute information</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <!-- form start -->

                        <form role="form" action="<?php echo base_url() ?>editInstitute" method="post" id="editInstitute" role="form">
                            <div class="box-body">


                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="instituteName">Insitute Name</label>
                                            <input type="text" class="form-control" id="instituteName" placeholder="Insitute Name" name="instituteName" value="<?php echo $instituteName; ?>" maxlength="128">
                                            <input type="hidden" value="<?php echo $instituteId; ?>" name="instituteId" id="instituteId" />
                                        </div>

                                    </div>
                                                                    </div>


                   

              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="instituteCoordinator">Institute Coordinator</label>
                    <input type="text" class="form-control" id="instituteCoordinator" placeholder="instituteCoordinator" name="instituteCoordinator" value="<?php echo $instituteCoordinator; ?>" >
                                    </div>
                                </div>
                            </div>



              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" placeholder="Address" name="address" value="<?php echo $address; ?>" >
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
                                        <label for="ministry">Ministry</label>
                    <input type="text" class="form-control" id="ministry" placeholder="Ministry" name="ministry" value="<?php echo $ministry; ?>" >
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

 <p> Latitude, Longitude values are for the purpose of displaying institutes in the google map. (Ex- 6.975669430511738, 79.91556412524763) first value is Latitude and second valu is Longitude. 
					 These default values will be replaced with your institution's Latitude, Longitude values by NSF.</p> 

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