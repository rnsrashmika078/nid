<div class="content-wrapper" style="background-color:#f4f6f9;">
  <!-- Content Header (Page header) -->
  <section class="content-header" >
   <!-- <h1>
      Admin Panel
    </h1>-->


  </section>

  <?php if (isset($mustChangePassword) && $mustChangePassword): ?>
    <div class="alert alert-warning alert-dismissable" style="margin:0 15px;">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
      <strong>Please change your password first for your security.</strong>
      <a href="<?= base_url('loadChangePass'); ?>">Change Password</a>
    </div>
  <?php endif; ?>

  <section class="content" >
    <div class="row">


   <!-- ./col -->
   <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
          <div class="inner">
            <h3>
              <?php if(isset($instituteCount)) { echo $instituteCount; } else { echo '0'; } ?>
            </h3>
            <p>Institutes</p>
          </div>
          <div class="icon">
            <i> <img src="<?=base_url(); ?>layout/img/bank.svg"/></i>
          </div>
       <!--   <a href="<?php echo base_url(); ?><?php  if($role != ROLE_EQUIPMENT_USER) {echo 'instituteListing';}else{echo 'einstruments';} ?>" class="small-box-footer">More information-->
            <a href="<?php echo base_url(); ?>instituteListing" class="small-box-footer">More information

       <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
       <?php
            }
            ?>
      <!-- ./col -->



     <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
     <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-orange">
          <div class="inner">
            <h3>
              <?php if(isset($facultyCount)) { echo $facultyCount; } else { echo '0'; } ?>
            </h3>
            <p>Faculties</p>
          </div>
          <div class="icon">
           <i> <img src="<?=base_url(); ?>layout/img/graduation-hat.svg"/></i>
          </div>
          <a href="<?php echo base_url(); ?>facultyListing" class="small-box-footer">More information
            <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
     <?php
            }
            ?>
      <!-- ./col -->


    <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
   <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-purple">
          <div class="inner">
            <h3>

        <?php if(isset($departmentCount)) { echo $departmentCount; } else { echo '0'; } ?>
            </h3>
            <p>Departments</p>
          </div>
          <div class="icon">
            <i> <img src="<?=base_url(); ?>layout/img/structure.svg"/></i>
          </div>
          <a href="<?php echo base_url(); ?>departmentListing" class="small-box-footer">More information
            <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
     <?php
            }
            ?>
      <!-- ./col -->


     <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
          <div class="inner">
            <h3>
              <?php if(isset($laboratoryCount)) { echo $laboratoryCount; } else { echo '0'; } ?>
            </h3>
            <p>Laboratories</p>
          </div>
          <div class="icon">
            <i> <img src="<?=base_url(); ?>layout/img/laboratory.svg"/></i>
          </div>
          <a href="<?php echo base_url(); ?>laboratoryListing" class="small-box-footer">More information
            <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
     <?php
            }
            ?>
      <!-- ./col -->



 <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER|| $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
          <div class="inner">
            <h3>
              <?php if(isset($usersCount)) { echo $usersCount; } else { echo '0'; } ?>
            </h3>
            <p>Users</p>
          </div>
          <div class="icon">
            <i> <img src="<?=base_url(); ?>layout/img/person.png" width="70px" height="70px"/></i>
          </div>
          <a href="<?php echo base_url(); ?>userListing" class="small-box-footer">More information
            <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>

    <?php
            }
            ?>



     <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>
   <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-maroon">
          <div class="inner">
            <h3>
              <?php if(isset($productCount)) { echo $productCount; } else { echo '0'; } ?>
            </h3>
            <!-- <p>Product Categories</p> -->
          </div>
          <div class="icon">
           <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
          </div>
       <!-- <a href="<?php echo base_url(); ?><?php  if($role != ROLE_EQUIPMENT_USER) {echo 'instrumentListing';}else{echo 'etasks';} ?>" class="small-box-footer">More information-->
     <a href="<?php echo base_url(); ?>categoryListing" class="small-box-footer">More information
                <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
  <?php
            }
            ?>


<?php
   if($role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>

      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
          <div class="inner">
            <h3>
              <?php if(isset($productCount)) { echo $productCount; } else { echo '0'; } ?>
            </h3>
            <p>Add Product</p>
          </div>
          <div class="icon">
           <i> <img  src="<?=base_url(); ?>layout/img/pl.png" width="22px" height="22px"/><img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
          </div>
       
     <a href="<?php echo base_url(); ?>addCategory" class="small-box-footer">More information
                <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>

    <?php
            }
            ?>

  <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_NSF_AUDIT || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>

      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
          <div class="inner">
            <h3>
              <?php if(isset($instrumentCount)) { echo $instrumentCount; } else { echo '0'; } ?>
            </h3>
            <p>Instruments</p>
          </div>
          <div class="icon">
           <i> <img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
          </div>
       <!-- <a href="<?php echo base_url(); ?><?php  if($role != ROLE_EQUIPMENT_USER) {echo 'instrumentListing';}else{echo 'etasks';} ?>" class="small-box-footer">More information-->
     <a href="<?php echo base_url(); ?>instrumentListing" class="small-box-footer">More information
                <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>

    <?php
            }
            ?>
			
			
		  <?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN  || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER || $role == ROLE_DIVISION_MANAGER || $role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>	
			
			 <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
         <div class="inner">
            <h3>
              <?php if(isset($einstrumentCount)) { echo $einstrumentCount; } else { echo '0'; } ?>
            </h3>
            <p>All Instruments</p>
          </div>
          <div class="icon">
            <i class="fa fa-tasks"></i>
          </div>
      
     <a href="<?php echo base_url(); ?>einstruments" class="small-box-footer">More information
                <i class="fa fa-arrow-circle-right"></i>


          </a>
        </div>
      </div>

 <?php
            }
            ?>


