<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
      <i> <img src="<?php echo base_url(); ?>assets/dist/img/institute.png"/></i>
            Home News List
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
               <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addHomenews" style="background-color: #932007; border-radius: 0px 3px 3px 0px; border: 2px solid #FFFFFF;">
                        <i class="fa fa-plus"></i> ADD HOME NEWS</a>
         
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
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                <?php echo $this->session->flashdata('error'); ?>
                                </div>
              <?php } ?>
              <?php
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
              <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                <?php echo $this->session->flashdata('success'); ?>
                        </div>
              <?php } ?>
              <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                  <thead>
                            <tr>
                                <th>Home News ID</th>
                                <th>Title</th>
                                <th>Sub Title</th>
                                <th>Subject</th>
                                <th>Home Image</th>
							
                                <th class="text-center">Edit/Delete</th>

                            </tr>
                  </thead>
                  <tbody>
                            <?php
                    if(!empty($homenewsRecords))
                    {
                        foreach($homenewsRecords as $record)
                        {
                    ?>
                                <tr>
                  <td>
                                        <?php echo $record->home_news_id ?>
                                    </td>
                                    <td>
                                        <?php echo $record->home_news_title ?>
                                    </td>
                 

                                    <td>
                                        <?php echo $record->home_sub_title ?>
                                    </td>
                                    <td>
                                        <?php echo $record->home_news_subject ?>
                                    </td>
                                    
									
									  <td>
                                        <a href="<?=base_url(); ?>homenewsimagesUpload/<?php echo $record->home_image ?>">View Image<a>
                                    </td>
										
                                    <td class="text-center">
                                       <!-- <a class="btn btn-sm btn-primary" href="<?= base_url().'log-history/'.$record->home_news_id; ?>" title="log history">
                                            <i class="fa fa-history"></i>
                                        </a> |-->
                                        <a class="btn btn-sm btn-info" href="<?php echo base_url().'editOldHomenews/'.$record->home_news_id; ?>" title="edit">
                                            <i class="fa fa-pencil"></i>
                                        </a>
                                        <a class="btn btn-sm btn-danger deleteHomenews" href="#" data-homenewsid="<?php echo $record->home_news_id; ?>" title="delete">
                                            <i class="fa fa-trash"></i>
                                        </a>
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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/deleteHomenews.js" charset="utf-8"></script>