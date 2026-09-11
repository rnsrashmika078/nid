<?php
$userId = '';
$title='';
$gender='';
$firstName='';
$lastName = '';
$address = '';
$email = '';
$designationName = '';
$mobile = '';
$phone = '';
$instituteId = '';
$facultyId = '';
$departmentId = '';
$laboratoryId = '';
$userName = '';
$roleId = '';
$otherInstitute = '';

if(!empty($userInfo))
{
    foreach ($userInfo as $uf)
    {
        $userId = $uf->id;
    $title = $uf->title;
    $gender = $uf->gender;
    $firstName = $uf->first_name;
        $lastName = $uf->last_name;
    $address = $uf->address;
        $email = $uf->email;
    $designationName = $uf->designation;
        $mobile = $uf->mobile_number;
    $phone = $uf->phone_number;
    $instituteId = $uf->institute_id;
    $facultyId = $uf->faculty_id;
    $departmentId = $uf->department_id;
    $laboratoryId = $uf->laboratory_id;
    $userName = $uf->username;
        $roleId = $uf->user_type_id;
        $otherInstitute = $uf->other_institute_name;
    }
}


?>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <i> <img src="<?php echo base_url(); ?>layout/img/person.png" width="50px" height="50px"/></i> User Management
                <small>Edit User</small>
            </h1>
        </section>

        <section class="content">

            <div class="row">
                <!-- left column -->
                <div class="col-md-8">
                    <!-- general form elements -->



                    <div class="box box-primary">
                        <!--<div class="box-header">
                            <h3 class="box-title">Enter user information</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <!-- form start -->

                        <form role="form" action="<?php echo base_url() ?>editUser" method="post" id="editUser" role="form">
                            <div class="box-body">
                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                    <!-- Title dropdown -->
                                        <label for="title">Title</label>
                                        <select class="form-control" id="title" name="title">
                                            <option value="">Select title</Option>
                      <?php
                        if ($title =="Mr")
                        { ?>
                        <option value="Mr" selected>Mr</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Mr">Mr</Option>
                        <?php  }
                          ?>
                      <?php
                        if ($title =="Ms")
                        { ?>
                        <option value="Ms" selected>Ms</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Ms">Ms</Option>
                        <?php  }
                          ?>
                      <?php
                        if ($title =="Mrs")
                        { ?>
                        <option value="Mrs" selected>Mrs</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Mrs">Mrs</Option>
                        <?php  }
                          ?>

                        <?php
                        if ($title =="Miss")
                        { ?>
                        <option value="Miss" selected>Miss</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Miss">Miss</Option>
                        <?php  }
                          ?>


 <?php
                        if ($title =="Eng")
                        { ?>
                        <option value="Eng" selected>Eng</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Eng">Eng</Option>
                        <?php  }
                          ?>

                      <?php
                        if ($title =="Dr")
                        { ?>
                        <option value="DR" selected>Dr</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Dr">Dr</Option>
                        <?php  }
                          ?>

                      <?php
                        if ($title =="Prof")
                        { ?>
                        <option value="Prof" selected>Prof</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Prof">Prof</Option>
                        <?php  }
                          ?>
                                        </select>
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                    <!-- Gender dropdown -->
                      <label for="gender">Gender</label>
                      <select class="form-control" id="gender" name="gender">
                        <option value="">Select gender</Option>
                        <?php
                        if ($gender =="Male")
                        { ?>
                        <option value="Male" selected>Male</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Male">Male</Option>
                        <?php  }
                          ?>

                         <?php
                        if ($gender =="Female")
                        { ?>
                        <option value="Female" selected>Female</Option>
                        <?php
                        }
                        else
                        {?>
                        <option value="Female">Female</Option>
                        <?php  }
                          ?>
                      </select>
                                        </div>
                                    </div>
                                </div>

                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName">First Name</label>
                                            <input type="text" class="form-control" id="firstName" placeholder="First Name" name="firstName" value="<?php echo $firstName; ?>" maxlength="128">
                                            <input type="hidden" value="<?php echo $userId; ?>" name="userId" id="userId" />
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName">Last Name</label>
                                            <input type="text" class="form-control" id="lastName" placeholder="Last Name" name="lastName" value="<?php echo $lastName; ?>"
                                                maxlength="128">
                                        </div>
                                    </div>
                                </div>
              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" placeholder="Address" name="address" value="<?php echo $address; ?>" maxlength="300">
                                    </div>
                                </div>
                            </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="email1">E-mail address</label>
                                            <input type="email" class="form-control" id="email1" placeholder="Enter email" name="email1" value="<?php echo $email; ?>"
                                                maxlength="128">
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="designation">Designation</label>
                                        <select class="form-control" id="designation" name="designation">
                                            <option value="">Select designation</option>

                      <?php
                                            if(!empty($designation))
                                            {
                                                foreach($designation as $row)
                                                {
                                                    ?>
                                                    <option value="<?php echo $row->name; ?>" <?php if($row->name == $designationName) {echo "selected=selected";} ?>>
                                                        <?php echo $row->name ?>
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
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="mobile">Mobile Number</label>
                                            <input type="text" class="form-control" id="mobile" placeholder="Mobile Number" name="mobile" value="<?php echo $mobile; ?>"
                                                maxlength="10">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="phone">Phone Number</label>
                                            <input type="text" class="form-control" id="phone" placeholder="Phone Number" name="phone" value="<?php echo $phone; ?>"
                                                maxlength="10">
                                        </div>
                                    </div>
                                </div>



                <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="institute">Institute</label>
                                        <select class="form-control" id="institute" name="institute">
                                            <option value="">Select Institute</option>
                      <?php
                                            if(!empty($institutes))
                                            {
                                                foreach ($institutes as $il)
                                                {
                                                    ?>
                                                <option value="<?php echo $il->institute_id ?>" <?php if($il->institute_id == $instituteId) {echo "selected=selected";} ?>>
                                                    <?php echo $il->name?>
                                                </option>
                                                <?php
                                                }
                                            }

                                            ?>

                                        </select>
                    <input type="hidden" value="<?php echo $instituteId; ?>" name="instituteId" id="instituteId" />

                                    </div>
                                </div>


                 <div class="col-md-6">
                <div class="form-group">
                  <label for="faculty">faculty</label>
                  <select class="form-control" id="faculty" name="faculty">
                    <option value="">Select faculty</Option>
                        <?php
                                            if(!empty($faculties))
                                            {
                                                foreach ($faculties as $f)
                                                {
                                                    ?>
                                                <option value="<?php echo $f->faculty_id ?>" <?php if($f->faculty_id == $facultyId) {echo "selected=selected";} ?>>
                                                    <?php echo $f->faculty_name?>
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

              <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="department">Department</label>
                                        <select class="form-control" id="department" name="department">
                                            <option value="">Select department</Option>

                      <?php
                      if ($facultyId == 0)
                      {

                        if(!empty($departmentsI))
                        {
                          foreach ($departmentsI as $dI)
                          {
                            ?>
                          <option value="<?php echo $dI->department_id ?>" <?php if($dI->department_id == $departmentId) {echo "selected=selected";} ?>>
                            <?php echo $dI->department_name?>
                          </option>
                          <?php
                          }
                        }
                      }
                      else
                      {
                        if(!empty($departmentsF))
                        {
                          foreach ($departmentsF as $de)
                          {
                            ?>
                          <option value="<?php echo $de->department_id ?>" <?php if($de->department_id == $departmentId) {echo "selected=selected";} ?>>
                            <?php echo $de->department_name?>
                          </option>
                          <?php
                          }
                        }
                      }
                                            ?>
                                        </select>
                                    </div>
                                </div>

                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="laboratory">Laboratory</label>
                                        <select class="form-control" id="laboratory" name="laboratory">
                                            <option value="">Select Laboratory</Option>
                      <?php
                                            if(!empty($laboratories))
                                            {
                                                foreach ($laboratories as $la)
                                                {
                                                    ?>
                                                <option value="<?php echo $la->laboratory_id ?>" <?php if($la->laboratory_id == $laboratoryId) {echo "selected=selected";} ?>>
                                                    <?php echo $la->laboratory_name?>
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
                                            <label for="otherInstitute">Other Institute Name</label>
                                            <input type="text" class="form-control" id="otherInstitute" placeholder="NIC Number" name="otherInstitute" value="<?php echo $otherInstitute; ?>" maxlength="400">
                                            <input type="hidden" value="<?php echo $userId; ?>" name="userId" id="userId" />
                                        </div>

                                    </div>

                                </div>









                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="password">password</label>
                                            <input type="password" class="form-control" id="password" placeholder="Password" name="password" maxlength="20">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="cpassword">Verify Password</label>
                                            <input type="password" class="form-control" id="cpassword" placeholder="Verify Your Password" name="cpassword" maxlength="20">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="email">User Name</label>
                                            <input type="text" class="form-control" id="email" placeholder="User Name" name="email" value="<?php echo $userName; ?>"
                                                maxlength="128">
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

                        <div class="row">
                            <div class="col-md-12">
                                <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button></div>'); ?>
                            </div>
                        </div>
                </div>
            </div>
        </section>
    </div>

   <!-- <script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>-->
   <script type="text/javascript">
  $(document).ready(function(){
       $('#institute').change(function(){
           var institute_id = $('#institute').val();
        if(institute_id != '')
        {
         $.ajax({
        url:"<?php echo base_url(); ?>Register/get_departments",
        method:"POST",
        data:{institute_id:institute_id},
        success:function(data)
        {
         $('#department').html(data);
        }
         });
        }
        else
        {
         $('#department').html('<option value="">Select Department</option>');
        }
      });

        });



  $(document).ready(function(){
       $('#institute').change(function(){
           var institute_id = $('#institute').val();
        if(institute_id != '')
        {
         $.ajax({
        url:"<?php echo base_url(); ?>Register/get_faculties",
        method:"POST",
        data:{institute_id:institute_id},
        success:function(data)
        {
         $('#faculty').html(data);
        }
         });
        }
        else
        {
         $('#faculty').html('<option value="">Select faculty</option>');
        }
      });

        });

    $(document).ready(function(){
       $('#faculty').change(function(){
           var faculty_id = $('#faculty').val();
        if(faculty_id != '')
        {
         $.ajax({
        url:"<?php echo base_url(); ?>Register/get_departmentsByFaculty",
        method:"POST",
        data:{faculty_id:faculty_id},
        success:function(data)
        {
         $('#department').html(data);
        }
         });
        }
        else
        {
         $('#department').html('<option value="">Select Department</option>');
        }
      });

        });



     $(document).ready(function(){
       $('#institute').change(function(){
           var institute_id = $('#institute').val();
        if(institute_id != '')
        {
         $.ajax({
        url:"<?php echo base_url(); ?>Register/get_laboratoriesByInstitute",
        method:"POST",
        data:{institute_id:institute_id},
        success:function(data)
        {
         $('#laboratory').html(data);
        }
         });
        }
        else
        {
         $('#laboratory').html('<option value="">Select Laboratory</option>');
        }
      });

        });




    $(document).ready(function(){
       $('#department').change(function(){
           var department_id = $('#department').val();
        if(department_id != '')
        {
         $.ajax({
        url:"<?php echo base_url(); ?>Register/get_laboratories",
        method:"POST",
        data:{department_id:department_id},
        success:function(data)
        {
         $('#laboratory').html(data);
        }
         });
        }
        else
        {
         $('#laboratory').html('<option value="">Select Laboratory</option>');
        }
      });

        });
    </script>