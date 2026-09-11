<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-users"></i> User Management
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addNew">
                        <i class="fa fa-plus"></i>Add User</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">User List</h3>
                                       <div class="box-tools">
                            <form action="<?php echo base_url() ?>userListing" method="POST" id="searchList">
                                <div class="input-group">
                                    <input type="text" name="searchText" value="<?php echo $searchText; ?>" class="form-control input-sm pull-right" style="width: 150px;"
                                        placeholder="Search" />
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-default searchList">
                                            <i class="fa fa-search"></i>
                                        </button>

                  </div>  


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
                                </form>
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

                           </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">



              <?php } ?>
              <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                  <thead>
                            <tr>
								<th>ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>User Name</th>
                                <th>Password</th>
                                <th>Authority</th>
                                 <th class="text-center">Transactions</th>

                            </tr>
                  </thead>
                  <tbody>
                            <?php
                    if(!empty($userRecords))
                    {
                        foreach($userRecords as $record)
                        {
                    ?>
                                <tr>
									<td>
                                        <?php echo $record->id ?>
                                    </td>
                                    <td>
                                        <?php echo $record->first_name ?>
                                    </td>
                                    <td>
                                        <?php echo $record->last_name ?>
                                    </td>
                                    <td>
                                        <?php echo $record->username ?>
                                    </td>
                                    <td>
                                        <?php echo $record->password ?>
                                    </td>
                                    <td>
                                        <?php echo $record->user_type ?>
                                    </td>
                                    <td class="text-center">
                                        <a class="btn btn-sm btn-primary" href="<?= base_url().'log-history/'.$record->id; ?>" title="log history">
                                            <i class="fa fa-history"></i>
                                        </a> |
                                        <a class="btn btn-sm btn-info" href="<?php echo base_url().'editOld/'.$record->id; ?>" title="edit">
                                            <i class="fa fa-pencil"></i>
                                        </a>
                                        <a class="btn btn-sm btn-danger deleteUser" href="#" data-userid="<?php echo $record->id; ?>" title="delete">
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



                      <div class="box-footer clearfix">
                        <?php echo $this->pagination->create_links(); ?>
                    </div>

                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
</div>

<script type="text/javascript" src="<?php echo base_url(); ?>assets1/js/common.js" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();
            var link = jQuery(this).get(0).href;
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "userListing/" + value);
            jQuery("#searchList").submit();
        });
    });
</script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets1/js/common.js" charset="utf-8"></script>