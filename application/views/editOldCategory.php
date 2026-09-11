<?php
$categoryId = '';
$categoryName='';
$parameters = '';
$description = '';
$keywords = '';
$relevantInstruments = '';


if(!empty($categoryInfo))
{
    foreach ($categoryInfo as $if)
    {
        $categoryId = $if->instrument_type_id;
		$categoryName = $if->	instrument_type;
        $parameters = $if->parameters;
       		$description = $if->description;
       $keywords = $if->keywords;
		$relevantInstruments = $if->relevant_instruments;
		
    }
}


?>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <i> <img src="<?php echo base_url(); ?>layout/img/box.svg"/></i>  Product Category/ Testing Services Management
                <small>Edit Product Category</small>
            </h1>
        </section>

        <section class="content">

            <div class="row">
                <!-- left column -->
                <div class="col-md-8">
                    <!-- general form elements -->



                    <div class="box box-primary">
                        <!--<div class="box-header">
                            <h3 class="box-title">Edit Category information</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <!-- form start -->

                        <form role="form" action="<?php echo base_url() ?>editCategory" method="post" id="editCategory" role="form">
                            <div class="box-body">	
								
								
								<div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="categoryName">Product Category/ Service Name</label>
                                            <input type="text" class="form-control" id="categoryName" placeholder="Category Name" name="categoryName" value="<?php echo $categoryName; ?>" >
                                            <input type="hidden" value="<?php echo $categoryId; ?>" name="categoryId" id="categoryId" />
                                        </div>

                                    </div>
                                                                    </div>
																	
																	
								
<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="keywords">Sub Category</label>
										<input type="text" class="form-control" id="keywords" placeholder="keywords" name="keywords" value="<?php echo $keywords; ?>" >                                       
                                    </div>
                                </div>                               
                            </div>	


								
							<div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="parameters">Testing Parameters</label>
										<input type="text" class="form-control" id="parameters" placeholder="Parameters" name="parameters" value="<?php echo $parameters; ?>" >                                       
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
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="relevantInstruments">Relavant Instruments</label>
										<input type="text" class="form-control" id="relevantInstruments" placeholder="relevantInstruments" name="relevantInstruments" value="<?php echo $relevantInstruments; ?>" maxlength="800">                                       
                                    </div>
                                </div>                               
                            </div>	
								
                               
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
	
	<script src="https://cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>
	
	<script>
                        CKEDITOR.replace( 'description' );
                </script>
				

    