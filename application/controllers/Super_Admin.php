<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';
/**
 * Class : Admin (AdminController)
 * Admin class to control to authenticate admin credentials and include admin functions.
 * @author : Samet Aydın / sametay153@gmail.com
 * @version : 1.0
 * @since : 27.02.2018
 */
class Super_Admin extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->model('user_model');
        // Datas -> libraries ->BaseController / This function used load user sessions
        $this->datas();
        // isLoggedIn / Login control function /  This function used login control
        $isLoggedIn = $this->session->userdata('isLoggedIn');
        if(!isset($isLoggedIn) || $isLoggedIn != TRUE)
        {
            redirect('login');
        }

        else
        {
            // isAdmin / Admin role control function / This function used admin role control
            if($this->isSuper_Admin() == TRUE)
            {
                $this->accesslogincontrol();
            }
        }
    }

     
	 ////////////////////////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////////////////////////////////////////////////////
	 
	 
	 
	 /**
    * This function is used to load the user list
    */
   function userListing()
   {
           $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;

           $this->load->library('pagination');

           $count = $this->user_model->userListingCount($searchText);

           $returns = $this->paginationCompress ( "userListing/", $count, 100000000 );

           $data['userRecords'] = $this->user_model->userListing($searchText, $returns["page"], $returns["segment"]);

           $process = 'User Listing';
           $processFunction = 'Super_Admin/userListing';
           $this->logrecord($process,$processFunction);

           $this->global['pageTitle'] = 'BSEU : User List';

           $this->loadViews("users", $this->global, $data, NULL);
   }
   /**
    * This function is used to load the unactivated user list
    */
   function unactivatedUser()
   {
           $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;

           $this->load->library('pagination');

           $count = $this->user_model->unactivatedUserCount($searchText);

           $returns = $this->paginationCompress ( "unactivatedUser/", $count, 1000 );

           $data['userRecords'] = $this->user_model->unactivatedUser($searchText, $returns["page"], $returns["segment"]);

           $process = 'Unactivated User Listing';
           $processFunction = 'Super_Admin/unactivatedUser';
           $this->logrecord($process,$processFunction);

           $this->global['pageTitle'] = 'NIDB : Unactivated User';

           $this->loadViews("unactivatedUsers", $this->global, $data, NULL);
   }

   /**
    * This function is used to load the add new form
    */
   function addNew()
   {
           $data['roles'] = $this->user_model->getUserRoles();
       $data['designation'] = $this->user_model->get_designation()->result();
       $data['institutes'] = $this->user_model->get_institute();
           $this->global['pageTitle'] = 'NIDB : Add User';
           $this->loadViews("addNew", $this->global, $data, NULL);
   }

   /**
    * This function is used to add new user to the system
    */
   function addNewUser()
   {
           $this->load->library('form_validation');

           //$this->form_validation->set_rules('firstName','First Name','trim|required|max_length[128]');
       //$this->form_validation->set_rules('title','Title','required');
       $this->form_validation->set_rules('lastName','Last Name','trim|required|max_length[128]');
          // $this->form_validation->set_rules('email','Email','trim|valid_email|max_length[128]');
       //$this->form_validation->set_rules('userName','User Name','trim|required|valid_email|max_length[128]');
       $this->form_validation->set_rules('userName','User Name','trim|required|valid_email|is_unique[users.username]');
           $this->form_validation->set_rules('password','Password','required|max_length[20]');
           $this->form_validation->set_rules('cpassword','Confirm Password','trim|required|matches[password]|max_length[20]');
           $this->form_validation->set_rules('role','Role','trim|required|numeric');
       //$this->form_validation->set_rules('institute','Institute','trim|required|numeric');
           $this->form_validation->set_rules('mobilenumber','Mobile Number','numeric|min_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               $this->addNew();
           }
           else
           {
         $title = $this->input->post('title');
         $gender = $this->input->post('gender');
               $firstName = ucwords(strtolower($this->security->xss_clean($this->input->post('firstName'))));
         $lastName = ucwords(strtolower($this->security->xss_clean($this->input->post('lastName'))));
         $address = $this->input->post('address');
               $email = $this->security->xss_clean($this->input->post('email'));
         $designation = $this->input->post('designation');
         $mobile = $this->security->xss_clean($this->input->post('mobilenumber'));
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
         $instituteId = $this->input->post('institute');
      $facultyId = $this->input->post('faculty');/**new*/
         $departmentId = $this->input->post('department');
      $laboratoryId = $this->input->post('laboratory');
         $userName = $this->security->xss_clean($this->input->post('userName'));
               $password = $this->input->post('password');
               $roleId = $this->input->post('role');
 $otherInstitute = $this->security->xss_clean($this->input->post('otherInstitute'));

               $userInfo = array('title'=>$title,'gender'=>$gender,'first_name'=>$firstName,'last_name'=>$lastName,'address'=>$address,'email'=>$email,'designation'=>$designation,'mobile_number'=>$mobile,'phone_number'=>$phone,'institute_id'=>$instituteId,'faculty_id'=>$facultyId,'department_id'=>$departmentId,'laboratory_id'=>$laboratoryId,'username'=> $userName,'password'=> $password,'other_institute_name'=> $otherInstitute, 'user_type_id'=>$roleId,'createdBy'=>$this->vendorId, 'created'=>date('Y-m-d H:i:s'));

               $result = $this->user_model->addNewUser($userInfo);

               if($result > 0)
               {
                   $process = 'Adding User';
                   $processFunction = 'Admin/addNewUser';
                   $this->logrecord($process,$processFunction);

                   $this->session->set_flashdata('success', 'User successfully created');
               }
               else
               {
                   $this->session->set_flashdata('error', 'Failed to create user');
               }

               redirect('userListing');
           }
       }

    /**
    * This function is used load user edit information
    * @param number $userId : Optional : This is user id
    */
   function editOld($userId = NULL)
   {
           if($userId == null)
           {
               redirect('userListing');
           }

           $data['roles'] = $this->user_model->getUserRoles();
       $data['designation'] = $this->user_model->get_designation()->result();
       $data['institutes'] = $this->user_model->get_institute();
           $data['userInfo'] = $this->user_model->getUserInfo($userId);
       $data['faculties'] = $this->user_model->getFacultiesName($userId);
       $data['departmentsF']= $this->user_model->getDepartmentName($userId);
       $data['departmentsI']= $this->user_model->getDepartmentNameByIns($userId);
          $data['laboratories'] = $this->user_model->getLaboratoriesByDepartment($userId);

           $this->global['pageTitle'] = 'NIDB : Edit User';

           $this->loadViews("editOld", $this->global, $data, NULL);





   }


   /**
    * This function is used to edit the user informations
    */
   function editUser()
   {
           $this->load->library('form_validation');

           $userId = $this->input->post('userId');

       $this->form_validation->set_rules('lastName','Last Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email1','Email','trim|valid_email|max_length[128]');
       $this->form_validation->set_rules('email','Email','trim|valid_email|max_length[128]');
           $this->form_validation->set_rules('password','Password','matches[cpassword]|max_length[20]');
           $this->form_validation->set_rules('cpassword','Confirm Password','matches[password]|max_length[20]');
           $this->form_validation->set_rules('role','Role','trim|required|numeric');
           $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               $this->editOld($userId);

           }
           else
           {
               $title = $this->input->post('title');
         $gender = $this->input->post('gender');
               $firstName = ucwords(strtolower($this->security->xss_clean($this->input->post('firstName'))));
         $lastName = ucwords(strtolower($this->security->xss_clean($this->input->post('lastName'))));
         $address = $this->input->post('address');
               $email = $this->security->xss_clean($this->input->post('email1'));
         $designation = $this->input->post('designation');
         $mobile = $this->security->xss_clean($this->input->post('mobile'));
         $phone = $this->security->xss_clean($this->input->post('phone'));
         $instituteId = $this->input->post('institute');
              $departmentId = $this->input->post('department');
             $laboratoryId = $this->input->post('laboratory');
         $userName = $this->security->xss_clean($this->input->post('email'));
               $password = $this->input->post('password');
               $roleId = $this->input->post('role');
 $otherInstitute = $this->security->xss_clean($this->input->post('otherInstitute'));
               $userInfo = array();

               if(empty($password))
               {
         $userInfo = array('title'=>$title,'gender'=>$gender,'first_name'=>$firstName,'last_name'=>$lastName,'address'=>$address,'email'=>$email,'designation'=>$designation,'mobile_number'=>$mobile,'phone_number'=>$phone,'institute_id'=>$instituteId,'department_id'=>$departmentId,'laboratory_id'=>$laboratoryId,'username'=> $userName,'other_institute_name'=> $otherInstitute,'user_type_id'=>$roleId,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));
               }
               else
               {
                   $userInfo = array('title'=>$title,'gender'=>$gender,'first_name'=>$firstName,'last_name'=>$lastName,'address'=>$address,'email'=>$email,'designation'=>$designation,'mobile_number'=>$mobile,'phone_number'=>$phone,'institute_id'=>$instituteId,'department_id'=>$departmentId,'laboratory_id'=>$laboratoryId,'username'=> $userName,'password'=> $password,'other_institute_name'=> $otherInstitute,'user_type_id'=>$roleId,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));
               }

               $result = $this->user_model->editUser($userInfo, $userId);

               if($result == true)
               {
                   $process = 'User update';
                   $processFunction = 'Super_Admin/editUser';
                   $this->logrecord($process,$processFunction);

                   $this->session->set_flashdata('success', 'User successfully updated');
               }
               else
               {
                   $this->session->set_flashdata('error', 'User update failed');
               }

               redirect('userListing');
           }
   }

    /**
    * This function is used to delete the user using userId
    * @return boolean $result : TRUE / FALSE
    */
   function deleteUser()
   {
           $userId = $this->input->post('userId');
           $userInfo = array('isDeleted'=>1,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));

           $result = $this->user_model->deleteUser($userId, $userInfo);

           if ($result > 0) {
                echo(json_encode(array('status'=>TRUE)));

                $process = 'User Deletion';
                $processFunction = 'Super_Admin/deleteUser';
                $this->logrecord($process,$processFunction);

               }
           else { echo(json_encode(array('status'=>FALSE))); }
   }

   /**
    * This function is used load user select role information
    * @param number $userId : Optional : This is user id
    */
   function selectRole($userId = NULL)
   {
           if($userId == null)
           {
               redirect('unactivatedUser');
           }
           $data['roles'] = $this->user_model->getUserRoles();
       $data['userInfo'] = $this->user_model->getUserInfo($userId);
           $this->global['pageTitle'] = 'BSEU : Select Role';

           $this->loadViews("selectRole", $this->global, $data, NULL);
   }

    /**
    * This function is used to give permission for user
    */
   function givePermission()
   {
           $this->load->library('form_validation');

           $userId = $this->input->post('userId');

           $this->form_validation->set_rules('role','Role','trim|required|numeric');


           if($this->form_validation->run() == FALSE)
           {
               $this->selectRole($userId);

           }
           else
           {
               $roleId = $this->input->post('role');

               $userInfo = array();


               $userInfo = array('user_type_id'=>$roleId, 'undefineUser'=>0, 'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));

               $result = $this->user_model->editUser($userInfo, $userId);

               if($result == true)
               {
                   $process = 'User Permission';
                   $processFunction = 'Super_Admin/givePermission';
                   $this->logrecord($process,$processFunction);

                   $this->session->set_flashdata('success', 'Granted user access to dashboard');
               }
               else
               {
                   $this->session->set_flashdata('error', 'Grant permission failed');
               }

               redirect('userListing');
           }
   }

////////////////////////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////////////////////////////////////////////////////



	 
	
////////////////////////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////////////////////////////////////////////////////








     /**
     * This function used to show instruments
     */
    function instrumentListing()
    {

    $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;

           $this->load->library('pagination');

           $count = $this->user_model->instrumentListingCount($searchText);

           $returns = $this->paginationCompress ( "instrumentListing/", $count, 100000 );

           $data['instrumentRecords'] = $this->user_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);

           $process = 'Instrument Listing';
           $processFunction = 'Super_Admin/instrumentListing';
           $this->logrecord($process,$processFunction);

           $this->global['pageTitle'] = 'NIDB : Instrument List';

           $this->loadViews("instruments", $this->global, $data, NULL);
    }

    /**
     * This function is used to load the add new Instrument
     */
    function addInstrument()
    {
      $data['institutes'] = $this->user_model->get_institute();
      $data['instrument_type'] = $this->user_model->getInstrumentType();
      $data['instrument_condition'] = $this->user_model->getInstrumentCondition();
            $this->global['pageTitle'] = 'NIDB : Add Instrument';

            $this->loadViews("addInstrument", $this->global, $data, NULL);
    }

     /**
     * This function is used to add new Instrument to the system
     */
    function addInstruments()
    {
            $this->load->library('form_validation');
			$this->form_validation->set_rules('instrumentName','Instrument Name','required');
            $this->form_validation->set_rules('institute','Institute','required');
			$this->form_validation->set_rules('instrumentType','instrument Type','required');
			$this->form_validation->set_rules('externalResearch','External Research','required');
			$this->form_validation->set_rules('recordStatus','Record Status','required');
			$this->form_validation->set_rules('instrumentCondition','Instrument Condition','required');
			$this->form_validation->set_rules('instrumentType','Instrument Type','required');

            if($this->form_validation->run() == FALSE)
            {
                $this->addInstrument();
            }
            else
            {
                $instrumentName = $this->input->post('instrumentName');
                $instituteId = $this->input->post('institute');
                $facultyId = $this->input->post('faculty');
                $departmentId=$this->input->post('department');
        $laboratoryId = $this->input->post('laboratory');

         $instrumentTypeId=$this->input->post('instrumentType');
		   
                $ConditionId = $this->input->post('instrumentCondition');
                $manufacturer=$this->input->post('manufacturer');
        $model=$this->input->post('model');
                $mYear = $this->input->post('manufactureYear');
                $accessories=$this->input->post('accessories');
        $instdescription = $this->input->post('instdescription');
		 $instkeywords = $this->input->post('instkeywords');
                $catalogLink=$this->input->post('catalogLink');
        $catalogAccess = $this->input->post('catalogAccess');
                $price = $this->input->post('price');
                $vendorName = $this->input->post('vendorName');
        $vendorContact = $this->input->post('vendorContact');
                $vendorUrl = $this->input->post('vendorUrl');
        $samplesNo = $this->input->post('samplesNo');
        $samplesPerDay = $this->input->post('samplesPerDay');
                $usageHour = $this->input->post('usageHour');
                $staffName = $this->input->post('staffName');
                $externalResearch = $this->input->post('externalResearch');
        $FundingSource = $this->input->post('FundingSource');
        $operationsDate = $this->input->post('operationsDate');
                $recordStatus = $this->input->post('recordStatus');


        $contactPersonName = $this->input->post('contactPersonName');
        $contactPersonEmail = $this->input->post('contactPersonEmail');
        $contactPersonPhoneNumber = $this->input->post('contactPersonPhoneNumber');
        $contactPersonMobileNumber = $this->input->post('contactPersonMobileNumber');
         $pcategories = $this->input->post('pcategories');

        $config['upload_path']          = './catalogUploads';
                $config['allowed_types']        = 'gif|jpg|png|pdf|doc|docx|xlsx';
                $config['max_size']             = '0';
                //$config['max_width']            = 1024;
                //$config['max_height']           = 768;

                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('catalogUpload'))
                {
                        $error = $this->upload->display_errors();
            $this->session->set_flashdata('error', $error );
                }
                else
                {
                        $file_data = $this->upload->data();
            $file_name =$file_data['file_name'];
            $this->session->set_flashdata('success', 'catalog file Uploaded successfully');

                }
				
				
				
				 $config['upload_path']          = './catalogUploads';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|gif|tif';
                $config['max_size']             = '0';
                //$config['max_width']            = 1024;
                //$config['max_height']           = 768;

                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('imageUpload1'))
                {
                        $error = $this->upload->display_errors();
            $this->session->set_flashdata('error', $error );
                }
                else
                {
                        $file_data = $this->upload->data();
            $file_name1 =$file_data['file_name'];
            $this->session->set_flashdata('success', 'image file 1 Uploaded successfully');

                }
				
				
				
				
				
				 $config['upload_path']          = './catalogUploads';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|gif|tif';
                $config['max_size']             = '0';
                //$config['max_width']            = 1024;
                //$config['max_height']           = 768;

                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('imageUpload2'))
                {
                        $error = $this->upload->display_errors();
            $this->session->set_flashdata('error', $error );
                }
                else
                {
                        $file_data = $this->upload->data();
            $file_name2 =$file_data['file_name'];
            $this->session->set_flashdata('success', 'image file 2 Uploaded successfully');

                }
				
				
				
				
				 $config['upload_path']          = './catalogUploads';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|gif|tif';
                $config['max_size']             = '0';
                //$config['max_width']            = 1024;
                //$config['max_height']           = 768;

                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('imageUpload3'))
                {
                        $error = $this->upload->display_errors();
            $this->session->set_flashdata('error', $error );
                }
                else
                {
                        $file_data = $this->upload->data();
            $file_name3 =$file_data['file_name'];
            $this->session->set_flashdata('success', 'image file 3 Uploaded successfully');

                }
				
				
				
				 $config['upload_path']          = './catalogUploads';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|gif|tif';
                $config['max_size']             = '0';
                //$config['max_width']            = 1024;
                //$config['max_height']           = 768;

                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('imageUpload4'))
                {
                        $error = $this->upload->display_errors();
            $this->session->set_flashdata('error', $error );
                }
                else
                {
                        $file_data = $this->upload->data();
            $file_name4 =$file_data['file_name'];
            $this->session->set_flashdata('success', 'image file 4 Uploaded successfully');

                }
				

                $instrumentInfo = array('instrument_name'=>$instrumentName, 'institute_id'=>$instituteId, 'faculty_id'=>$facultyId, 'department_id'=>$departmentId, 'laboratory_id'=> $laboratoryId, 'instrument_type_id'=> $instrumentTypeId,  'condition_id'=> $ConditionId, 'manufacturer'=> $manufacturer, 'model'=> $model, 'year_of_manufacture'=> $mYear, 'accessories'=> $accessories, 'inst_description'=> $instdescription, 'p_categories'=> $pcategories, 'inst_keywords'=> $instkeywords, 'catalog_link'=> $catalogLink, 'catalog_upload'=> $file_name,'image_upload1'=> $file_name1,'image_upload2'=> $file_name2,'image_upload3'=> $file_name3,'image_upload4'=> $file_name4,'catalog_access'=> $catalogAccess, 'price'=> $price, 'vendor_name'=> $vendorName, 'vendor_contact'=> $vendorContact, 'vendor_url'=> $vendorUrl, 'no_of_samples_per_cycle'=> $samplesNo, 'no_of_samples_per_day'=> $samplesPerDay, 'total_usage_hour_per_day'=> $usageHour, 'availabiltiy_of_staff'=> $staffName, 'external_researchers'=> $externalResearch, 'funding_source'=> $FundingSource, '  date_commencement_operation'=> $operationsDate, 'record_status'=> $recordStatus, 'contact_person_name'=> $contactPersonName,'contact_person_email'=> $contactPersonEmail,'contact_person_phone_number'=> $contactPersonPhoneNumber,'contact_person_mobile_number'=> $contactPersonMobileNumber,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

                $result = $this->user_model->addInstrument($instrumentInfo);

                if($result > 0)
                {
                    $process = 'Adding a Instrument';
                    $processFunction = 'Super_Admin/addInstruments';
                    $this->logrecord($process,$processFunction);

                    $this->session->set_flashdata('success', 'Instrument added successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Failed to create Instrument');
                }

                redirect('instrumentListing');
            }
        }

    /**
     * This function is used to open edit Instrument view
     */
    function editOldInstrument($instrumentId = NULL)
    {
            if($instrumentId == null)
            {
                redirect('instrumentListing');
            }

            $data['instrumentInfo'] = $this->user_model->getInstrumentInfo($instrumentId);
            $data['institutes'] = $this->user_model->get_institute();
    $data['instrument_type'] = $this->user_model->getInstrumentType();
      $data['instrument_condition'] = $this->user_model->getInstrumentCondition();
      $data['faculties'] = $this->user_model->getFacultiesByInstrument($instrumentId);
      $data['departments'] = $this->user_model->getDepartmentsByInstrument($instrumentId);
      $data['laboratories'] = $this->user_model->getLaboratoriesByInstrument($instrumentId);
            $this->global['pageTitle'] = 'BSEU : Edit Instrument';

            $this->loadViews("editOldInstrument", $this->global, $data, NULL);
    }

    /**
     * This function is used to edit Instrument
     */
    function editInstrument()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('instrumentName','Instrument Name','required');
        $this->form_validation->set_rules('institute','Institute','required');
    $this->form_validation->set_rules('instrumentType','instrument Type','required');
      $this->form_validation->set_rules('externalResearch','External Research','required');
    $this->form_validation->set_rules('recordStatus','Record Status','required');

        $instrumentId = $this->input->post('instrumentId');

        if($this->form_validation->run() == FALSE)
        {
            $this->editOldInstrument($instrumentId);
        }
        else
        {
            $instrumentName = $this->input->post('instrumentName');
      $instituteId = $this->input->post('institute');
      $facultyId = $this->input->post('faculty');
      $departmentId=$this->input->post('department');
      $laboratoryId = $this->input->post('laboratory');
     $instrumentTypeId=$this->input->post('instrumentType');
	       $ConditionId = $this->input->post('instrumentCondition');
      $manufacturer=$this->input->post('manufacturer');
      $model=$this->input->post('model');
      $mYear = $this->input->post('manufactureYear');
      $accessories=$this->input->post('accessories');
      $instdescription = $this->input->post('instdescription');
	   $instkeywords = $this->input->post('instkeywords');
      $catalogLink=$this->input->post('catalogLink');
      $catalogAccess = $this->input->post('catalogAccess');
      $price = $this->input->post('price');
      $vendorName = $this->input->post('vendorName');
      $vendorContact = $this->input->post('vendorContact');
      $vendorUrl = $this->input->post('vendorUrl');
      $samplesNo = $this->input->post('samplesNo');
      $samplesPerDay = $this->input->post('samplesPerDay');
      $usageHour = $this->input->post('usageHour');
      $staffName = $this->input->post('staffName');
      $externalResearch = $this->input->post('externalResearch');
      $FundingSource = $this->input->post('FundingSource');
      $operationsDate = $this->input->post('operationsDate');
      $recordStatus = $this->input->post('recordStatus');


    $contactPersonName = $this->input->post('contactPersonName');
        $contactPersonEmail = $this->input->post('contactPersonEmail');
        $contactPersonPhoneNumber = $this->input->post('contactPersonPhoneNumber');
        $contactPersonMobileNumber = $this->input->post('contactPersonMobileNumber');
 $pcategories = $this->input->post('pcategories');


        $config['upload_path']          = './catalogUploads';
        $config['allowed_types']        = 'gif|jpg|png|pdf|doc|docx|xlsx';
        $config['max_size']             = '0';
        //$config['max_width']            = 1024;
        //$config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ( !$this->upload->do_upload('catalogUpload'))
        {
            //$error = $this->upload->display_errors();
            //$this->session->set_flashdata('error', $error );
            $file_name =$this->input->post('oldCatalog');
            If(empty($file_name))
            {
               $error = $this->upload->display_errors();
               $this->session->set_flashdata('error', $error );
            }
        }
        else
        {
            $file_data = $this->upload->data();
            $file_name =$file_data['file_name'];
            $this->session->set_flashdata('success', 'catalog file Uploaded successfully');

        }
		
		
		
		
		
		 $config['upload_path']          = './catalogUploads';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = '0';
        //$config['max_width']            = 1024;
        //$config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ( !$this->upload->do_upload('imageUpload1'))
        {
            //$error = $this->upload->display_errors();
            //$this->session->set_flashdata('error', $error );
            $file_name1 =$this->input->post('oldImage1');
            If(empty($file_name1))
            {
               $error = $this->upload->display_errors();
               $this->session->set_flashdata('error', $error );
            }
        }
        else
        {
            $file_data = $this->upload->data();
            $file_name1 =$file_data['file_name'];
            $this->session->set_flashdata('success', 'image file 1 Uploaded successfully');

        }
		
		
		
		$config['upload_path']          = './catalogUploads';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = '0';
        //$config['max_width']            = 1024;
        //$config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ( !$this->upload->do_upload('imageUpload2'))
        {
            //$error = $this->upload->display_errors();
            //$this->session->set_flashdata('error', $error );
            $file_name2 =$this->input->post('oldImage2');
            If(empty($file_name2))
            {
               $error = $this->upload->display_errors();
               $this->session->set_flashdata('error', $error );
            }
        }
        else
        {
            $file_data = $this->upload->data();
            $file_name2 =$file_data['file_name'];
            $this->session->set_flashdata('success', 'image file 2 Uploaded successfully');

        }
		
		
		
		
		
		$config['upload_path']          = './catalogUploads';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = '0';
        //$config['max_width']            = 1024;
        //$config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ( !$this->upload->do_upload('imageUpload3'))
        {
            //$error = $this->upload->display_errors();
            //$this->session->set_flashdata('error', $error );
            $file_name3 =$this->input->post('oldImage3');
            If(empty($file_name3))
            {
               $error = $this->upload->display_errors();
               $this->session->set_flashdata('error', $error );
            }
        }
        else
        {
            $file_data = $this->upload->data();
            $file_name3 =$file_data['file_name'];
            $this->session->set_flashdata('success', 'image file 3 Uploaded successfully');

        }
		
		
		
		
		
		$config['upload_path']          = './catalogUploads';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = '0';
        //$config['max_width']            = 1024;
        //$config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ( !$this->upload->do_upload('imageUpload4'))
        {
            //$error = $this->upload->display_errors();
            //$this->session->set_flashdata('error', $error );
            $file_name4 =$this->input->post('oldImage4');
            If(empty($file_name4))
            {
               $error = $this->upload->display_errors();
               $this->session->set_flashdata('error', $error );
            }
        }
        else
        {
            $file_data = $this->upload->data();
            $file_name4 =$file_data['file_name'];
            $this->session->set_flashdata('success', 'image file 4 Uploaded successfully');

        }



            $instrumentInfo = array('instrument_name'=>$instrumentName, 'institute_id'=>$instituteId, 'faculty_id'=>$facultyId, 'department_id'=>$departmentId, 'laboratory_id'=> $laboratoryId,  'instrument_type_id'=> $instrumentTypeId,'condition_id'=> $ConditionId, 'manufacturer'=> $manufacturer, 'model'=> $model, 'year_of_manufacture'=> $mYear, 'accessories'=> $accessories, 'inst_description'=> $instdescription, 'p_categories'=> $pcategories, 'inst_keywords'=> $instkeywords, 'catalog_link'=> $catalogLink, 'catalog_upload'=> $file_name,'image_upload1'=> $file_name1,'image_upload2'=> $file_name2,'image_upload3'=> $file_name3,'image_upload4'=> $file_name4, 'catalog_access'=> $catalogAccess, 'price'=> $price, 'vendor_name'=> $vendorName, 'vendor_contact'=> $vendorContact, 'vendor_url'=> $vendorUrl, 'no_of_samples_per_cycle'=> $samplesNo, 'no_of_samples_per_day'=> $samplesPerDay, 'total_usage_hour_per_day'=> $usageHour, 'availabiltiy_of_staff'=> $staffName, 'external_researchers'=> $externalResearch, 'funding_source'=> $FundingSource, '  date_commencement_operation'=> $operationsDate, 'record_status'=> $recordStatus, 'contact_person_name'=> $contactPersonName,'contact_person_email'=> $contactPersonEmail,'contact_person_phone_number'=> $contactPersonPhoneNumber,'contact_person_mobile_number'=> $contactPersonMobileNumber,'updated_user_id'=>$this->vendorId, 'updated_date_time'=>date('Y-m-d H:i:s'));

            $result = $this->user_model->editInstrument($instrumentInfo,$instrumentId);

            if($result > 0)
            {
                $process = 'Instrument Editing';
                $processFunction = 'Super_Admin/editInstrument';
                $this->logrecord($process,$processFunction);
                $this->session->set_flashdata('success', 'Edit Instrument successful');
            }
            else
            {
                $this->session->set_flashdata('error', 'Failed to edit Instrument');
            }
            redirect('instrumentListing');

            }
    }




