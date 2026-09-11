<?php
$userId = '';
$userName = '';
$roleId = '';

if(!empty($userInfo))
{
    foreach ($userInfo as $uf)
    {
        $userId = $uf->id;		
		$userName = $uf->username;
        $roleId = $uf->user_type_id;		
    }
}


?>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <i class="fa fa-users"></i> User Management
                <small>Role</small>
            </h1>
        </section>

        <section class="content">

            <div class="row">
                <!-- left column -->
                <div class="col-md-8">
                    <!-- general form elements -->



                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">Select User Permission</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->

                        <form role="form" action="<?php echo base_url() ?>givePermission" method="post" id="editUser" role="form">
                            <div class="box-body">																									
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="userName">User Name</label>
                                            <input type="text" class="form-control" id="userName" placeholder="User Name" name="userName" value="<?php echo $userName; ?>"
                                                maxlength="128" disabled>												
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="role">Authority</label>
                                            <select class="form-control" id="role" name="role">
                                                <option value="0">Select Authorization</option>
                                                <?php
                                            if(!empty($roles))
                                            {
                                                foreach ($roles as $rl)
                                                {
                                                    ?>
                                                    <option value="<?php echo $rl->user_type_id; ?>" <?php if($rl->user_type_id == $roleId) {echo "selected=selected";} ?>>
                                                        <?php echo $rl->user_type ?>
                                                    </option>
                                                    <?php
                                                }
                                            }
                                            ?>
                                            </select>
											<input type="hidden" value="<?php echo $userId; ?>" name="userId" id="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->

                            <div class="box-footer">
                                <input type="submit" class="btn btn-primary" value="send" />
                                <input type="reset" class="btn btn-default" value="reset" />
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

    <script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>
	