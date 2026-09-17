<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i> <img src="<?php echo base_url(); ?>layout/img/box.svg"/></i> Product Category/ Testing Services
            <small>Add Product Category</small>
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->



                <div class="box box-primary">
                    <!--<div class="box-header">
                        <h3 class="box-title">Enter Category/ Test Name (Matrix)</h3>
                    </div>-->
                    <!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addCategory" action="<?php echo base_url() ?>addNewCategory" method="post" role="form">
                        <div class="box-body">
						

              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="categoryName">Product Category/ Service Name (Major- Enter only one category)</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('categoryName'); ?>" id="categoryName" name="categoryName" maxlength="300">
                                    </div>
                                </div>
                            </div>
							
							

<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="keywords">Sub Category (Can enter more categories and use comma(,) to seperate each category)</label>
                     <input type="text" class="form-control required" value="<?php echo set_value('keywords'); ?>" id="keywords" name="keywords" >
                                    </div>
                                </div>
                            </div>

 <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="keywords">Testing Parameters (Use comma(,) to seperate each Parameter)</label>
                     <input type="text" class="form-control required" value="<?php echo set_value('parameters'); ?>" id="parameters" name="parameters" >
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
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="relevantInstruments">Relavant Instruments (Use comma(,) to seperate each Instrument)</label>
                                        <textarea class="form-control" id="relevantInstruments" name="relevantInstruments" rows="4">
                                            <?php echo set_value('relevantInstruments'); ?>
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