function deleteInstrument()
    {
       $instrumentId = $this->input->post('instrumentId');
           $instrumentInfo = array('isDeleted'=>1,'deletedBy'=>$this->vendorId, 'deleted_date_time'=>date('Y-m-d H:i:s'));

           $result = $this->user_model->deleteInstrument($instrumentId, $instrumentInfo);

           if ($result > 0) {
                echo(json_encode(array('status'=>TRUE)));

                $process = 'Instrument Deletion';
                $processFunction = 'Admin/deleteInstrument';
                $this->logrecord($process,$processFunction);

               }
           else { echo(json_encode(array('status'=>FALSE))); }
    }

 ///////////////////////////////////////////////////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////////

   

/**
    * This function is used to load the  institute list
    */
   function categoryListing()
   {
           $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;

           $this->load->library('pagination');

           $count = $this->user_model->categoryListingCount($searchText);

           $returns = $this->paginationCompress ( "categoryListing/", $count, 1000 );

           $data['categoryRecords'] = $this->user_model->categoryListing($searchText, $returns["page"], $returns["segment"]);

           $process = 'Category Listing';
           $processFunction = 'Super_Admin/categoryListing';
           $this->logrecord($process,$processFunction);

           $this->global['pageTitle'] = 'NIDB : Product Category/ Service List';

           $this->loadViews("categories", $this->global, $data, NULL);
   }

