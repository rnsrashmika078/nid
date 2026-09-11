<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Faculty_model extends CI_Model {

  function userListingCount($searchText = '',$facultyId=0)
    {
        $this->db->select('Department.department_name,BaseTbl.id,BaseTbl.title,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.address,BaseTbl.email,BaseTbl.mobile_number,BaseTbl.username,BaseTbl.password,Role.user_type,, BaseTbl.other_institute_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('user_types as Role', 'Role.user_type_id = BaseTbl.user_type_id','left');
		$this->db->join('departments as Department','Department.department_id = BaseTbl.department_id', 'right');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.username  LIKE '%".$searchText."%'
                            OR  BaseTbl.last_name  LIKE '%".$searchText."%'
                            OR  BaseTbl.first_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
     $this->db->where('BaseTbl.faculty_id', $facultyId);
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
    function userListing($searchText = '', $page=0, $segment=0,$facultyId=0)
    {
        $this->db->select('Department.department_name,BaseTbl.id,I.name,BaseTbl.title,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.address,BaseTbl.email,BaseTbl.mobile_number,BaseTbl.username,BaseTbl.password,Role.user_type, BaseTbl.other_institute_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('user_types as Role', 'Role.user_type_id = BaseTbl.user_type_id','left');
		$this->db->join('departments as Department','Department.department_id = BaseTbl.department_id', 'right');
    $this->db->join('institutes as I', 'I.institute_id = BaseTbl.institute_id','left');

        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.username  LIKE '%".$searchText."%'
                            OR  BaseTbl.last_name  LIKE '%".$searchText."%'
                            OR  BaseTbl.first_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
    $this->db->where('BaseTbl.faculty_id', $facultyId);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

  /**
     * This function is used to get the unactivated user listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function unactivatedUserCount($searchText = '',$facultyId=0)
    {
        $this->db->select('BaseTbl.id,I.name,BaseTbl.title,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.address,BaseTbl.username,BaseTbl.email,BaseTbl.mobile_number,BaseTbl.username,BaseTbl.password,I.name, BaseTbl.other_institute_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('institutes as I', 'I.institute_id = BaseTbl.institute_id','left');

        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.username  LIKE '%".$searchText."%'
                            OR  BaseTbl.last_name  LIKE '%".$searchText."%'
                            OR  BaseTbl.first_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.faculty_id', $facultyId);
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.user_type_id', 8);
        $this->db->where('BaseTbl.undefineUser', 1);
        $query = $this->db->get();

        return $query->num_rows();
    }

  /**
     * This function is used to get the unactivated user listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function unactivatedUser($searchText = '', $page=0, $segment=0, $facultyId=0)
    {
        $this->db->select('BaseTbl.id,BaseTbl.title,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.address,BaseTbl.username,BaseTbl.email,BaseTbl.mobile_number,BaseTbl.username,BaseTbl.password,I.name, BaseTbl.other_institute_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('institutes as I', 'I.institute_id = BaseTbl.institute_id','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.username  LIKE '%".$searchText."%'
                            OR  BaseTbl.last_name  LIKE '%".$searchText."%'
                            OR  BaseTbl.first_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.faculty_id', $facultyId);
        $this->db->where('BaseTbl.isDeleted', 0);
    $this->db->where('BaseTbl.user_type_id', 8);
    $this->db->where('BaseTbl.undefineUser', 1);
	$this->db->where('BaseTbl.faculty_id', $facultyId);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }
  
  /**
     * This function is used to get the user Instrument count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function instrumentListingCount($searchText = '',$facultyId=0)
    {
       // $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,Institute.name,iType.instrument_type,U.last_name,Roles.user_type,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.record_status');

       $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,laboratory.laboratory_name,laboratory.laboratory_address,laboratory.latitude,laboratory.longitude,BaseTbl.inst_description,BaseTbl.model,Institute.name,iType.instrument_type,iType.keywords,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.contact_person_phone_number,BaseTbl.contact_person_mobile_number,BaseTbl.inst_keywords,BaseTbl.p_categories,BaseTbl.image_upload1,BaseTbl.record_status,iCondition.instrument_condition,BaseTbl.specification');
        $this->db->from('instrument as BaseTbl');
        $this->db->join('users as U','U.id = BaseTbl.created_user_id');
        $this->db->join('user_types as Roles','Roles.user_type_id = U.user_type_id');
        $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
		$this->db->join('laboratories as laboratory','laboratory.laboratory_id = BaseTbl.laboratory_id');
   $this->db->join('instrument_types as iType','iType.instrument_type_id = BaseTbl.instrument_type_id');
   $this->db->join('instrument_condition as iCondition','iCondition.condition_id = BaseTbl.condition_id');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.instrument_name  LIKE '%".$searchText."%'
                            OR  Institute.name  LIKE '%".$searchText."%'
                            OR  iType.instrument_type  LIKE '%".$searchText."%'
              OR  BaseTbl.inst_keywords  LIKE '%".$searchText."%'
          OR  BaseTbl.p_categories  LIKE '%".$searchText."%'
         OR  iType.keywords  LIKE '%".$searchText."%'
                            OR  U.last_name  LIKE '%".$searchText."%')";

            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.faculty_id',$facultyId);
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
    function instrumentListing($searchText = '', $page=0, $segment=0,$facultyId=0)
    {

    //  $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,Institute.name,iType.instrument_type,iType.keywords,U.last_name,Roles.user_type,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.record_status');
        $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,laboratory.laboratory_name,laboratory.laboratory_address,laboratory.latitude,laboratory.longitude,BaseTbl.inst_description,BaseTbl.model,Institute.name,iType.instrument_type,iType.keywords,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.contact_person_phone_number,BaseTbl.contact_person_mobile_number,BaseTbl.inst_keywords,BaseTbl.p_categories,BaseTbl.image_upload1,BaseTbl.record_status,iCondition.instrument_condition,BaseTbl.specification');
        $this->db->from('instrument as BaseTbl');
        $this->db->join('users as U','U.id = BaseTbl.created_user_id');
        $this->db->join('user_types as Roles','Roles.user_type_id = U.user_type_id');
        $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
		$this->db->join('laboratories as laboratory','laboratory.laboratory_id = BaseTbl.laboratory_id');
    $this->db->join('instrument_types as iType','iType.instrument_type_id = BaseTbl.instrument_type_id');
   $this->db->join('instrument_condition as iCondition','iCondition.condition_id = BaseTbl.condition_id');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.instrument_name  LIKE '%".$searchText."%'
                            OR  Institute.name  LIKE '%".$searchText."%'
               OR  iType.instrument_type  LIKE '%".$searchText."%'
         OR  BaseTbl.inst_keywords  LIKE '%".$searchText."%'
            OR  BaseTbl.p_categories  LIKE '%".$searchText."%'
              OR  iType.keywords  LIKE '%".$searchText."%'
                            OR  U.last_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.faculty_id',$facultyId);
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by('BaseTbl.instrument_id DESC,BaseTbl.record_status');
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }



   /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
    */ 
    function facultyListingCount($searchText = '',$facultyId=0)
    {
        $this->db->select('BaseTbl.faculty_id,Institute.name,BaseTbl.faculty_name, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.description');
        $this->db->from('faculties as BaseTbl');
     $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.faculty_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.ministry  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.institute_id', $facultyId);
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
    function facultyListing($searchText = '', $page=0, $segment=0,$facultyId=0)
    {
        $this->db->select('BaseTbl.faculty_id,Institute.name,BaseTbl.faculty_name, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.ministry,BaseTbl.description');
        $this->db->from('faculties as BaseTbl');
     $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.faculty_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.ministry  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.faculty_id', $facultyId);
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
        $this->db->order_by("BaseTbl.faculty_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

   /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function departmentListingCount($searchText = '',$facultyId=0)
    {
        $this->db->select('BaseTbl.department_id,Institute.name,Faculty.faculty_name,BaseTbl.department_name, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.abbreviation');
        $this->db->from('departments as BaseTbl');
     $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
      $this->db->join('faculties as Faculty','Faculty.faculty_id = BaseTbl.faculty_id', 'left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.department_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.abbreviation  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.faculty_id', $facultyId);
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
    function departmentListing($searchText = '', $page=0, $segment=0,$facultyId=0)
    {
        $this->db->select('BaseTbl.department_id,Institute.name,Faculty.faculty_name,BaseTbl.department_name, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.abbreviation');
        $this->db->from('departments as BaseTbl');
     $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
      $this->db->join('faculties as Faculty','Faculty.faculty_id = BaseTbl.faculty_id', 'left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.department_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.abbreviation  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.faculty_id', $facultyId);
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.department_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

  ///////////////////////////////////////////
  /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function laboratoryListingCount($searchText = '',$facultyId=0)
    {
        $this->db->select('*');
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
    $this->db->where('BaseTbl.faculty_id', $facultyId);
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
    function laboratoryListing($searchText = '', $page=0, $segment=0,$facultyId=0)
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
    $this->db->where('BaseTbl.faculty_id', $facultyId);
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
        $this->db->order_by("BaseTbl.laboratory_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }



///////////////////////////////////////////

/**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function categoryListingCount($searchText = '',$facultyId=0)
    {

        $this->db->select('BaseTbl.instrument_type_id,BaseTbl.instrument_type, BaseTbl.parameters,BaseTbl.description,BaseTbl.keywords,BaseTbl.relevant_instruments,Institute.name');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.instrument_type  LIKE '%".$searchText."%'
                            OR  description  LIKE '%".$searchText."%'
                            OR  parameters  LIKE '%".$searchText."%'
                            OR  BaseTbl.keywords  LIKE '%".$searchText."%'
              OR  BaseTbl.relevant_instruments  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
    $this->db->where('BaseTbl.faculty_id', $facultyId);
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
    function categoryListing($searchText = '', $page=0, $segment=0,$facultyId=0)
    {

        $this->db->select('BaseTbl.instrument_type_id,BaseTbl.instrument_type, BaseTbl.parameters,BaseTbl.description,BaseTbl.keywords,BaseTbl.relevant_instruments,Institute.name');
        $this->db->from('instrument_types as BaseTbl');
    //$this->db->join('instrument as I', 'I.instrument_type_id = BaseTbl.instrument_type_id','left');
    $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.instrument_type  LIKE '%".$searchText."%'
                            OR  description  LIKE '%".$searchText."%'
                            OR  parameters  LIKE '%".$searchText."%'
                            OR  BaseTbl.keywords  LIKE '%".$searchText."%'
              OR  BaseTbl.relevant_instruments  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
    $this->db->where('BaseTbl.faculty_id', $facultyId);
        $this->db->where('BaseTbl.isDeleted', 0);
    //$this->db->where('I.isDeleted', 0);

        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.instrument_type_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }
	
	
	//count
	
	function instituteCount($instituteId)
    {
        $this->db->select('*');
        $this->db->from('institutes as BaseTbl');
		$this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.institute_id', $instituteId);
        $query = $this->db->get();
        return $query->num_rows();
    }

	function facultyCount($facultyId)
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
        $this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.faculty_id', $facultyId);
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount($facultyId)
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
		$this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.faculty_id', $facultyId);
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount($facultyId)
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
		$this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.faculty_id', $facultyId);
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount($facultyId)
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
        $this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.faculty_id', $facultyId);
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount($instituteId)
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
		$this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.institute_id', $instituteId);
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount($facultyId)
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
		$this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.faculty_id', $facultyId);
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function registeredusersCount($facultyId)
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
        $this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.user_type_id', 8);
        $this->db->where('BaseTbl.undefineUser', 1);
		$this->db->where('BaseTbl.faculty_id', $facultyId);
        $query = $this->db->get();
        return $query->num_rows();
    }


}