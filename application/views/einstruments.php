<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-users"></i> Instrument Management
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <!-- <div class="col-xs-12 text-right">
                <div class="form-group">
                   <a class="btn btn-primary" href="<?php echo base_url(); ?>addInstrument">
              <i class="fa fa-plus"></i> Add Instrument</a>
                </div>
            </div>-->
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Instrument List</h3>
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
                    <th>Name</th>
                    <th>Product Category/Service</th>
          <th>Keywords</th>

                     <th>Institute</th>
          <th>View Location & Contact Information</th>
          


                  </tr>
                </thead>
                <tbody>
                  <?php
                      if(!empty($instrumentRecords))
                      {
                          foreach($instrumentRecords as $record)
                          {
                      ?>
                    <tr>


                       <td>
                        <?php echo $record->instrument_id ?>
                      </td>
                      <td>
					                           <a href="<?php echo base_url().'authorized_instrumentView/'.$record->instrument_id; ?>" target="_blank"> <img src="<?=base_url(); ?>/catalogUploads/<?php echo rawurlencode($record->image_upload1)?>"  width="150px"  height="120px"/></a>
						</br>
                       <a href="<?php echo base_url().'authorized_instrumentView/'.$record->instrument_id; ?>" target="_blank"> <?php echo $record->instrument_name ?></a>
                      </td>

                        <td>
                        <?php echo $record->instrument_type?>
						</br>
						<b>Sub Categories:</b> <?php echo $record->keywords?>
                      </td>
            <td>
                        <?php echo $record->inst_keywords?>
                      </td>
                     <!--<td>
                        <?php echo $record->last_name ?>
                      </td>
           <td>
                        <?php echo $record->mobile_number ?>
                      </td>
            <td>
                        <?php echo $record->user_type ?>
                      </td>-->

                      <td>
                        <?php echo $record->name ?>
                      </td>
            <td>
<script type="text/javascript">
// Popup window code
function newPopup(url) {
	popupWindow = window.open(
		url,'popUpWindow','height=500,width=450,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
}
</script>
<p><a href="JavaScript:newPopup('<?php echo base_url().'einstrument_googleview/'.$record->instrument_id; ?>');">View Location & Contact Information</a></p>
                      </td>

            

          <!--  <td>
                        <p><?php echo $record->keyword1?></p>
             <p><?php echo $record->keyword2?></p>
             <p><?php echo $record->keyword3?></p>
             <p><?php echo $record->keyword4?></p>
             <p><?php echo $record->keyword5?></p>
             <p><?php echo $record->keyword6?></p>
                      </td> 
                      <td>
                        <div class="label label-<?php
                        if ($record->record_status == '0')
                        echo 'danger';
                        else if ($record->record_status == '1')
                        echo 'success';
                        ?>">
                          <?php if ($record->record_status == '0')
              echo 'Incomplete';
              else if ($record->record_status == '1')
              echo 'Completed'; ?>
                        </div>
                      </td> -->


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

