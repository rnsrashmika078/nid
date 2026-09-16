<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home_model extends CI_Model {


   ////////////////////// NEW PART//////////////////////////////
         public function __construct()
      {
           $this->load->database();
      }

      public function get_list() {

      $query = $this->db->get('institutes');
      return $query->result();

       }

            public function get_map_locations() {
                $locations = [];

                $institutes = $this->db
                    ->select('institute_id, name, address, latitude, longitude')
                    ->where('latitude IS NOT NULL', null, false)
                    ->where('longitude IS NOT NULL', null, false)
                    ->where('latitude + 0 BETWEEN 5.5 AND 10', null, false)
                    ->where('longitude + 0 BETWEEN 79.5 AND 82', null, false)
                    ->get('institutes')
                    ->result();

                foreach ($institutes as $institute) {
                    $locations[] = [
                        'label' => $institute->name,
                        'type' => 'Institute',
                        'latitude' => (float) $institute->latitude,
                        'longitude' => (float) $institute->longitude,
                        'address' => $institute->address
                    ];
                }

                $instruments = $this->db
                    ->select('BaseTbl.instrument_id, BaseTbl.instrument_name, BaseTbl.p_categories, BaseTbl.inst_keywords, BaseTbl.contact_person_name, BaseTbl.contact_person_email, BaseTbl.contact_person_phone_number, BaseTbl.contact_person_mobile_number, Institute.name AS institute_name, laboratory.laboratory_name, laboratory.laboratory_address, laboratory.latitude, laboratory.longitude')
                    ->from('instrument AS BaseTbl')
                    ->join('institutes AS Institute', 'Institute.institute_id = BaseTbl.institute_id', 'left')
                    ->join('laboratories AS laboratory', 'laboratory.laboratory_id = BaseTbl.laboratory_id', 'left')
                    ->where('BaseTbl.isDeleted', 0)
                    ->where('laboratory.latitude IS NOT NULL', null, false)
                    ->where('laboratory.longitude IS NOT NULL', null, false)
                    ->where('laboratory.latitude + 0 BETWEEN 5.5 AND 10', null, false)
                    ->where('laboratory.longitude + 0 BETWEEN 79.5 AND 82', null, false)
                    ->get()
                    ->result();

                foreach ($instruments as $instrument) {
                    $locations[] = [
                        'label' => $instrument->instrument_name,
                        'type' => 'Instrument',
                        'latitude' => (float) $instrument->latitude,
                        'longitude' => (float) $instrument->longitude,
                        'address' => trim($instrument->institute_name . ' - ' . $instrument->laboratory_name, ' -'),
                        'institute_name' => $instrument->institute_name,
                        'laboratory_name' => $instrument->laboratory_name,
                        'laboratory_address' => $instrument->laboratory_address,
                        'product_category' => $instrument->p_categories ?: $instrument->inst_keywords,
                        'contact_person_name' => $instrument->contact_person_name,
                        'contact_person_email' => $instrument->contact_person_email,
                        'contact_person_phone' => $instrument->contact_person_phone_number,
                        'contact_person_mobile' => $instrument->contact_person_mobile_number
                    ];
                }

                return $locations;
            }

            public function get_product_locations() {
                $locations = [];

                $products = $this->db
                    ->select('BaseTbl.instrument_id, BaseTbl.instrument_name, iType.instrument_type, Institute.name AS institute_name, laboratory.laboratory_name, laboratory.latitude, laboratory.longitude')
                    ->from('instrument AS BaseTbl')
                    ->join('institutes AS Institute', 'Institute.institute_id = BaseTbl.institute_id', 'left')
                    ->join('laboratories AS laboratory', 'laboratory.laboratory_id = BaseTbl.laboratory_id', 'left')
                    ->join('instrument_types AS iType', 'iType.instrument_type_id = BaseTbl.instrument_type_id', 'left')
                    ->where('BaseTbl.isDeleted', 0)
                    ->where('laboratory.latitude IS NOT NULL', null, false)
                    ->where('laboratory.longitude IS NOT NULL', null, false)
                    ->where('laboratory.latitude + 0 BETWEEN 5.5 AND 10', null, false)
                    ->where('laboratory.longitude + 0 BETWEEN 79.5 AND 82', null, false)
                    ->get()
                    ->result();

                foreach ($products as $product) {
                    $locations[] = [
                        'label' => $product->instrument_type ?: $product->instrument_name,
                        'type' => 'Product Category',
                        'latitude' => (float) $product->latitude,
                        'longitude' => (float) $product->longitude,
                        'address' => trim($product->instrument_name . ' - ' . $product->institute_name . ' - ' . $product->laboratory_name, ' -')
                    ];
                }

                return $locations;
            }

            public function technicianListing($limit = 12, $searchText = '') {
                $this->db
                    ->select('U.id, U.first_name, U.last_name, U.designation, U.picture, U.email, U.mobile_number, U.phone_number, U.address, I.name AS institute_name, I.address AS institute_address, I.latitude, I.longitude, U.other_institute_name')
                    ->from('users AS U')
                    ->join('institutes AS I', 'I.institute_id = U.institute_id', 'left')
                    ->join('technician_details AS T', 'T.user_id = U.id', 'inner')
                    ->where('U.user_type_id', ROLE_TECHNICIAN)
                    ->where('U.isDeleted', 0)
                    ->where('T.status', 'Approved')
                    ->where('T.isDelete', 0);

                if ($searchText !== '') {
                    $this->db->group_start()
                        ->like('U.first_name', $searchText)
                        ->or_like('U.last_name', $searchText)
                        ->or_like('U.designation', $searchText)
                        ->or_like('I.name', $searchText)
                        ->or_like('U.other_institute_name', $searchText)
                        ->group_end();
                }

                return $this->db
                    ->order_by('U.id', 'DESC')
                    ->limit((int) $limit)
                    ->get()
                    ->result();
            }

            public function getTechnicianInfo($technicianId) {
                return $this->db
                    ->select('U.id, U.first_name, U.last_name, U.designation, U.picture, U.email, U.mobile_number, U.phone_number, U.address, I.name AS institute_name, I.address AS institute_address, I.latitude, I.longitude, U.other_institute_name')
                    ->from('users AS U')
                    ->join('institutes AS I', 'I.institute_id = U.institute_id', 'left')
                    ->where('U.user_type_id', 10)
                    ->where('U.isDeleted', 0)
                    ->where('U.id', (int) $technicianId)
                    ->get()
                    ->result();
            }
   ////////////////////// NEW PART//////////////////////////////


  function getInstrument($postData){

    $response = array();

    $this->db->select('*');

  if($postData['search'] ){


    $this->db->where("instrument_name like '%".$postData['search']."%' ");

    $records = $this->db->get('instrument')->result();

     foreach($records as $row ){
       $response[] = array("value"=>$row->instrument_id,"label"=>$row->instrument_name);
    }

   }







  //if($postData['search'] ){


   //   $this->db->where("name like '%".$postData['search']."%' ");

   //   $records = $this->db->get('institutes')->result();

    //  foreach($records as $row ){
      //  $response[] = array("value"=>$row->institute_id,"label"=>$row->name);
     // }

  //  }




 // if($postData['search'] ){


     // $this->db->where("instrument_type like '%".$postData['search']."%' ");

    //  $records = $this->db->get('instrument_types')->result();

      //foreach($records as $row ){
       // $response[] = array("value"=>$row->instrument_type_id,"label"=>$row->instrument_type);
     // }

   // }



    // if($postData['search'] ){


     // $this->db->where("keywords like '%".$postData['search']."%' ");

     // $records = $this->db->get('instrument_types')->result();

      //foreach($records as $row ){
       // $response[] = array("value"=>$row->instrument_type_id,"label"=>$row->keywords);
     // }

   // }




    return $response;
  }







   /**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getInstrumentInfo($instrumentId)
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id', 'left');
    $this->db->join('faculties as Faculty','Faculty.faculty_id = BaseTbl.faculty_id', 'left');
    $this->db->join('departments as Department','Department.department_id = BaseTbl.department_id', 'left');
    $this->db->join('laboratories as laboratory','laboratory.laboratory_id = BaseTbl.laboratory_id', 'left');
   $this->db->join('instrument_types as iType','iType.instrument_type_id = BaseTbl.instrument_type_id', 'left');
    $this->db->join('instrument_condition as condition','condition.condition_id = BaseTbl.condition_id', 'left');
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.instrument_id', $instrumentId);
        $query = $this->db->get();

        return $query->result();
    }

  /**
     * This function used to get related instruments (same category or same
     * institute, excluding the current instrument). Falls back to the latest
     * instruments when no exact match exists.
     * @param number $instrumentId : This is Instrument id
     * @param number $instrumentTypeId : This is Instrument type/category id
     * @param number $instituteId : This is Institute id
     * @param number $limit : Number of records to return
     * @return array $result : This is related Instrument list
     */
    function getRelatedInstruments($instrumentId, $instrumentTypeId, $instituteId, $limit = 8)
    {
        $this->db->distinct();
        $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,BaseTbl.image_upload1,Institute.name');
        $this->db->from('instrument as BaseTbl');
        $this->db->join('institutes as Institute', 'Institute.institute_id = BaseTbl.institute_id');
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.instrument_id !=', (int)$instrumentId);

        $typed = (int)$instrumentTypeId;
        $inst  = (int)$instituteId;

        if ($typed > 0 || $inst > 0) {
            $criteria = array();
            if ($typed > 0) $criteria[] = 'BaseTbl.instrument_type_id = ' . $typed;
            if ($inst > 0)  $criteria[] = 'BaseTbl.institute_id = ' . $inst;
            $this->db->where('(' . implode(' OR ', $criteria) . ')');
        }

        $this->db->order_by('BaseTbl.instrument_id DESC');
        $this->db->limit($limit);

        $result = $this->db->get()->result();

        if (count($result) == 0) {
            $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,BaseTbl.image_upload1,Institute.name');
            $this->db->from('instrument as BaseTbl');
            $this->db->join('institutes as Institute', 'Institute.institute_id = BaseTbl.institute_id');
            $this->db->where('BaseTbl.isDeleted', 0);
            $this->db->where('BaseTbl.instrument_id !=', (int)$instrumentId);
            $this->db->order_by('BaseTbl.instrument_id DESC');
            $this->db->limit($limit);
            $result = $this->db->get()->result();
        }

        return $result;
    }

  /**
     * This function is used to get the user Instrument count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function instrumentListingCount($searchText = '')
    {
       $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,laboratory.laboratory_name,laboratory.laboratory_address,laboratory.latitude,laboratory.longitude,BaseTbl.inst_description ,BaseTbl.model,Institute.name,Institute.institute_id,Institute.address,iType.instrument_type_id,iType.instrument_type,iType.parameters,iType.keywords,BaseTbl.inst_keywords,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.contact_person_phone_number,BaseTbl.contact_person_mobile_number,BaseTbl.p_categories,BaseTbl.image_upload1,BaseTbl.image_upload2,BaseTbl.image_upload3,BaseTbl.image_upload4,BaseTbl.record_status');
        $this->db->from('instrument as BaseTbl');
        $this->db->join('users as U','U.id = BaseTbl.created_user_id');
        $this->db->join('user_types as Roles','Roles.user_type_id = U.user_type_id');
        $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
		$this->db->join('laboratories as laboratory','laboratory.laboratory_id = BaseTbl.laboratory_id');
        $this->db->join('instrument_types as iType','iType.instrument_type_id = BaseTbl.instrument_type_id');
        if(!empty($searchText)) {
            $likeCriteria = "(
							                      
                         MATCH (BaseTbl.instrument_name) AGAINST ('%".$searchText."%' IN NATURAL LANGUAGE MODE)	 
						OR MATCH (BaseTbl.inst_keywords) AGAINST ('%".$searchText."%' IN NATURAL LANGUAGE MODE) 
						OR MATCH (iType.parameters) AGAINST ('%".$searchText."%' IN NATURAL LANGUAGE MODE) 	 
						OR MATCH (Institute.name) AGAINST ('%".$searchText."%' IN NATURAL LANGUAGE MODE)
						
						
						 OR BaseTbl.instrument_name  LIKE  '%".$searchText."%'
						 OR iType.parameters  LIKE  '%".$searchText."%'
						  OR  BaseTbl.inst_keywords  LIKE '%".$searchText."%'
						  OR  Institute.name  LIKE '%".$searchText."%'
						  
						    OR soundex(BaseTbl.instrument_name)  LIKE soundex('%".$searchText."%')
						   OR soundex(BaseTbl.inst_keywords)  LIKE soundex('%".$searchText."%')
						    OR soundex(iType.parameters)  LIKE soundex('%".$searchText."%')
							OR soundex(Institute.name)  LIKE soundex('%".$searchText."%')
							 
							 )";
							 
							// OR MATCH (BaseTbl.inst_keywords) AGAINST ('".$searchText."' IN NATURAL LANGUAGE MODE) 
						//OR MATCH (iType.parameters) AGAINST ('".$searchText."' IN NATURAL LANGUAGE MODE) 	 
						//OR MATCH (Institute.name) AGAINST ('".$searchText."' IN NATURAL LANGUAGE MODE) 




            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);

        $query = $this->db->get();

        return $query->num_rows();
    }

  /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function instrumentListing($searchText = '', $page=0, $segment=0)

    {
		
		
		$this->db->distinct();
        $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,laboratory.laboratory_name,laboratory.laboratory_address,laboratory.latitude,laboratory.longitude,BaseTbl.inst_description,BaseTbl.model,Institute.institute_id,Institute.name,Institute.address,iType.instrument_type_id,iType.instrument_type,iType.parameters,iType.keywords,BaseTbl.inst_keywords,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.contact_person_phone_number,BaseTbl.contact_person_mobile_number,BaseTbl.p_categories,BaseTbl.image_upload1,BaseTbl.image_upload2,BaseTbl.image_upload3,BaseTbl.image_upload4,BaseTbl.record_status');
        $this->db->from('instrument as BaseTbl');
        $this->db->join('users as U','U.id = BaseTbl.created_user_id');
        $this->db->join('user_types as Roles','Roles.user_type_id = U.user_type_id');
        $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
		$this->db->join('laboratories as laboratory','laboratory.laboratory_id = BaseTbl.laboratory_id');
       $this->db->join('instrument_types as iType','iType.instrument_type_id = BaseTbl.instrument_type_id');
	   
	  // $name= substr(BaseTbl.instrument_name,0,3);
	   //$text=substr($searchText,0,3);
	   
	   
        if(!empty($searchText)) {
            $likeCriteria = "(
			
			               MATCH (BaseTbl.instrument_name) AGAINST ('%".$searchText."%' IN NATURAL LANGUAGE MODE)	 
						OR MATCH (BaseTbl.inst_keywords) AGAINST ('%".$searchText."%' IN NATURAL LANGUAGE MODE) 
						OR MATCH (iType.parameters) AGAINST ('%".$searchText."%' IN NATURAL LANGUAGE MODE) 	 
						OR MATCH (Institute.name) AGAINST ('%".$searchText."%' IN NATURAL LANGUAGE MODE)
						
						
						
						 OR BaseTbl.instrument_name  LIKE  '%".$searchText."%'
						 OR iType.parameters  LIKE  '%".$searchText."%'
						  OR  BaseTbl.inst_keywords  LIKE '%".$searchText."%'
						  OR  Institute.name  LIKE '%".$searchText."%'
						  
						  OR soundex(BaseTbl.instrument_name)  LIKE soundex('%".$searchText."%')
						   OR soundex(BaseTbl.inst_keywords)  LIKE soundex('%".$searchText."%')
						    OR soundex(iType.parameters)  LIKE soundex('%".$searchText."%')
							OR soundex(Institute.name)  LIKE soundex('%".$searchText."%')
							
							
							 
							 
							  
							  )";
							  
							 // OR MATCH (BaseTbl.inst_keywords) AGAINST ('".$searchText."' IN NATURAL LANGUAGE MODE)
							 
						 // OR MATCH (iType.parameters) AGAINST ('".$searchText."' IN NATURAL LANGUAGE MODE) 
							 
							//OR MATCH (Institute.name) AGAINST ('".$searchText."' IN NATURAL LANGUAGE MODE) 
							  
							  
							  
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    //$this->db->limit(5);
    $this->db->order_by('BaseTbl.instrument_id DESC,BaseTbl.record_status');
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }






  /////////////////////////////
  /////////////////////////////////


    function userListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.id,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.username,BaseTbl.password,Role.user_type,, BaseTbl.other_institute_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('user_types as Role', 'Role.user_type_id = BaseTbl.user_type_id','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.username  LIKE '%".$searchText."%'
                            OR  BaseTbl.last_name  LIKE '%".$searchText."%'
                            OR  BaseTbl.first_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();

        return $query->num_rows();
    }

  /**
     * This function is used to get the unactivated user listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function unactivatedUserCount($searchText = '')
    {
        $this->db->select('BaseTbl.id,I.name,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.username,BaseTbl.password,I.name, BaseTbl.other_institute_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('institutes as I', 'I.institute_id = BaseTbl.institute_id','left');

        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.username  LIKE '%".$searchText."%'
                            OR  BaseTbl.last_name  LIKE '%".$searchText."%'
                            OR  BaseTbl.first_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
    $this->db->where('BaseTbl.user_type_id', 8);
    $this->db->where('BaseTbl.undefineUser', 1);
        $query = $this->db->get();

        return $query->num_rows();
    }

    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function userListing($searchText = '', $page=0, $segment=0)
    {
        $this->db->select('BaseTbl.id,I.name,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.username,BaseTbl.password,Role.user_type, BaseTbl.other_institute_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('user_types as Role', 'Role.user_type_id = BaseTbl.user_type_id','left');
     $this->db->join('institutes as I', 'I.institute_id = BaseTbl.institute_id','left');

        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.username  LIKE '%".$searchText."%'
                            OR  BaseTbl.last_name  LIKE '%".$searchText."%'
                            OR  BaseTbl.first_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

  /**
     * This function is used to get the unactivated user listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function unactivatedUser($searchText = '', $page=0, $segment=0)
    {
        $this->db->select('BaseTbl.id,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.username,BaseTbl.password,I.name, BaseTbl.other_institute_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('institutes as I', 'I.institute_id = BaseTbl.institute_id','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.username  LIKE '%".$searchText."%'
                            OR  BaseTbl.last_name  LIKE '%".$searchText."%'
                            OR  BaseTbl.first_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
    $this->db->where('BaseTbl.user_type_id', 8);
    $this->db->where('BaseTbl.undefineUser', 1);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

    /**
     * This function is used to get the user roles information
     * @return array $result : This is result of the query
     */
    function getUserRoles()
    {
        $this->db->select('user_type_id,user_type');
        $this->db->from('user_types');
        $query = $this->db->get();

        return $query->result();
    }




 /**
     * This function used to get user information by id
     * @param number $userId : This is user id
     * @return array $result : This is user information
     */
    function getUserInfo($userId)
    {
        $this->db->select('id,title,gender,first_name,last_name,address,email,designation, mobile_number,phone_number,institute_id,faculty_id,department_id,laboratory_id,username,user_type_id,other_institute_name');
        $this->db->from('users');
        $this->db->where('isDeleted', 0);
        $this->db->where('id', $userId);
        $query = $this->db->get();

        return $query->result();




    }


///////////////////

//////////////////////


























/**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getCategoryInfo($categoryId)
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id', 'left');
    $this->db->join('faculties as Faculty','Faculty.faculty_id = BaseTbl.faculty_id', 'left');
    $this->db->join('departments as Department','Department.department_id = BaseTbl.department_id', 'left');
    $this->db->join('laboratories as laboratory','laboratory.laboratory_id = BaseTbl.laboratory_id', 'left');
    $this->db->join('instrument_types as iType','iType.instrument_type_id = BaseTbl.instrument_type_id', 'left');
    $this->db->join('instrument_condition as condition','condition.condition_id = BaseTbl.condition_id', 'left');
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.instrument_type_id', $categoryId);
        $query = $this->db->get();

        return $query->result();
    }


  /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function categoryListingCount($searchText = '')
    {
    $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
        $this->db->select('BaseTbl.instrument_type_id,BaseTbl.instrument_type, BaseTbl.parameters,BaseTbl.description,BaseTbl.keywords,BaseTbl.relevant_instruments,Institute.name');
        $this->db->from('instrument_types as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.instrument_type  LIKE '%".$searchText."%'
                            OR  description  LIKE '%".$searchText."%'
                            OR  parameters  LIKE '%".$searchText."%'
                            OR  BaseTbl.keywords  LIKE '%".$searchText."%'
              OR  BaseTbl.relevant_instruments  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();

        return $query->num_rows();
    }

 ////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////

/**
     * This function is used to get the institute listing
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function categoryListing($searchText = '', $page=0, $segment=0)
    {
    $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
        $this->db->select('BaseTbl.instrument_type_id,BaseTbl.instrument_type, BaseTbl.parameters,BaseTbl.description,BaseTbl.keywords,BaseTbl.relevant_instruments,Institute.name');
        $this->db->from('instrument_types as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.instrument_type  LIKE '%".$searchText."%'
                            OR  description  LIKE '%".$searchText."%'
                            OR  parameters  LIKE '%".$searchText."%'
                            OR  BaseTbl.keywords  LIKE '%".$searchText."%'
              OR  BaseTbl.relevant_instruments  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.instrument_type_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }







     /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////





/**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getInstituteInfo($instituteId)
    {
        $this->db->select('*');
        $this->db->from('institutes');
    $this->db->where('isDeleted', 0);
        $this->db->where('institute_id', $instituteId);
        $query = $this->db->get();

        return $query->result();
    }

  ////////////////////////////////////////////////////////////////////////
  function get_institute(){

    $this->db->select('institute_id,name');
        $this->db->from('institutes');
        $query = $this->db->get();

        return $query->result();
    }
   /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function instituteListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.institute_id,BaseTbl.name,BaseTbl.inst_coordinator,BaseTbl.latitude,BaseTbl.longitude, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.ministry,BaseTbl.description');
        $this->db->from('institutes as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.ministry  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();

        return $query->num_rows();
    }



/**
     * This function is used to get the institute listing
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function instituteListing($searchText = '', $page=0, $segment=0)
    {
        $this->db->select('BaseTbl.institute_id,BaseTbl.name,BaseTbl.inst_coordinator,BaseTbl.latitude,BaseTbl.longitude, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.ministry,BaseTbl.description');
        $this->db->from('institutes as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.ministry  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);

    $this->db->order_by("BaseTbl.institute_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

/**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function laboratoryListingCount($searchText = '', $page=0, $segment=0)
    {
        $this->db->select('BaseTbl.laboratory_id,Institute.name,Faculty.faculty_name,Department.department_name,BaseTbl.laboratory_name, BaseTbl.laboratory_address, BaseTbl.latitude,BaseTbl.longitude,BaseTbl.phone_number,BaseTbl.email,BaseTbl.description');
        $this->db->from('laboratories as BaseTbl');
     $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
      $this->db->join('faculties as Faculty','Faculty.faculty_id = BaseTbl.faculty_id', 'left');
        $this->db->join('departments as Department','Department.department_id = BaseTbl.department_id', 'left');

        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.  laboratory_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.description  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();

        return $query->num_rows();
    }
/**
     * This function is used to get the institute listing
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function laboratoryListing($searchText = '', $page=0, $segment=0)
    {
        $this->db->select('BaseTbl.laboratory_id,Institute.name,Faculty.faculty_name,Department.department_name,BaseTbl.laboratory_name, BaseTbl.laboratory_address, BaseTbl.latitude,BaseTbl.longitude,BaseTbl.phone_number,BaseTbl.email,BaseTbl.description,BaseTbl.accreditation_status,BaseTbl.accreditation_type,BaseTbl.accreditation_certificate,BaseTbl.accreditation_scope');
        $this->db->from('laboratories as BaseTbl');
     $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
      $this->db->join('faculties as Faculty','Faculty.faculty_id = BaseTbl.faculty_id', 'left');
       $this->db->join('departments as Department','Department.department_id = BaseTbl.department_id', 'left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.laboratory_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.description  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.laboratory_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }




    function instrumentListingLimit20($searchText = '', $page=0, $segment=0)
    {
        $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,BaseTbl.inst_description,BaseTbl.model,Institute.name,Institute.address,iType.instrument_type_id,iType.instrument_type,iType.parameters,iType.keywords,BaseTbl.inst_keywords,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.contact_person_phone_number,BaseTbl.contact_person_mobile_number,BaseTbl.p_categories,BaseTbl.image_upload1,BaseTbl.image_upload2,BaseTbl.image_upload3,BaseTbl.image_upload4,BaseTbl.record_status');
        $this->db->from('instrument as BaseTbl');
        $this->db->join('users as U','U.id = BaseTbl.created_user_id');
        $this->db->join('user_types as Roles','Roles.user_type_id = U.user_type_id');
        $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
       $this->db->join('instrument_types as iType','iType.instrument_type_id = BaseTbl.instrument_type_id');
        if(!empty($searchText)) {
           $likeCriteria = "(BaseTbl.instrument_name  LIKE '%".$searchText."%'   )";



               // OR  iType.parameters  LIKE '%".$searchText."%'
              //  OR  BaseTbl.inst_keywords  LIKE '%".$searchText."%'

                           // OR  U.last_name  LIKE '%".$searchText."%'
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->limit(5);
    $this->db->order_by('BaseTbl.instrument_id DESC,BaseTbl.record_status');
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }



function get_laboratory(){

    $this->db->select('laboratory_id,  laboratory_name');
        $this->db->from('laboratories');
        $query = $this->db->get();

        return $query->result();
    }
  







/////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////
   
     ///////////////////////////////////////////////////////////////////////////////////////////////
  function get_homenews(){

    $this->db->select('home_news_id,home_news_title');
        $this->db->from('home_news');
        $query = $this->db->get();

        return $query->result();
    }
   /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function homenewsListingCount($searchText = '')
    {
        $this->db->select('*');
        $this->db->from('home_news as BaseTbl');
        if(!empty($searchText)) {
           $likeCriteria = "(BaseTbl.home_news_title  LIKE '%".$searchText."%'
                            OR  home_sub_title  LIKE '%".$searchText."%'
                            OR  home_news_subject  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();

        return $query->num_rows();
    }
	
	
	
/**
     * This function is used to get the institute listing
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function homenewsListing($searchText = '', $page=0, $segment=0)
    {
       $this->db->select('*');
        $this->db->from('home_news as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.home_news_title  LIKE '%".$searchText."%'
                            OR  home_sub_title  LIKE '%".$searchText."%'
                            OR  home_news_subject  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.home_news_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }














}