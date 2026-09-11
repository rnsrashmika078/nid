<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
      <i> <img src="<?php echo base_url(); ?>assets/dist/img/institute.png"/></i>
            Product Category/ Services
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addCategory">
                        <i class="fa fa-plus"></i>Add  Category</a>
          <?php
            // Rol definetion in application/config/constants.php
            if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN)
            {
            ?>

       <?php
            }
            ?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                      <!--  <h3 class="box-title">institutes List</h3>-->
                                    </div>
                      <!-- /.box-header -->
          <div class="box-body table-responsive no-padding">
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
              <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                  <thead>
                            <tr>
                                <th>ID</th>
                                <th>Product Category/ Test Name (Matrix)</th>
								<th>Sub Category</th>
                                 <th>Testing Parameters</th>
                                <th>Description</th>
                                <th>Relavant Instruments</th>
                                

                            </tr>
                  </thead>
                  <tbody>
                            <?php
                    if(!empty($categoryRecords))
                    {
                        foreach($categoryRecords as $record)
                        {
                    ?>
                                <tr>
                  <td>
                                        <?php echo $record->instrument_type_id ?>
                                    </td>
                                    <td>
                                        <?php echo $record->instrument_type ?>
                                    </td>
 <td>
                                        <?php echo $record->keywords ?>
                                    </td>
                                    <td>
                                        <?php echo $record->parameters ?>
                                    </td>
                                       <td> 
                                        <?php echo $record->description ?>
                                    </td>
                                   
									
									<td>
                                        <?php echo $record->relevant_instruments ?>
                                    </td>


                                    


                                </tr>
                                <?php
                        }
                    }
                    ?>
                  </tbody>
                        </table>
              </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/deleteCategory.js" charset="utf-8"></script>