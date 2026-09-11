<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';
/**
 * Class : Manager (ManagerController)
 * Manager class to control to authenticate manager credentials and include manager functions.
 * @author : Samet Aydın / sametay153@gmail.com
 * @version : 1.0
 * @since : 27.02.2018
 */
class Technical_Incharge extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
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
            /*   isManagerOrAdmin / Admin or manager role control function / This function used admin or manager role control
        if($this->isAdminOrSuper_Admin() == TRUE)
            {
                $this->accesslogincontrol();
            } */






        }
    }


    
	
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
           $processFunction = 'Technical_Incharge/instrumentListing';
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
                    $processFunction = 'Admin/addInstruments';
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
            $this->global['pageTitle'] = 'NIDB : Edit Instrument';

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
        $config['allowed_types']        = 'gif|jpg|png|jpeg|gif|tif';
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
        $config['allowed_types']        = 'gif|jpg|png|jpeg|gif|tif';
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
        $config['allowed_types']        = 'gif|jpg|png|jpeg|gif|tif';
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
        $config['allowed_types']        = 'gif|jpg|png|jpeg|gif|tif';
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
                $processFunction = 'Technical_Incharge/editInstrument';
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
                $processFunction = 'Technical_Incharge/deleteInstrument';
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
           $processFunction = 'Technical_Incharge/categoryListing';
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
               $CategoryInfo = array('instrument_type'=>$categoryName,'parameters'=>$parameters,'description'=>$description, 'keywords'=>$keywords,'relevant_instruments'=>$relevantInstruments,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));

               $result = $this->user_model->addNewCategory($CategoryInfo);

               if($result > 0)
               {
                   $process = 'Adding Category';
                   $processFunction = 'Technical_Incharge/addNewCategory';
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
                $processFunction = 'Technical_Incharge/editCategory';
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
                $processFunction = 'Technical_Incharge/deleteCategory';
                $this->logrecord($process,$processFunction);

               }
           else { echo(json_encode(array('status'=>FALSE))); }
    }








    






}
