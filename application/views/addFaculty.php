<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i> <img src="<?php echo base_url(); ?>layout/img/graduation-hat.svg"/></i> Faculty Management
            <small>Add Faculty</small>
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->



                <div class="box box-primary">
                    <!--<div class="box-header">
                        <h3 class="box-title">Enter Faculty information</h3>
                    </div>-->
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addFaculty" action="<?php echo base_url() ?>addNewFaculty" method="post" role="form">
                        <div class="box-body">
						
						
						<div class="row">
							<div class="col-md-12">
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
							
						</div>
						
						
						

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="facultyName">Faculty Name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('facultyName'); ?>" id="facultyName" name="facultyName" >
                                    </div>

                                </div>

                            </div>
              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="address">Address</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('address'); ?>" id="address" name="address" >
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


              




                             <!--<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="ministry">Ministry</label>
                     <input type="text" class="form-control required" value="<?php echo set_value('ministry'); ?>" id="ministry" name="ministry" maxlength="300">
                                    </div>
                                </div>
                            </div>-->

                            
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