///////////////////////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////////////////////////

    /**
    * This function is used to load the add new form
    */
   function addCategory()
   {

           $this->global['pageTitle'] = 'NIDB : Add Category';
           $this->loadViews("addCategory", $this->global, NULL);
   }

    /**
    * This function is used to add new user to the system
    */
   function addNewCategory()
   {
           $this->load->library('form_validation');


       $this->form_validation->set_rules('categoryName','Category Name','trim|required|max_length[128]');
           //$this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           //$this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               $this->addCategory();
           }
           else
           {
               $categoryName = $this->input->post('categoryName');
         $parameters = $this->input->post('parameters');
                        $description = $this->input->post('description');
           $keywords = $this->input->post('keywords');
$relevantInstruments = $this->input->post('relevantInstruments');
               $CategoryInfo = array('instrument_type'=>$categoryName,'parameters'=>$parameters,'description'=>$description, 'keywords'=>$keywords,'relevant_instruments'=>$relevantInstruments,'created_user_id'=>$this->vendorId,'institute_id'=>$this->instituteId, 'created_date_time'=>date('Y-m-d H:i:s'));

               $result = $this->user_model->addNewCategory($CategoryInfo);

               if($result > 0)
               {
                   $process = 'Adding Category';
                   $processFunction = 'Super_Admin/addNewCategory';
                   $this->logrecord($process,$processFunction);

                   $this->session->set_flashdata('success', 'Category Record successfully created');
               }
               else
               {
                   $this->session->set_flashdata('error', 'Failed to create Category record');
               }

               redirect('categoryListing');
           }
       }

