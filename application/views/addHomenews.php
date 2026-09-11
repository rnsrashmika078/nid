<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-users"></i> Home News
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
                        <h3 class="box-title">Enter Home News Information</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addHomenews" action="<?php echo base_url() ?>addNewHomenews" method="post" enctype="multipart/form-data" role="form">
                        <div class="box-body">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="homenewsTitle">Title</label>
                                        <input type="text" class="form-control" value="<?php echo set_value('homenewsTitle'); ?>" id="homenewsTitle" name="homenewsTitle" maxlength="600">
                                    </div>

                                </div>

                            </div>


              
              <div class="row">.
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="homesubTitle">Sub Title</label>
                                        <input type="text" class="form-control" value="<?php echo set_value('homesubTitle'); ?>" id="homesubTitle" name="homesubTitle" maxlength="600">
                                    </div>
                                </div>
                            </div>
                           

              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="homenewsSubject">Subject </label>
                                        <textarea class="form-control" id="homenewsSubject" name="homenewsSubject">
                                            <?php echo set_value('homenewsSubject'); ?>
                                        </textarea>

                                    </div>
                                </div>
                            </div>
							
							
						
							
				<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="homenewsimageUpload">Home Image Upload</label>
                                        <input type="file" class="form-control required"  id="homenewsimageUpload" name="homenewsimageUpload">
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

<script src="https://cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>
	
	<script>
                        CKEDITOR.replace( 'homenewsSubject' );
                </script>