<?php
   if($role == ROLE_ADMINISTRATIVE_INCHARGE || $role == ROLE_TECHNICAL_INCHARGE)
            {
         ?>

      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-teal">
          <div class="inner">
            <h3>
              <?php if(isset($instrumentCount)) { echo $instrumentCount; } else { echo '0'; } ?>
            </h3>
            <p>Add Instruments</p>
          </div>
          <div class="icon">
           <i> <img  src="<?=base_url(); ?>layout/img/pl.png" width="22px" height="22px"/><img src="<?=base_url(); ?>layout/img/machine.svg"/></i>
          </div>
       
     <a href="<?php echo base_url(); ?>addInstrument" class="small-box-footer">More information
                <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>

    <?php
            }
            ?>





  <?php
   if ($role == ROLE_EQUIPMENT_USER)
            {
         ?>
   <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-maroon">
          <div class="inner">
            <h3>
              <?php if(isset($productCount)) { echo $productCount; } else { echo '0'; } ?>
            </h3>
            <p>Product Categories</p>
          </div>
          <div class="icon">
           <i style="width:50px; height:50px;"> <img  src="<?=base_url(); ?>layout/img/box.svg"/></i>
          </div>
       <!-- <a href="<?php echo base_url(); ?><?php  if($role != ROLE_EQUIPMENT_USER) {echo 'instrumentListing';}else{echo 'etasks';} ?>" class="small-box-footer">More information-->
     <a href="<?php echo base_url(); ?>categoryListing" class="small-box-footer">More information
                <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
  <?php
            }
            ?>






    <?php
    if($role == ROLE_EQUIPMENT_USER)
            {
         ?>

      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
          <div class="inner">
            <h3>
              <?php if(isset($instrumentCount)) { echo $instrumentCount; } else { echo '0'; } ?>
            </h3>
            <p>Institutional Instruments</p>
          </div>
          <div class="icon">
            <i class="fa fa-tasks"></i>
          </div>
      
     <a href="<?php echo base_url(); ?>instrumentListing" class="small-box-footer">More information
                <i class="fa fa-arrow-circle-right"></i>


          </a>
        </div>
      </div>

    <?php
            }
            ?>


 <?php
    if($role == ROLE_EQUIPMENT_USER)
            {
         ?>

      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
         <div class="inner">
            <h3>
              <?php if(isset($einstrumentCount)) { echo $einstrumentCount; } else { echo '0'; } ?>
            </h3>
            <p>All Instruments</p>
          </div>
          <div class="icon">
            <i class="fa fa-tasks"></i>
          </div>
      
     <a href="<?php echo base_url(); ?>einstruments" class="small-box-footer">More information
                <i class="fa fa-arrow-circle-right"></i>


          </a>
        </div>
      </div>

    <?php
            }
            ?>

   

<?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN || $role == ROLE_INSTITUTE_MANAGER || $role == ROLE_FACULTY_MANAGER|| $role == ROLE_DIVISION_MANAGER)
            {
         ?>
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-teal">
          <div class="inner">
            <h3>
              <?php if(isset($registeredusersCount)) { echo $registeredusersCount; } else { echo '-'; } ?>
            </h3>
            <p>Registered Users</p>
          </div>
          <div class="icon">
            <i> <img src="<?=base_url(); ?>layout/img/person.png" width="70px" height="70px"/></i>
          </div>
          <a href="<?php echo base_url(); ?>unactivatedUser" class="small-box-footer">More information
            <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>

    <?php
            }
            ?>
			
			
		

<?php
   if($role == ROLE_SUPER_ADMIN || $role == ROLE_ADMIN)
            {
         ?>
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
          <div class="inner">
            <h3>
              <?php if(isset($feedbackCount)) { echo $feedbackCount; } else { echo '-'; } ?>
            </h3>
            <p>User Feedbacks</p>
          </div>
          <div class="icon">
            <i> <img src="<?=base_url(); ?>layout/img/person.png" width="70px" height="70px"/></i>
          </div>
          <a href="<?php echo base_url(); ?>feedbackListing" class="small-box-footer">More information
            <i class="fa fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>

    <?php
            }
            ?>		
			

      <!-- ./col -->
    </div>
  </section>
</div>