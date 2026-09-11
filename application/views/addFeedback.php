<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-users"></i> Institute Management
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
                        <h3 class="box-title">Enter User Feedback Information</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addFeedback" action="<?php echo base_url() ?>addNewFeedback" method="post" enctype="multipart/form-data" role="form">
                        <div class="box-body">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="userName">User Name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('userName'); ?>" id="userName" name="userName" maxlength="128">
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
                                        <label for="subject">Subject</label>
                     <input type="text" class="form-control required" value="<?php echo set_value('subject'); ?>" id="subject" name="subject" maxlength="500">
                                    </div>
                                </div>
                            </div>
							
						  <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="message">Message</label>
                                        <textarea class="form-control" id="message" name="message" rows="4">
                                            <?php echo set_value('message'); ?>
                                        </textarea>

                                    </div>
                                </div>
                            </div>
	
							
				<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="imageUpload">Image Upload</label>
                                        <input type="file" class="form-control required"  id="imageUpload" name="imageUpload">
                                    </div>
                                </div>
                        </div>
            
                         




                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <input type="submit" class="btn btn-primary" value="Add" />
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