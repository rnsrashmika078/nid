<?php
$feedbackId = '';
$userName='';
$address = '';
$email = '';
$phone = '';
$subject = '';
$message = '';
$imageUpload = '';



if(!empty($feedbackInfo))
{
    foreach ($feedbackInfo as $if)
    {
        $feedbackId = $if->userf_id;
    $userName = $if->u_name;
        $address = $if->address;
        $email = $if->email;
    $phone = $if->phone_number;
     $subject = $if->subject;
    $message = $if->message;
    $imageUpload = $if->user_image;


    }
}


?>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <i class="fa fa-institutes"></i> User Feedback Management
                <small>Add / edit</small>
            </h1>
        </section>

        <section class="content">

            <div class="row">
                <!-- left column -->
                <div class="col-md-8">
                    <!-- general form elements -->



                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">Edit User Feedback information</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->

                        <form role="form" action="<?php echo base_url() ?>editFeedback" method="post" id="editFeedback" enctype="multipart/form-data" role="form">
                            <div class="box-body">


                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="userName">User Name</label>
                                            <input type="text" class="form-control" id="userName" placeholder="User Name" name="userName" value="<?php echo $userName; ?>" maxlength="300">
                                            <input type="hidden" value="<?php echo $feedbackId; ?>" name="feedbackId" id="feedbackId" />
                                        </div>

                                    </div>
                                                                    </div>


                   

              



              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" placeholder="Address" name="address" value="<?php echo $address; ?>" maxlength="300">
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
                                        <label for="subject">Subject</label>
                    <input type="text" class="form-control" id="subject" placeholder="Subject" name="subject" value="<?php echo $subject; ?>" maxlength="500">
                                    </div>
                                </div>
                            </div>


             


<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="message">Messagen</label>
										<input type="message" class="form-control" id="message" placeholder="message" name="message" value="<?php echo $message; ?>" >                                       
                                    </div>
                                </div>                               
                            </div>	


            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
										<label for="imageUpload">Image Upload (File name: <?php echo $imageUpload;?>)</label>
                                        <input type="file" class="form-control required"  id="imageUpload" name="imageUpload">
                                        <input type="hidden" class="form-control required"  id="oldImage" name="oldImage" value="<?php echo $imageUpload; ?>">
                                    </div>
                                </div>
                        </div>
						




                            </div>
                            <!-- /.box-body -->

                            <div class="box-footer">
                                <input type="submit" class="btn btn-primary" value="Update" />
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