///////////////////////////////////////////////////////////////////////////////////////////////////


 /**
     * This function is used to open edit Instrument view
     */
    function editOldCategory($categoryId = NULL)
    {
            if($categoryId == null)
            {
                redirect('categoryListing');
            }

            $data['categoryInfo'] = $this->user_model->getCategoryInfo($categoryId);

            $this->global['pageTitle'] = 'NIDB : Edit Category';

            $this->loadViews("editOldCategory", $this->global, $data, NULL);
    }
	
	
	
	
		

    /**
     * This function is used to edit Instrument
     */
    function editCategory()
    {
           $this->load->library('form_validation');

           $this->form_validation->set_rules('categoryName','Category Name','trim|required|max_length[100]');
          // $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
         //  $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

        $categoryId = $this->input->post('categoryId');

        if($this->form_validation->run() == FALSE)
        {
            $this->editOldCategory($categoryId);
        }
        else
        {
			
			
			
			
			


   $categoryName = $this->input->post('categoryName');
         $parameters = $this->input->post('parameters');
         $description = $this->input->post('description');
         $keywords = $this->input->post('keywords');
		 $relevantInstruments = $this->input->post('relevantInstruments');
         $CategoryInfo = array('instrument_type'=>$categoryName,'parameters'=>$parameters,'description'=>$description, 'keywords'=>$keywords,'relevant_instruments'=>$relevantInstruments,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));
         $result = $this->user_model->editCategory($CategoryInfo,$categoryId);

              

            if($result > 0)
            {
                $process = 'Category Editing';
                $processFunction = 'Super_Admin/editCategory';
                $this->logrecord($process,$processFunction);
                $this->session->set_flashdata('success', 'Edit Category successful');
            }
            else
            {
                $this->session->set_flashdata('error', 'Failed to edit Category');
            }
            redirect('categoryListing');

            }
    }






	
	function deleteCategory()
    {
       $categoryId = $this->input->post('categoryId');
           $categoryInfo = array('isDeleted'=>1,'deletedBy'=>$this->vendorId, 'deleted_date_time'=>date('Y-m-d H:i:s'));

           $result = $this->user_model->deleteCategory($categoryId, $categoryInfo);

           if ($result > 0) {
                echo(json_encode(array('status'=>TRUE)));

                $process = 'Category Deletion';
                $processFunction = 'Super_Admin/deleteCategory';
                $this->logrecord($process,$processFunction);

               }
           else { echo(json_encode(array('status'=>FALSE))); }
    }




   





   ////////////////////////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////////////////////////////////////////////////////

