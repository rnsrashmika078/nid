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
          
              <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Institute</th>
                    <th>Instrument Type</th>
                    <th>Entered By</th>
                    <th>Contact Person No</th>
                    <th>Authority</th>
                    <th>Record Status</th>
                    
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
                        <?php echo $record->instrument_name ?>
                      </td>
                      <td>
                        <?php echo $record->name ?>
                      </td>
                      <td>
                        <?php echo $record->instrument_type?>
                      </td>
                      <td>
                        <?php echo $record->last_name ?>
                      </td>
            <td>
                        <?php echo $record->mobile_number ?>
                      </td>
            <td>
                        <?php echo $record->user_type ?>
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