/**
    * This function is used to load the  institute list
    */
   function instituteListing()
   {
           $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;

           $this->load->library('pagination');

           $count = $this->user_model->instituteListingCount($searchText);

           $returns = $this->paginationCompress ( "instituteListing/", $count, 1000 );

           $data['instituteRecords'] = $this->user_model->instituteListing($searchText, $returns["page"], $returns["segment"]);

           $process = 'Institute Listing';
           $processFunction = 'Super_Admin/instituteListing';
           $this->logrecord($process,$processFunction);

           $this->global['pageTitle'] = 'NIDB : Institute List';

           $this->loadViews("institute", $this->global, $data, NULL);
   }


   ///////////////////////////////////////////////////////////////////////////

    /**
    * This function is used to load the add new form
    */
   function addInstitute()
   {

           $this->global['pageTitle'] = 'NIDB : Add Institute';
           $this->loadViews("addInstitute", $this->global, NULL);
   }

    /**
    * This function is used to add new user to the system
    */
   function addNewInstitute()
   {
           $this->load->library('form_validation');


       $this->form_validation->set_rules('instituteName','Institute Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               $this->addInstitute();
           }
           else
           {
               $instituteName = $this->input->post('instituteName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
               $email = $this->security->xss_clean($this->input->post('email'));
                 $description = $this->input->post('description');
           $ministry = $this->input->post('ministry');

               $InstituteInfo = array('name'=>$instituteName,'address'=>$address,'phone_number'=>$phone, 'email'=>$email,'description'=>$description, 'ministry'=>$ministry,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

               $result = $this->user_model->addNewInstitute($InstituteInfo);

               if($result > 0)
               {
                   $process = 'Adding Institute';
                   $processFunction = 'Super_Admin/addNewInstitute';
                   $this->logrecord($process,$processFunction);

                   $this->session->set_flashdata('success', 'Institute Record successfully created');
               }
               else
               {
                   $this->session->set_flashdata('error', 'Failed to create institute record');
               }

               redirect('instituteListing');
           }
       }

///////////////////////////////////////////////////////////////////////////////////////////////////

 /**
     * This function is used to open edit Instrument view
     */
    function editOldInstitute($instituteId = NULL)
    {
            if($instituteId == null)
            {
                redirect('instituteListing');
            }

            $data['instituteInfo'] = $this->user_model->getInstituteInfo($instituteId);

            $this->global['pageTitle'] = 'NIDB : Edit Institute';

            $this->loadViews("editOldInstitute", $this->global, $data, NULL);
    }

    /**
     * This function is used to edit Instrument
     */
    function editInstitute()
    {
           $this->load->library('form_validation');

           $this->form_validation->set_rules('instituteName','Institute Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

        $instituteId = $this->input->post('instituteId');

        if($this->form_validation->run() == FALSE)
        {
            $this->editOldInstitute($instituteId);
        }
        else
        {


    $instituteName = $this->input->post('instituteName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
               $email = $this->security->xss_clean($this->input->post('email'));
                 $description = $this->input->post('description');
           $ministry = $this->input->post('ministry');

               $InstituteInfo = array('name'=>$instituteName,'address'=>$address,'phone_number'=>$phone, 'email'=>$email,'description'=>$description, 'ministry'=>$ministry,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

               $result = $this->user_model->editInstitute($InstituteInfo,$instituteId);





            if($result > 0)
            {
                $process = 'Institute Editing';
                $processFunction = 'Super_Admin/editInstitute';
                $this->logrecord($process,$processFunction);
                $this->session->set_flashdata('success', 'Edit Institute successful');
            }
            else
            {
                $this->session->set_flashdata('error', 'Failed to edit Institute');
            }
            redirect('instituteListing');

            }
    }




  function deleteInstitute()
    {
       $instituteId = $this->input->post('instituteId');
           $instituteInfo = array('isDeleted'=>1,'deletedBy'=>$this->vendorId, 'deleted_date_time'=>date('Y-m-d H:i:s'));

           $result = $this->user_model->deleteInstitute($instituteId, $instituteInfo);

           if ($result > 0) {
                echo(json_encode(array('status'=>TRUE)));

                $process = 'Institute Deletion';
                $processFunction = 'Super_Admin/deleteInstitute';
                $this->logrecord($process,$processFunction);

               }
           else { echo(json_encode(array('status'=>FALSE))); }
    }



    /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////

    /**
    * This function is used to load the  institute list
    */
   function facultyListing()
   {
           $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;

           $this->load->library('pagination');

           $count = $this->user_model->facultyListingCount($searchText);

           $returns = $this->paginationCompress ( "facultyListing/", $count, 1000 );

           $data['facultyRecords'] = $this->user_model->facultyListing($searchText, $returns["page"], $returns["segment"]);

           $process = 'Faculty Listing';
           $processFunction = 'Super_Admin/facultyListing';
           $this->logrecord($process,$processFunction);

           $this->global['pageTitle'] = 'NIDB : Faculty List';

           $this->loadViews("faculties", $this->global, $data, NULL);
   }



     ///////////////////////////////////////////////////////////////////////////

    /**
    * This function is used to load the add new form
    */
   function addFaculty()
   {
           $data['institutes'] = $this->user_model->get_institute(); /**1. institutes->function defind in the addfaculty, get_institute-> defined in the module*/
           $this->global['pageTitle'] = 'NIDB : Add Faculty';
           $this->loadViews("addFaculty", $this->global,$data, NULL); /**2. $data -> content is to be populated from the database. */
   }

    /**
    * This function is used to add new user to the system
    */
   function addNewFaculty()
   {
           $this->load->library('form_validation');

           $this->form_validation->set_rules('institute','Institute','required'); /**3. institute -> drop down name defined in the addFaculty page */
           $this->form_validation->set_rules('facultyName','Faculty Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               $this->addFaculty();
           }
           else
           {
         $instituteId = $this->input->post('institute'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
               $facultyName = $this->input->post('facultyName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
               $email = $this->security->xss_clean($this->input->post('email'));
                 $description = $this->input->post('description');
           $ministry = $this->input->post('ministry');

               $FacultyInfo = array('institute_id'=>$instituteId,'faculty_name'=>$facultyName,'address'=>$address,'phone_number'=>$phone, 'email'=>$email,'description'=>$description, 'ministry'=>$ministry,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

                             $result = $this->user_model->addNewFaculty($FacultyInfo); /**5. 'institute_id'=>$instituteId, -> adding to the database*/

               if($result > 0)
               {
                   $process = 'Adding Faculty';
                   $processFunction = 'Super_Admin/addNewFaculty';
                   $this->logrecord($process,$processFunction);

                   $this->session->set_flashdata('success', 'Faculty Record successfully created');
               }
               else
               {
                   $this->session->set_flashdata('error', 'Failed to create faculty record');
               }

               redirect('facultyListing');
           }
       }


///////////////////////////////////////////////////////////////////////////////////////////////////

 /**
     * This function is used to open edit Instrument view
     */
    function editOldFaculty($facultyId = NULL)
    {
            if($facultyId == null)
            {
                redirect('facultyListing');
            }
            $data['institutes'] = $this->user_model->get_institute();
            $data['facultyInfo'] = $this->user_model->getFacultyInfo($facultyId);

            $this->global['pageTitle'] = 'NIDB : Edit Faculty';

            $this->loadViews("editOldFaculty", $this->global, $data, NULL);
    }

    /**
     * This function is used to edit Instrument
     */
    function editFaculty()
    {
           $this->load->library('form_validation');

           $this->form_validation->set_rules('institute','Institute','required'); /**3. institute -> drop down name defined in the addFaculty page */
           $this->form_validation->set_rules('facultyName','Faculty Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

        $facultyId = $this->input->post('facultyId');

        if($this->form_validation->run() == FALSE)
        {
            $this->editOldFaculty($facultyId);
        }
        else
        {





       $instituteId = $this->input->post('institute'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
               $facultyName = $this->input->post('facultyName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
               $email = $this->security->xss_clean($this->input->post('email'));
                 $description = $this->input->post('description');
           $ministry = $this->input->post('ministry');








        $FacultyInfo = array('institute_id'=>$instituteId,'faculty_name'=>$facultyName,'address'=>$address,'phone_number'=>$phone, 'email'=>$email,'description'=>$description, 'ministry'=>$ministry,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

                             $result = $this->user_model->editFaculty($FacultyInfo, $facultyId); /**5. 'institute_id'=>$instituteId, -> adding to the database*/





            if($result > 0)
            {
                $process = 'Faculty Editing';
                $processFunction = 'Super_Admin/editFaculty';
                $this->logrecord($process,$processFunction);
                $this->session->set_flashdata('success', 'Edit Faculty successful');
            }
            else
            {
                $this->session->set_flashdata('error', 'Failed to edit Faculty');
            }
            redirect('facultyListing');

            }





    }


///////////////////////////////////////////////////////

  function deleteFaculty()
    {
       $facultyId = $this->input->post('facultyId');
           $facultyInfo = array('isDeleted'=>1,'deletedBy'=>$this->vendorId, 'deleted_date_time'=>date('Y-m-d H:i:s'));

           $result = $this->user_model->deleteFaculty($facultyId, $facultyInfo);

           if ($result > 0) {
                echo(json_encode(array('status'=>TRUE)));

                $process = 'Faculty Deletion';
                $processFunction = 'Super_Admin/deleteFaculty';
                $this->logrecord($process,$processFunction);

               }
           else { echo(json_encode(array('status'=>FALSE))); }
    }




 /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////



  /**
    * This function is used to load the  institute list
    */
   function departmentListing()
   {
           $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;

           $this->load->library('pagination');

           $count = $this->user_model->departmentListingCount($searchText);

           $returns = $this->paginationCompress ( "departmentListing/", $count, 1000 );

           $data['departmentRecords'] = $this->user_model->departmentListing($searchText, $returns["page"], $returns["segment"]);

           $process = 'Department Listing';
           $processFunction = 'Super_Admin/departmentListing';
           $this->logrecord($process,$processFunction);

           $this->global['pageTitle'] = 'NIDB : Department List';

           $this->loadViews("departments", $this->global, $data, NULL);
   }




 ///////////////////////////////////////////////////////////////////////////

    /**
    * This function is used to load the add new form
    */
   function addDepartment()
   {
           $data['institutes'] = $this->user_model->get_institute(); /**1. institutes->function defind in the addfaculty, get_institute-> defined in the module*/
           $this->global['pageTitle'] = 'NIDB : Add Department';
           $this->loadViews("addDepartment", $this->global,$data, NULL); /**2. $data -> content is to be populated from the database. */
   }

    /**
    * This function is used to add new user to the system
    */
   function addNewDepartment()
   {
           $this->load->library('form_validation');

          $this->form_validation->set_rules('institute','Institute','required'); /**3. institute -> drop down name defined in the addFaculty page */
           $this->form_validation->set_rules('departmentName','Department Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               $this->addDepartment();
           }
           else
           {
         $instituteId = $this->input->post('institute'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
               $facultyId = $this->input->post('faculty');/**new*/
        $departmentName = $this->input->post('departmentName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
               $email = $this->security->xss_clean($this->input->post('email'));
                  $abbreviation = $this->input->post('abbreviation');

               $DepartmentInfo = array('institute_id'=>$instituteId,'faculty_id'=>$facultyId, 'department_name'=>$departmentName,'address'=>$address,'phone_number'=>$phone, 'email'=>$email,'abbreviation'=>$abbreviation,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

                             $result = $this->user_model->addNewDepartment($DepartmentInfo); /**5. 'institute_id'=>$instituteId, ,'faculty_id'=>$facultyId-> adding to the database*/

               if($result > 0)
               {
                   $process = 'Adding Department';
                   $processFunction = 'Super_Admin/addNewDepartment';
                   $this->logrecord($process,$processFunction);

                   $this->session->set_flashdata('success', 'Department Record successfully created');
               }
               else
               {
                   $this->session->set_flashdata('error', 'Failed to create department record');
               }

               redirect('departmentListing');
           }
       }


/////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////

 /**
     * This function is used to open edit Instrument view
     */
    function editOldDepartment($departmentId = NULL)
    {
            if($departmentId == null)
            {
                redirect('departmentListing');
            }
            $data['institutes'] = $this->user_model->get_institute();
       $data['faculties'] = $this->user_model->get_faculty();
            $data['departmentInfo'] = $this->user_model->getDepartmentInfo($departmentId);

            $this->global['pageTitle'] = 'NIDB : Edit Department';

            $this->loadViews("editOldDepartment", $this->global, $data, NULL);
    }

    /**
     * This function is used to edit Instrument
     */
    function editDepartment()
    {
           $this->load->library('form_validation');

           $this->form_validation->set_rules('institute','Institute','required'); /**3. institute -> drop down name defined in the addFaculty page */
      // $this->form_validation->set_rules('faculty','Faculty','required'); /**3. institute -> drop down name defined in the addFaculty page */
           $this->form_validation->set_rules('departmentName','Department Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

        $departmentId = $this->input->post('departmentId');

        if($this->form_validation->run() == FALSE)
        {
            $this->editOldDepartment($departmentId);
        }
        else
        {





       $instituteId = $this->input->post('institute'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
        $facultyId = $this->input->post('faculty'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
               $departmentName = $this->input->post('departmentName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
               $email = $this->security->xss_clean($this->input->post('email'));
                 $abbreviation = $this->input->post('abbreviation');






        $DepartmentInfo = array('institute_id'=>$instituteId,'faculty_id'=>$facultyId,'department_name'=>$departmentName,'address'=>$address,'phone_number'=>$phone, 'email'=>$email,'abbreviation'=>$abbreviation, 'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

                             $result = $this->user_model->editDepartment($DepartmentInfo, $departmentId); /**5. 'institute_id'=>$instituteId, -> adding to the database*/





            if($result > 0)
            {
                $process = 'Department Editing';
                $processFunction = 'Super_Admin/editDepartment';
                $this->logrecord($process,$processFunction);
                $this->session->set_flashdata('success', 'Edit Department successful');
            }
            else
            {
                $this->session->set_flashdata('error', 'Failed to edit Department');
            }
            redirect('departmentListing');

            }





    }


///////////////////////////////////////////////////////

  function deleteDepartment()
    {
       $departmentId = $this->input->post('departmentId');
           $departmentInfo = array('isDeleted'=>1,'deletedBy'=>$this->vendorId, 'deleted_date_time'=>date('Y-m-d H:i:s'));

           $result = $this->user_model->deleteDepartment($departmentId, $departmentInfo);

           if ($result > 0) {
                echo(json_encode(array('status'=>TRUE)));

                $process = 'Faculty Deletion';
                $processFunction = 'Super_Admin/deleteDepartment';
                $this->logrecord($process,$processFunction);

               }
           else { echo(json_encode(array('status'=>FALSE))); }
    }










/////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////





  /**
    * This function is used to load the  institute list
    */
   function laboratoryListing()
   {
           $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;

           $this->load->library('pagination');

           $count = $this->user_model->laboratoryListingCount($searchText);

           $returns = $this->paginationCompress ( "laboratoryListing/", $count, 1000 );

           $data['laboratoryRecords'] = $this->user_model->laboratoryListing($searchText, $returns["page"], $returns["segment"]);

           $process = 'Laboratory Listing';
           $processFunction = 'Super_Admin/laboratoryListing';
           $this->logrecord($process,$processFunction);

           $this->global['pageTitle'] = 'NIDB : Laboratory List';

           $this->loadViews("laboratories", $this->global, $data, NULL);
   }


///////////////////////////////////////////////////////////////////////////


    /**
    * This function is used to load the add new form
    */
   function addLaboratory()
   {
           $data['institutes'] = $this->user_model->get_institute(); /**1. institutes->function defind in the addfaculty, get_institute-> defined in the module*/
                $this->global['pageTitle'] = 'NIDB : Add Laboratory';
           $this->loadViews("addLaboratory", $this->global,$data, NULL); /**2. $data -> content is to be populated from the database. */
   }

    /**
    * This function is used to add new user to the system
    */
   function addNewLaboratory()
   {
           $this->load->library('form_validation');

           $this->form_validation->set_rules('institute','Institute','required'); /**3. institute -> drop down name defined in the addFaculty page */
           $this->form_validation->set_rules('laboratoryName','Laboratory Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               $this->addLaboratory();
           }
           else
           {
         $instituteId = $this->input->post('institute'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
               $facultyId = $this->input->post('faculty');/**new*/
          $departmentId=$this->input->post('department');/**new*/
        $laboratoryName = $this->input->post('laboratoryName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
               $email = $this->security->xss_clean($this->input->post('email'));
                  $description = $this->input->post('description');

               $LaboratoryInfo = array('institute_id'=>$instituteId,'faculty_id'=>$facultyId, 'department_id'=>$departmentId,'laboratory_name'=>$laboratoryName,'address'=>$address,'phone_number'=>$phone, 'email'=>$email,'description'=>$description,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

                             $result = $this->user_model->addNewLaboratory($LaboratoryInfo); /**5. 'institute_id'=>$instituteId, ,'faculty_id'=>$facultyId-> adding to the database*/

               if($result > 0)
               {
                   $process = 'Adding Laboratory';
                   $processFunction = 'Super_Admin/addNewLaboratory';
                   $this->logrecord($process,$processFunction);

                   $this->session->set_flashdata('success', 'Laboratory Record successfully created');
               }
               else
               {
                   $this->session->set_flashdata('error', 'Failed to create laboratory record');
               }

               redirect('laboratoryListing');
           }
       }



///////////////////////////////////////////////////////////////////////////////////////////////////

 ///////////////////////////////////////////////////////////////////////////////////////////////////

 /**
     * This function is used to open edit Instrument view
     */
    function editOldLaboratory($laboratoryId = NULL)
    {
            if($laboratoryId == null)
            {
                redirect('laboratoryListing');
            }
            $data['institutes'] = $this->user_model->get_institute();
       $data['faculties'] = $this->user_model->get_faculty();
        $data['departments'] = $this->user_model->get_department();
            $data['laboratoryInfo'] = $this->user_model->getLaboratoryInfo($laboratoryId);

            $this->global['pageTitle'] = 'NIDB : Edit Laboratory';

            $this->loadViews("editOldLaboratory", $this->global, $data, NULL);
    }







    /**
     * This function is used to edit Instrument
     */
    function editLaboratory()
    {
           $this->load->library('form_validation');

         //  $this->form_validation->set_rules('institute','Institute','required');
     //  $this->form_validation->set_rules('faculty','Faculty','required');
      //   $this->form_validation->set_rules('department','Department','required');
           $this->form_validation->set_rules('LaboratoryName','Laboratory Name','trim|required|max_length[128]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
           $this->form_validation->set_rules('phoneNumber','phone Number','required|numeric|min_length[10]');

        $laboratoryId = $this->input->post('laboratoryId');

        if($this->form_validation->run() == FALSE)
        {
            $this->editOldLaboratory($laboratoryId);
        }
        else
        {





     //  $instituteId = $this->input->post('institute'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
     //   $facultyId = $this->input->post('faculty'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
           //   $departmentId = $this->input->post('department'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
		   $instituteId = $this->input->post('institute'); /**4. institute -> drop down name defined in the addFaculty page,  instituteId ->declare a variable by us*/
               $facultyId = $this->input->post('faculty');/**new*/
          $departmentId=$this->input->post('department');/**new*/
        $laboratoryName = $this->input->post('laboratoryName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
         $email = $this->security->xss_clean($this->input->post('email'));
         $description = $this->input->post('description');






        $LaboratoryInfo = array('institute_id'=>$instituteId,'faculty_id'=>$facultyId,'department_id'=>$departmentId,'laboratory_name'=>$laboratoryName,'address'=>$address,'phone_number'=>$phone, 'email'=>$email,'description'=>$description, 'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

                             $result = $this->user_model->editLaboratory($LaboratoryInfo, $laboratoryId);




            if($result > 0)
            {
                $process = 'Laboratory Editing';
                $processFunction = 'Super_Admin/editLaboratory';
                $this->logrecord($process,$processFunction);
                $this->session->set_flashdata('success', 'Edit Laboratory successful');
            }
            else
            {
                $this->session->set_flashdata('error', 'Failed to edit Laboratory');
            }
            redirect('laboratoryListing');

            }





    }

///////////////////////////////////////////////////////

  function deleteLaboratory()
    {
       $laboratoryId = $this->input->post('laboratoryId');
           $laboratoryInfo = array('isDeleted'=>1,'deletedBy'=>$this->vendorId, 'deleted_date_time'=>date('Y-m-d H:i:s'));

           $result = $this->user_model->deleteLaboratory($laboratoryId, $laboratoryInfo);

           if ($result > 0) {
                echo(json_encode(array('status'=>TRUE)));

                $process = 'Laboratory Deletion';
                $processFunction = 'Super_Admin/deleteLaboratory';
                $this->logrecord($process,$processFunction);

               }
           else { echo(json_encode(array('status'=>FALSE))); }
    }










/////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////

	 
	 
	 
	 
	 
	 
	 







     /**
     * This function used to show log history
     * @param number $userId : This is user id
     */
    function logHistory($userId = NULL)
    {
            $data['dbinfo'] = $this->user_model->gettablemb('tbl_log','cias');
            if(isset($data['dbinfo']->total_size))
            {
                if(($data['dbinfo']->total_size)>1000){
                    $this->backupLogTable();
                }
            }
            $data['userRecords'] = $this->user_model->logHistory($userId);

            $process = 'Log imaging';
            $processFunction = 'Super_Admin/logHistory';
            $this->logrecord($process,$processFunction);

            $this->global['pageTitle'] = 'BSEU : User Login History';

            $this->loadViews("logHistory", $this->global, $data, NULL);
    }
	

    /**
     * This function used to show specific user log history
     * @param number $userId : This is user id
     */
    function logHistorysingle($userId = NULL)
    {
            $userId = ($userId == NULL ? $this->session->userdata("userId") : $userId);
            $data["userInfo"] = $this->user_model->getUserInfoById($userId);
            $data['userRecords'] = $this->user_model->logHistory($userId);

            $process = 'Single Log Display';
            $processFunction = 'Super_Admin/logHistorysingle';
            $this->logrecord($process,$processFunction);

            $this->global['pageTitle'] = 'BSEU : User Login History';

            $this->loadViews("logHistorysingle", $this->global, $data, NULL);
    }

    /**
     * This function used to backup and delete log table
     */
    function backupLogTable()
    {
        $this->load->dbutil();
        $prefs = array(
            'tables'=>array('tbl_log')
        );
        $backup=$this->dbutil->backup($prefs) ;

        date_default_timezone_set('Europe/Istanbul');
        $date = date('d-m-Y H-i');

        $filename = './backup/'.$date.'.sql.gz';
        $this->load->helper('file');
        write_file($filename,$backup);

        $this->user_model->clearlogtbl();

        if($backup)
        {
            $this->session->set_flashdata('success', 'Backup and Table cleanup successful');
            redirect('log-history');
        }
        else
        {
            $this->session->set_flashdata('error', 'Backup and Table cleanup failed');
            redirect('log-history');
        }
    }

    /**
     * This function used to open the logHistoryBackup page
     */
    function logHistoryBackup()
    {
            $data['dbinfo'] = $this->user_model->gettablemb('tbl_log_backup','cias');
            if(isset($data['dbinfo']->total_size))
            {
            if(($data['dbinfo']->total_size)>1000){
                $this->backupLogTable();
            }
            }
            $data['userRecords'] = $this->user_model->logHistoryBackup();

            $process = 'Backup Log Display';
            $processFunction = 'Super_Admin/logHistoryBackup';
            $this->logrecord($process,$processFunction);

            $this->global['pageTitle'] = 'NIDB : User Backup Login History';

            $this->loadViews("logHistoryBackup", $this->global, $data, NULL);
    }

    /**
     * This function used to delete backup_log table
     */
    function backupLogTableDelete()
    {
        $backup=$this->user_model->clearlogBackuptbl();

        if($backup)
        {
            $this->session->set_flashdata('success', 'Table cleanup successful');
            redirect('log-history-backup');
        }
        else
        {
            $this->session->set_flashdata('error', 'Table cleanup failed');
            redirect('log-history-backup');
        }
    }

    /**
     * This function used to open the logHistoryUpload page
     */
    function logHistoryUpload()
    {
            $this->load->helper('directory');
            $map = directory_map('./backup/', FALSE, TRUE);

            $data['backups']=$map;

            $process = 'Backup Log Upload';
            $processFunction = 'Super_Admin/logHistoryUpload';
            $this->logrecord($process,$processFunction);

            $this->global['pageTitle'] = 'BSEU : User Log Upload';

            $this->loadViews("logHistoryUpload", $this->global, $data, NULL);
    }

    /**
     * This function used to upload backup for backup_log table
     */
    function logHistoryUploadFile()
    {
        $optioninput = $this->input->post('optionfilebackup');

        if ($optioninput == '0' && $_FILES['filebackup']['name'] != '')
        {
            $config = array(
            'upload_path' => "./uploads/",
            'allowed_types' => "gz|sql|gzip",
            'overwrite' => TRUE,
            'max_size' => "20048000", // Can be set to particular file size , here it is 20 MB(20048 Kb)
            );

            $this->load->library('upload', $config);
            $upload= $this->upload->do_upload('filebackup');
                $data = $this->upload->data();
                $filepath = $data['full_path'];
                $path_parts = pathinfo($filepath);
                $filetype = $path_parts['extension'];
                if ($filetype == 'gz')
                {
                    // Read entire gz file
                    $lines = gzfile($filepath);
                    $lines = str_replace('tbl_log','tbl_log_backup', $lines);
                }
                else
                {
                    // Read in entire file
                    $lines = file($filepath);
                    $lines = str_replace('tbl_log','tbl_log_backup', $lines);
                }
        }

        else if ($optioninput != '0' && $_FILES['filebackup']['name'] == '')
        {
            $filepath = './backup/'.$optioninput;
            $path_parts = pathinfo($filepath);
            $filetype = $path_parts['extension'];
            if ($filetype == 'gz')
            {
                // Read entire gz file
                $lines = gzfile($filepath);
                $lines = str_replace('tbl_log','tbl_log_backup', $lines);
            }
            else
            {
                // Read in entire file
                $lines = file($filepath);
                $lines = str_replace('tbl_log','tbl_log_backup', $lines);
            }
        }
                // Set line to collect lines that wrap
                $templine = '';

                // Loop through each line
                foreach ($lines as $line)
                {
                    // Skip it if it's a comment
                    if (substr($line, 0, 2) == '--' || $line == '')
                    continue;
                    // Add this line to the current templine we are creating
                    $templine .= $line;

                    // If it has a semicolon at the end, it's the end of the query so can process this templine
                    if (substr(trim($line), -1, 1) == ';')
                    {
                        // Perform the query
                        $this->db->query($templine);

                        // Reset temp variable to empty
                        $templine = '';
                    }
                }
            if (empty($lines) || !isset($lines))
            {
                $this->session->set_flashdata('error', 'Backup installation failed');
                redirect('log-history-upload');
            }
            else
            {
                $this->session->set_flashdata('success', 'Backup installation successful');
                redirect('log-history-upload');
            }
    }
}