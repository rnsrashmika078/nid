<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class User_model extends CI_Model
{
	
	
	 /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////
  function get_feedback(){

    $this->db->select('userf_id,u_name');
        $this->db->from('user_feedbacks');
        $query = $this->db->get();

        return $query->result();
    }
   /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function feedbackListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.userf_id,BaseTbl.u_name, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.subject,BaseTbl.message,BaseTbl.user_image');
        $this->db->from('user_feedbacks as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.u_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.subject  LIKE '%".$searchText."%')";
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
    function feedbackListing($searchText = '', $page=0, $segment=0)
    {
       $this->db->select('BaseTbl.userf_id,BaseTbl.u_name, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.subject,BaseTbl.message,BaseTbl.user_image,BaseTbl.created_date_time');
        $this->db->from('user_feedbacks as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.u_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.subject  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.userf_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }





       /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewFeedback($feedbackInfo)
    {
        $this->db->trans_start();
        $this->db->insert('user_feedbacks', $feedbackInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }


////////////////////////////////////////////////////////////////////////

/**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getFeedbackInfo($feedbackId)
    {
        $this->db->select('*');
        $this->db->from('user_feedbacks');
    $this->db->where('isDeleted', 0);
        $this->db->where('userf_id', $feedbackId);
        $query = $this->db->get();

        return $query->result();
    }

   
   
    


/**
     * This function is used to edit tasks
     */
    function editFeedback($FeedbackInfo,$feedbackId)
    {
        $this->db->where('userf_id', $feedbackId);
        $this->db->update('user_feedbacks', $FeedbackInfo);

        return $this->db->affected_rows();
    }
//////////////////////////////////////////////////////////////////





   












    /**
     * This function is used to delete tasks
     */
    function deleteFeedback($feedbackId,$feedbackInfo)
    {
        //$this->db->where('instrument_id',$instrumentId);
        //$this->db->delete('instrument');
        //return TRUE;
   
		$this->db->where('userf_id', $feedbackId);
        $this->db->update('user_feedbacks', $feedbackInfo);

        return $this->db->affected_rows();
    }

 





   /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////

	
	
	
	
    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function userListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.id,BaseTbl.title,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.address,BaseTbl.username,BaseTbl.email,BaseTbl.mobile_number,BaseTbl.password,Role.user_type,, BaseTbl.other_institute_name, BaseTbl.created');
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
        $this->db->select('BaseTbl.id,I.name,BaseTbl.title,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.username,BaseTbl.address,BaseTbl.email,BaseTbl.mobile_number,BaseTbl.password,I.name, BaseTbl.other_institute_name');
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
        $this->db->select('BaseTbl.id,I.name,BaseTbl.title,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.address,BaseTbl.email,BaseTbl.mobile_number,BaseTbl.username,BaseTbl.password,Role.user_type, BaseTbl.other_institute_name, BaseTbl.created, , BaseTbl.createdBy, F.faculty_name, D.department_name');
        $this->db->from('users as BaseTbl');
        $this->db->join('user_types as Role', 'Role.user_type_id = BaseTbl.user_type_id','left');
     $this->db->join('institutes as I', 'I.institute_id = BaseTbl.institute_id','left');
$this->db->join('faculties as F', 'F.faculty_id  = BaseTbl.faculty_id ','left');
$this->db->join('departments as D', 'D.department_id  = BaseTbl.department_id ','left');
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
        $this->db->select('BaseTbl.id,BaseTbl.title,BaseTbl.first_name, BaseTbl.last_name,BaseTbl.address,BaseTbl.username,BaseTbl.email,BaseTbl.mobile_number,BaseTbl.username,BaseTbl.password,I.name, BaseTbl.other_institute_name');
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
     * This function is used to check whether email id is already exist or not
     * @param {string} $email : This is email id
     * @param {number} $userId : This is user id
     * @return {mixed} $result : This is searched result
     */
   function checkEmailExists($userName, $userId = 0)
    {
        $this->db->select("username");
        $this->db->from("users");
        $this->db->where("username", $userName);
        $this->db->where("isDeleted", 0);
        if($userId != 0){
            $this->db->where("id !=", $userId);
        }
        $query = $this->db->get();

        return $query->result();
    }


    /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewUser($userInfo)
    {
        $this->db->trans_start();
        $this->db->insert('users', $userInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
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


    /**
     * This function is used to update the user information
     * @param array $userInfo : This is users updated information
     * @param number $userId : This is user id
     */
    function editUser($userInfo, $userId)
    {
        $this->db->where('id', $userId);
        $this->db->update('users', $userInfo);

        return TRUE;
    }



    /**
     * This function is used to delete the user information
     * @param number $userId : This is user id
     * @return boolean $result : TRUE / FALSE
     */
    function deleteUser($userId, $userInfo)
    {
        $this->db->where('id', $userId);
        $this->db->update('users', $userInfo);

        return $this->db->affected_rows();
    }


    /**
     * This function is used to match users password for change password
     * @param number $userId : This is user id
     */
    function matchOldPassword($userId, $oldPassword)
    {
        $this->db->select('id, password');
        $this->db->where('id', $userId);
        $this->db->where('isDeleted', 0);
        $query = $this->db->get('users');

        $user = $query->result();

//if(!empty($user)){
        //   if(verifyHashedPassword($oldPassword, $user[0]->password)){
          //     return $user;
         // } else {
            //   return array();
         //  }
     // } else {
          //  return array();
     //  }
  //  }



   if(!empty($user)){

              return $user;
          } else {
              return array();
          }


   }

  // if(!empty($user)){
      //      if($oldPassword == $user[0]->password){
         //       return $user;
        //    } else {
         //       return array();
         //   }
      //  } else {
        //    return array();
      //  }
  //  }


    /**
     * This function is used to change users password
     * @param number $userId : This is user id
     * @param array $userInfo : This is user updation info
     */
    function changePassword($userId, $userInfo)
    {
        $this->db->where('id', $userId);
        $this->db->where('isDeleted', 0);
        $this->db->update('users', $userInfo);

        return $this->db->affected_rows();
    }


    /**
     * This function is used to get user log history count
     * @param number $userId : This is user id
     */

    function logHistoryCount($userId)
    {
        $this->db->select('*');
        $this->db->from('tbl_log as BaseTbl');

        if ($userId == NULL)
        {
            $query = $this->db->get();
            return $query->num_rows();
        }
        else
        {
            $this->db->where('BaseTbl.userId', $userId);
            $query = $this->db->get();
            return $query->num_rows();
        }
    }

    /**
     * This function is used to get user log history
     * @param number $userId : This is user id
     * @return array $result : This is result
     */
    function logHistory($userId)
    {
        $this->db->select('*');
        $this->db->from('tbl_log as BaseTbl');

        if ($userId == NULL)
        {
            $this->db->order_by('BaseTbl.createdDtm', 'DESC');
            $query = $this->db->get();
            $result = $query->result();
            return $result;
        }
        else
        {
            $this->db->where('BaseTbl.userId', $userId);
            $this->db->order_by('BaseTbl.createdDtm', 'DESC');
            $query = $this->db->get();
            $result = $query->result();
            return $result;
        }
    }

    /**
     * This function used to get user information by id
     * @param number $userId : This is user id
     * @return array $result : This is user information
     */
    function getUserInfoById($userId)
    {
        $this->db->select('id, last_name, email, mobile_number, user_type_id');
        $this->db->from('users');
        $this->db->where('isDeleted', 0);
        $this->db->where('id', $userId);
        $query = $this->db->get();

        return $query->row();
    }



     /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////

  /**
     * This function is used to get the user Instrument count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function instrumentListingCount($searchText = '')
    {
       // $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,Institute.name,iType.instrument_type,U.last_name,Roles.user_type,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.record_status');
$this->db->select('*');
   //  $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,laboratory.laboratory_name,laboratory.laboratory_address,laboratory.latitude,laboratory.longitude,BaseTbl.inst_description,BaseTbl.model,Institute.name,iType.instrument_type,iType.keywords,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.contact_person_phone_number,BaseTbl.contact_person_mobile_number,BaseTbl.inst_keywords,BaseTbl.p_categories,BaseTbl.image_upload1,BaseTbl.record_status,iCondition.instrument_condition,BaseTbl.specification');
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
$this->db->select('*');
    //  $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,Institute.name,iType.instrument_type,iType.keywords,U.last_name,Roles.user_type,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.record_status');
     //  $this->db->select('BaseTbl.instrument_id,BaseTbl.instrument_name,laboratory.laboratory_name,laboratory.laboratory_address,laboratory.latitude,laboratory.longitude,Institute.name,BaseTbl.inst_description,BaseTbl.model,iType.instrument_type,iType.keywords,BaseTbl.contact_person_name,BaseTbl.contact_person_email,BaseTbl.contact_person_phone_number,BaseTbl.contact_person_mobile_number,BaseTbl.inst_keywords,BaseTbl.p_categories,BaseTbl.image_upload1,BaseTbl.image_upload2,BaseTbl.image_upload3,BaseTbl.image_upload4,BaseTbl.record_status,iCondition.instrument_condition,BaseTbl.specification');
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
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by('BaseTbl.instrument_id DESC,BaseTbl.record_status');
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

    /*
     * This function is used to get Instrument Type
     */
    function getInstrumentType()
	 //function getInstrumentType($instituteId)
    {
        $this->db->select('*');
        $this->db->from('instrument_types');
		 $this->db->order_by("instrument_type", "ASC");
		 $this->db->where('isDeleted', 0);
		//$this->db->where('institute_id=1');
		//$this->db->where('institute_id', $instituteId);
        $query = $this->db->get();
		return $query->result();
    }
	
	
	
	
	
	
	
  /**
     * This function is used to get Instrument Condition
     */
    function getInstrumentCondition()
    {
        $this->db->select('condition_id,instrument_condition');
        $this->db->from('instrument_condition');
        $query = $this->db->get();

        return $query->result();
    }



    /**
     * This function is used to add a new Instrument
     */
    function addInstrument($instrumentInfo)
    {
        $this->db->trans_start();
        $this->db->insert('instrument', $instrumentInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }

    /**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getInstrumentInfo($instrumentId)
    {
        $this->db->select('*');
        $this->db->from('instrument');
    $this->db->where('isDeleted', 0);
        $this->db->where('instrument_id', $instrumentId);
        $query = $this->db->get();

        return $query->result();
    }

    /**
     * This function is used to edit tasks
     */
    function editInstrument($instrumentInfo,$instrumentId)
    {
        $this->db->where('instrument_id', $instrumentId);
        $this->db->update('instrument', $instrumentInfo);

        return $this->db->affected_rows();
    }

    /**
     * This function is used to delete tasks
     */
    function deleteInstrument($instrumentId,$instrumentInfo)
    {
        //$this->db->where('instrument_id',$instrumentId);
        //$this->db->delete('instrument');
        //return TRUE;
    $this->db->where('instrument_id',$instrumentId);
        $this->db->update('instrument', $instrumentInfo);

        return $this->db->affected_rows();
    }

    /**
     * This function is used to return the size of the table
     * @param string $tablename : This is table name
     * @param string $dbname : This is database name
     * @return array $return : Table size in mb
     */
    function gettablemb($tablename,$dbname)
    {
        $this->db->select('round(((data_length + index_length)/1024/1024),2) as total_size');
        $this->db->from('information_schema.tables');
        $this->db->where('table_name', $tablename);
        $this->db->where('table_schema', $dbname);
        $query = $this->db->get($tablename);

        return $query->row();
    }

    /**
     * This function is used to delete tbl_log table records
     */
    function clearlogtbl()
    {
        $this->db->truncate('tbl_log');
        return TRUE;
    }

    /**
     * This function is used to delete tbl_log_backup table records
     */
    function clearlogBackuptbl()
    {
        $this->db->truncate('tbl_log_backup');
        return TRUE;
    }

    /**
     * This function is used to get user log history
     * @return array $result : This is result
     */
    function logHistoryBackup()
    {
        $this->db->select('*');
        $this->db->from('tbl_log_backup as BaseTbl');
        $this->db->order_by('BaseTbl.createdDtm', 'DESC');
        $query = $this->db->get();
        $result = $query->result();
        return $result;
    }

    /**
     * This function is used to complete tasks
     */
    function endInstrument($instrumentId, $InstrumentInfo)
    {
        $this->db->where('instrument_id', $instrumentId);
        $this->db->update('instrument', $InstrumentInfo);

        return $this->db->affected_rows();
    }

    /**
     * This function is used to get the Instrument count
     * @return array $result : This is result
     */
    function instrumentCount()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	
        $query = $this->db->get();
        return $query->num_rows();
    }



 /**
     * This function is used to get the Instrument count
     * @return array $result : This is result
     */
    function einstrumentCount()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	
        $query = $this->db->get();
        return $query->num_rows();
    }


    /**
     * This function is used to get the institute count
     * @return array $result : This is result
     */
    function instituteCount()
    {
        $this->db->select('*');
        $this->db->from('institutes as BaseTbl');
    $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	 function feedbackCount()
    {
        $this->db->select('*');
        $this->db->from('user_feedbacks as BaseTbl');
    $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }
	

  function facultyCount()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }


  function departmentCount()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }

function laboratoryCount()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }




function productCount()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	        $query = $this->db->get();
        return $query->num_rows();
    }



    /**
     * This function is used to get the logs count
     * @return array $result : This is result
     */
    function logsCount()
    {
        $this->db->select('*');
        $this->db->from('tbl_log as BaseTbl');
        $query = $this->db->get();
        return $query->num_rows();
    }

    /**
     * This function is used to get the users count
     * @return array $result : This is result
     */
    function usersCount()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
        $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }

    function techniciansCount()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.user_type_id', 10);
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function registeredusersCount()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
        $this->db->where('isDeleted', 0);
		$this->db->where('BaseTbl.user_type_id', 8);
        $this->db->where('BaseTbl.undefineUser', 1);
        $query = $this->db->get();
        return $query->num_rows();
    }

    function getUserStatus($userId)
    {
        $this->db->select('BaseTbl.user_status');
        $this->db->where('BaseTbl.id', $userId);
        $this->db->limit(1);
        $query = $this->db->get('users as BaseTbl');

        return $query->row();
    }

  function get_designation(){

    $query = $this->db->query('SELECT name FROM designation ORDER BY name ASC');
        return $query;

    }


     /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////
  function get_institute(){

    $this->db->select('institute_id,name');
        $this->db->from('institutes');
		 $this->db->order_by("name", "ASC");
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
        $this->db->select('BaseTbl.institute_id,BaseTbl.name,BaseTbl.inst_coordinator, BaseTbl.latitude,BaseTbl.longitude,BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.ministry,BaseTbl.description');
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
        $this->db->select('BaseTbl.institute_id,BaseTbl.name, BaseTbl.inst_coordinator,BaseTbl.latitude,BaseTbl.longitude,BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.ministry,BaseTbl.description, BaseTbl.created_date_time, BaseTbl.created_user_id');
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
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewInstitute($instituteInfo)
    {
        $this->db->trans_start();
        $this->db->insert('institutes', $instituteInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }


////////////////////////////////////////////////////////////////////////

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

    /**
     * This function is used to edit tasks
     */
    function editInstitute($InstituteInfo,$instituteId)
    {
        $this->db->where('institute_id', $instituteId);
        $this->db->update('institutes', $InstituteInfo);

        return $this->db->affected_rows();
    }
//////////////////////////////////////////////////////////////////

    /**
     * This function is used to delete tasks
     */
    function deleteInstitute($instituteId,$instituteInfo)
    {
        //$this->db->where('instrument_id',$instrumentId);
        //$this->db->delete('instrument');
        //return TRUE;
    $this->db->where('institute_id',$instituteId);
        $this->db->update('institutes', $instituteInfo);

        return $this->db->affected_rows();
    }





   /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////



     function get_faculty(){

    $this->db->select('  faculty_id,faculty_name');
        $this->db->from('faculties');
        $query = $this->db->get();

        return $query->result();
    }
   /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function facultyListingCount($searchText = '')
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
    function facultyListing($searchText = '', $page=0, $segment=0)
    {
        $this->db->select('BaseTbl.faculty_id,Institute.name,BaseTbl.faculty_name, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.description, BaseTbl.created_date_time, BaseTbl.created_user_id');
        $this->db->from('faculties as BaseTbl');
     $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.faculty_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.ministry  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.faculty_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }


   ///////////////////////////////////////////

      /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewFaculty($facultyInfo)
    {
        $this->db->trans_start();
        $this->db->insert('faculties', $facultyInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }
//////////////////////////////////////////////////////

/**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getFacultyInfo($facultyId)
    {
        $this->db->select('*');
        $this->db->from('faculties');
    $this->db->where('isDeleted', 0);
        $this->db->where('faculty_id', $facultyId);
        $query = $this->db->get();

        return $query->result();
    }

    /**
     * This function is used to edit tasks
     */
    function editFaculty($FacultyInfo,$facultyId)
    {
        $this->db->where('faculty_id', $facultyId);
        $this->db->update('faculties', $FacultyInfo);

        return $this->db->affected_rows();
    }
//////////////////////////////////////////////////////////////////

    /**
     * This function is used to delete tasks
     */
    function deleteFaculty($facultyId,$facultyInfo)
    {

    $this->db->where('faculty_id',$facultyId);
        $this->db->update('faculties', $facultyInfo);

        return $this->db->affected_rows();
    }





   /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////


 function get_department(){

    $this->db->select('  department_id,department_name');
        $this->db->from('departments');
        $query = $this->db->get();

        return $query->result();
    }
   /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function departmentListingCount($searchText = '')
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
    function departmentListing($searchText = '', $page=0, $segment=0)
    {
        $this->db->select('BaseTbl.department_id,Institute.name,Faculty.faculty_name,BaseTbl.department_name, BaseTbl.address,BaseTbl.phone_number,BaseTbl.email,BaseTbl.abbreviation, BaseTbl.created_date_time, BaseTbl.created_user_id');
        $this->db->from('departments as BaseTbl');
     $this->db->join('institutes as Institute','Institute.institute_id = BaseTbl.institute_id');
      $this->db->join('faculties as Faculty','Faculty.faculty_id = BaseTbl.faculty_id', 'left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.department_name  LIKE '%".$searchText."%'
                            OR  phone_number  LIKE '%".$searchText."%'
                            OR  BaseTbl.abbreviation  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->limit($page, $segment);
    $this->db->order_by("BaseTbl.department_id", "desc");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }



  ///////////////////////////////////////////

      /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewDepartment($departmentInfo)
    {
        $this->db->trans_start();
        $this->db->insert('departments', $departmentInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }

///////////////////////////////////////////

  /**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getDepartmentInfo($departmentId)
    {
        $this->db->select('*');
        $this->db->from('departments');
    $this->db->where('isDeleted', 0);
        $this->db->where('department_id', $departmentId);
        $query = $this->db->get();

        return $query->result();
    }

    /**
     * This function is used to edit tasks
     */
    function editDepartment($DepartmentInfo,$departmentId)
    {
        $this->db->where('department_id', $departmentId);
        $this->db->update('departments', $DepartmentInfo);

        return $this->db->affected_rows();
    }
//////////////////////////////////////////////////////////////////

    /**
     * This function is used to delete tasks
     */
    function deleteDepartment($departmentId,$departmentInfo)
    {

    $this->db->where('department_id',$departmentId);
        $this->db->update('departments', $departmentInfo);

        return $this->db->affected_rows();
    }





   /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////








 function get_laboratory(){

    $this->db->select('laboratory_id,  laboratory_name');
        $this->db->from('laboratories');
        $query = $this->db->get();

        return $query->result();
    }
   /**
     * This function is used to get the institute listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function laboratoryListingCount($searchText = '')
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
        $this->db->select('BaseTbl.laboratory_id,Institute.name,Faculty.faculty_name,Department.department_name,BaseTbl.laboratory_name, BaseTbl.laboratory_address, BaseTbl.latitude,BaseTbl.longitude,BaseTbl.phone_number,BaseTbl.email,BaseTbl.description,BaseTbl.accreditation_status,BaseTbl.accreditation_type,BaseTbl.accreditation_certificate,BaseTbl.accreditation_scope, BaseTbl.created_date_time, BaseTbl.created_user_id');
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



///////////////////////////////////////////

      /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewLaboratory($laboratoryInfo)
    {
        $this->db->trans_start();
        $this->db->insert('laboratories', $laboratoryInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }






///////////////////////////////////////////

  /**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getLaboratoryInfo($laboratoryId)
    {
        $this->db->select('*');
        $this->db->from('laboratories');
    $this->db->where('isDeleted', 0);
        $this->db->where('laboratory_id', $laboratoryId);
        $query = $this->db->get();

        return $query->result();
    }







    /**
     * This function is used to edit tasks
     */
    function editLaboratory($LaboratoryInfo,$laboratoryId)
    {
        $this->db->where('laboratory_id', $laboratoryId);
        $this->db->update('laboratories', $LaboratoryInfo);

        return $this->db->affected_rows();
    }
//////////////////////////////////////////////////////////////////

    /**
     * This function is used to delete tasks
     */
    function deleteLaboratory($laboratoryId,$laboratoryInfo)
    {

    $this->db->where('laboratory_id',$laboratoryId);
        $this->db->update('laboratories', $laboratoryInfo);

        return $this->db->affected_rows();
    }






    /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////

 ///////////////////////////////////////////////////////////////////////////////////////////////

  function getDepartmentName($userId)
    {
    $this->db->select('BaseTbl.department_id,BaseTbl.department_name');
        $this->db->from('departments as BaseTbl');
        $this->db->join('users as U','U.faculty_id = BaseTbl.faculty_id');

        $this->db->where('id', $userId);
        $query = $this->db->get();

        return $query->result();

    }

     function getDepartmentNameByIns($userId)
    {
    $this->db->select('BaseTbl.department_id,BaseTbl.department_name');
        $this->db->from('departments as BaseTbl');
        $this->db->join('users as U','U.institute_id = BaseTbl.institute_id');

        $this->db->where('id', $userId);
        $query = $this->db->get();

        return $query->result();

    }

  function getFacultiesName($userId)
    {
    $this->db->select('BaseTbl.faculty_id,BaseTbl.faculty_name');
        $this->db->from('faculties as BaseTbl');
        //$this->db->join('instrument as I','I.faculty_id = BaseTbl.faculty_id');
    $this->db->join('users as U','U.institute_id = BaseTbl.institute_id');

        $this->db->where('id', $userId);
        $query = $this->db->get();

        return $query->result();
    }

    function getLaboratoriesByDepartment($userId)
    {

    $this->db->select('BaseTbl.laboratory_id,BaseTbl.laboratory_name');
        $this->db->from('laboratories as BaseTbl');
        //$this->db->join('instrument as I','I.laboratory_id = BaseTbl.laboratory_id');
    $this->db->join('users as U','U.department_id = BaseTbl.department_id');

        $this->db->where('id', $userId);
        $query = $this->db->get();

        return $query->result();

    }





   function getFacultiesByInstrument($instrumentId)
    {

    $this->db->select('BaseTbl.faculty_id,BaseTbl.faculty_name');
        $this->db->from('faculties as BaseTbl');
        //$this->db->join('instrument as I','I.faculty_id = BaseTbl.faculty_id');
    $this->db->join('instrument as I','I.institute_id = BaseTbl.institute_id');

        $this->db->where('instrument_id', $instrumentId);
        $query = $this->db->get();

        return $query->result();

    }

   function getDepartmentsByInstrument($instrumentId)
    {

    $this->db->select('BaseTbl.department_id,BaseTbl.department_name');
        $this->db->from('departments as BaseTbl');
        //$this->db->join('instrument as I','I.department_id = BaseTbl.department_id');
    $this->db->join('instrument as I','I.faculty_id = BaseTbl.faculty_id');

        $this->db->where('instrument_id', $instrumentId);
        $query = $this->db->get();

        return $query->result();

    }

  function getLaboratoriesByInstrument($instrumentId)
    {

    $this->db->select('BaseTbl.laboratory_id,BaseTbl.laboratory_name');
        $this->db->from('laboratories as BaseTbl');
        //$this->db->join('instrument as I','I.laboratory_id = BaseTbl.laboratory_id');
    $this->db->join('instrument as I','I.department_id = BaseTbl.department_id');

        $this->db->where('instrument_id', $instrumentId);
        $query = $this->db->get();

        return $query->result();

    }





/////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////
  function get_category(){

    $this->db->select('instrument_type_id,instrument_type');
        $this->db->from('instrument_types');
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
        //$this->db->select('BaseTbl.instrument_type_id,BaseTbl.instrument_type, BaseTbl.parameters,BaseTbl.description,BaseTbl.keywords,BaseTbl.relevant_instruments,Institute.name');
       $this->db->select('*');
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
       // $this->db->select('BaseTbl.instrument_type_id,BaseTbl.instrument_type, BaseTbl.parameters,BaseTbl.description,BaseTbl.keywords,BaseTbl.relevant_instruments,Institute.name');
	   $this->db->select('*');
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



       /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewCategory($categoryInfo)
    {
        $this->db->trans_start();
        $this->db->insert('instrument_types', $categoryInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }


////////////////////////////////////////////////////////////////////////

/**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getCategoryInfo($categoryId)
    {
        $this->db->select('*');
        $this->db->from('instrument_types');
    $this->db->where('isDeleted', 0);
       $this->db->where('instrument_type_id', $categoryId);

        $query = $this->db->get();

        return $query->result();
    }





    /**
     * This function is used to edit tasks
     */
    function editCategory($CategoryInfo,$categoryId)
    {
        $this->db->where('instrument_type_id', $categoryId);
        $this->db->update('instrument_types', $CategoryInfo);

        return $this->db->affected_rows();
    }




//////////////////////////////////////////////////////////////////

    /**
     * This function is used to delete tasks
     */
    function deleteCategory($categoryId,$categoryInfo)
    {

    $this->db->where('instrument_type_id',$categoryId);
        $this->db->update('instrument_types', $categoryInfo);

        return $this->db->affected_rows();
    }




//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



 /**
     * This function is used to get the institute count
     * @return array $result : This is result
     */
    function institutename1()
   {
        $this->db->select('name');
        $this->db->from('institutes as BaseTbl');
   $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=1');
       $query = $this->db->get();
        
		 return $query->row()->name;
   }
	

 function institutename2()
    {
        $this->db->select('name');
        $this->db->from('institutes as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=2');
        $query = $this->db->get();
        //return $query->num_rows();
		 return $query->row()->name;
    }
	
	function institutename3()
    {
        $this->db->select('name');
        $this->db->from('institutes as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=3');
        $query = $this->db->get();
        //return $query->num_rows();
		 return $query->row()->name;
    }
	





/**
     * This function is used to get the institute count
     * @return array $result : This is result
     */
    function instituteCount1()
    {
        $this->db->select('*');
        $this->db->from('institutes as BaseTbl');
    $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }

/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////

	function facultyCount9()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=9');
        $query = $this->db->get();
        return $query->num_rows();
    }

function facultyCount25()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=25');
        $query = $this->db->get();
        return $query->num_rows();
        
    }


    function facultyCount48()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=48');
        $query = $this->db->get();
        return $query->num_rows();
        
    }

    
    function facultyCount70()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=70');
        $query = $this->db->get();
        return $query->num_rows();
        
    }


    function facultyCount46()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=46');
        $query = $this->db->get();
        return $query->num_rows();
    }


    function facultyCount30()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=30');
        $query = $this->db->get();
        return $query->num_rows();
    }


       function facultyCount78()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=78');
        $query = $this->db->get();
        return $query->num_rows();
    }

function facultyCount26()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=26');
        $query = $this->db->get();
        return $query->num_rows();
    }

	function facultyCount7()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=7');
        $query = $this->db->get();
        return $query->num_rows();
    }


	function facultyCount33()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=33');
        $query = $this->db->get();
        return $query->num_rows();
    }

function facultyCount12()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=12');
        $query = $this->db->get();
        return $query->num_rows();
    }


	function facultyCount42()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=42');
        $query = $this->db->get();
        return $query->num_rows();
    }

	
	function facultyCount40()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=40');
        $query = $this->db->get();
        return $query->num_rows();
    }

	function facultyCount4()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=4');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
function facultyCount35()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=35');
        $query = $this->db->get();
        return $query->num_rows();
    }
function facultyCount1()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=1');
        $query = $this->db->get();
        return $query->num_rows();
    }


    	
	function facultyCount47()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=47');
        $query = $this->db->get();
        return $query->num_rows();
    }
	

function facultyCount3()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=3');
        $query = $this->db->get();
        return $query->num_rows();
    }
	

    function facultyCount24()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=24');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	
	
	
	function facultyCount27()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=27');
        $query = $this->db->get();
        return $query->num_rows();
    }


    function facultyCount6()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=6');
        $query = $this->db->get();
        return $query->num_rows();
    }

    
	function facultyCount34()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=34');
        $query = $this->db->get();
        return $query->num_rows();
    }

    
	function facultyCount45()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=45');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function facultyCount17()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=17');
        $query = $this->db->get();
        return $query->num_rows();
    }

    
	function facultyCount36()
    {
        $this->db->select('*');
        $this->db->from('faculties as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=36');
        $query = $this->db->get();
        return $query->num_rows();
    }
  

	


/////////////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////////////
function departmentCount1()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=1');
        $query = $this->db->get();
        return $query->num_rows();
    }
	

function departmentCount2()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=2');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount3()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=3');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount4()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=4');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount5()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=5');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount6()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=6');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount7()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=7');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount8()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=8');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount9()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=9');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount11()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=11');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount12()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=12');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount13()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=13');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount15()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=15');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount16()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=16');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount17()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=17');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount18()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=18');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount20()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=20');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount22()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=22');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount23()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=23');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount24()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=24');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount25()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=25');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount26()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=26');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount27()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=27');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function departmentCount28()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=28');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount29()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=29');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount30()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=30');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount31()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=31');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount32()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=32');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount33()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=33');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount34()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=34');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount35()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=35');
        $query = $this->db->get();
        return $query->num_rows();
    }
	function departmentCount36()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=36');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount38()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=38');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount39()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=39');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount40()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=40');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function departmentCount42()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=42');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount43()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=43');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount45()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=45');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount46()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=46');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount47()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=47');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount48()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=48');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount49()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=49');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount50()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=50');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount51()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=51');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount52()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=52');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount53()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=53');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount54()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=54');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount55()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=55');
        $query = $this->db->get();
        return $query->num_rows();
    }


function departmentCount56()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=56');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount57()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=57');
        $query = $this->db->get();
        return $query->num_rows();
    }


function departmentCount58()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=58');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount59()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=59');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function departmentCount60()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=60');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount61()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=61');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount62()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=62');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function departmentCount63()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=63');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	//////////////////////////////////
	
	function departmentCount64()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=64');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount65()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=65');
        $query = $this->db->get();
        return $query->num_rows();
    }
	function departmentCount66()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=66');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount67()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=67');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount68()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=68');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount69()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=69');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount70()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=70');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount71()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=71');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function departmentCount72()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=72');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount73()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=73');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount74()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=74');
        $query = $this->db->get();
        return $query->num_rows();
    }


    function departmentCount75()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=75');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount76()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=76');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount77()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=77');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount78()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=78');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount79()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=79');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount80()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=80');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount81()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=81');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount82()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=82');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount83()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=83');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function departmentCount84()
    {
        $this->db->select('*');
        $this->db->from('departments as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=84');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
/////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
function laboratoryCount1()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=1');
        $query = $this->db->get();
        return $query->num_rows();
    }
	

function laboratoryCount2()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=2');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount3()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=3');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount4()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=4');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount5()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=5');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount6()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=6');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount7()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=7');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount8()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=8');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount9()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=9');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount11()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=11');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount12()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=12');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount13()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=13');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount15()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=15');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount16()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=16');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount17()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=17');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount18()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=18');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount20()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=20');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount22()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=22');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount23()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=23');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount24()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=24');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount25()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=25');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount26()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=26');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount27()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=27');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function laboratoryCount28()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=28');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount29()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=29');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount30()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=30');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount31()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=31');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount32()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=32');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount33()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=33');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount34()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=34');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount35()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=35');
        $query = $this->db->get();
        return $query->num_rows();
    }
	function laboratoryCount36()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=36');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount38()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=38');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount39()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=39');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount40()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=40');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function laboratoryCount42()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=42');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount43()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=43');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount45()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=45');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount46()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=46');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount47()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=47');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount48()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=48');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount49()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=49');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount50()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=50');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount51()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=51');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount52()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=52');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount53()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=53');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount54()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=54');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount55()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=55');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount56()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=56');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount57()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=57');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount58()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=58');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount59()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=59');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount60()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=60');
        $query = $this->db->get();
        return $query->num_rows();
    }


function laboratoryCount61()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=61');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount62()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=62');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function laboratoryCount63()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=63');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	//////////////////////////////////
	
	function laboratoryCount64()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=64');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount65()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=65');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount66()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=66');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount67()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=67');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount68()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=68');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function laboratoryCount69()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=69');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function laboratoryCount70()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=70');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount71()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=71');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function laboratoryCount72()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=72');
        $query = $this->db->get();
        return $query->num_rows();
    }

    	function laboratoryCount73()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=73');
        $query = $this->db->get();
        return $query->num_rows();
    }

    	function laboratoryCount74()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=74');
        $query = $this->db->get();
        return $query->num_rows();
    }

    	function laboratoryCount75()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=75');
        $query = $this->db->get();
        return $query->num_rows();
    }

    	function laboratoryCount76()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=76');
        $query = $this->db->get();
        return $query->num_rows();
    }

    	function laboratoryCount77()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=77');
        $query = $this->db->get();
        return $query->num_rows();
    }

    	function laboratoryCount78()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=78');
        $query = $this->db->get();
        return $query->num_rows();
    }

    	function laboratoryCount79()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=79');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function laboratoryCount80()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=80');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function laboratoryCount81()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=81');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function laboratoryCount82()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=82');
        $query = $this->db->get();
        return $query->num_rows();
    }


    function laboratoryCount83()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=83');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function laboratoryCount84()
    {
        $this->db->select('*');
        $this->db->from('laboratories as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=84');
        $query = $this->db->get();
        return $query->num_rows();
    }
 /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
function usersCount1()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=1');
        $query = $this->db->get();
        return $query->num_rows();
    }
	

function usersCount2()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=2');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount3()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=3');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount4()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=4');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount5()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=5');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount6()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=6');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount7()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=7');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount8()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=8');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount9()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=9');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount11()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=11');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount12()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=12');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount13()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=13');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount15()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=15');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount16()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=16');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount17()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=17');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount18()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=18');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount20()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=20');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount22()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=22');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount23()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=23');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount24()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=24');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount25()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=25');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount26()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=26');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount27()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=27');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function usersCount28()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=28');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount29()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=29');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount30()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=30');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount31()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=31');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount32()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=32');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount33()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=33');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount34()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=34');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount35()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=35');
        $query = $this->db->get();
        return $query->num_rows();
    }
	function usersCount36()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=36');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount38()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=38');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount39()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=39');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount40()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=40');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function usersCount42()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=42');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount43()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=43');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount45()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=45');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount46()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=46');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount47()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=47');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount48()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=48');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount49()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=49');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount50()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=50');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount51()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=51');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount52()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=52');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount53()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=53');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount54()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=54');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount55()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=55');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount56()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=56');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount57()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=57');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount58()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=58');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount59()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=59');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount60()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=60');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount61()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=61');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount62()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=62');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function usersCount63()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=63');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	////////////////////////////////
	
	function usersCount64()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=64');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount65()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=65');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount66()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=66');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount67()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=67');
        $query = $this->db->get();
        return $query->num_rows();
    }
	function usersCount68()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=68');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount69()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=69');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount70()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=70');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount71()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=71');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function usersCount72()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=72');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount73()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=73');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount74()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=74');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount75()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=75');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount76()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=76');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount77()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=77');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount78()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=78');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount79()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=79');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount80()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=80');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount81()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=81');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount82()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=82');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount83()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=83');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function usersCount84()
    {
        $this->db->select('*');
        $this->db->from('users as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=84');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
function productCount1()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=1');
        $query = $this->db->get();
        return $query->num_rows();
    }
	

function productCount2()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=2');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount3()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=3');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount4()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=4');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount5()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=5');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount6()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=6');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount7()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=7');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount8()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=8');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount9()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=9');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount11()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=11');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount12()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=12');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount13()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=13');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount15()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=15');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount16()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=16');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount17()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=17');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount18()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=18');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount20()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=20');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount22()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=22');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount23()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=23');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount24()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=24');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount25()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=25');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount26()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=26');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount27()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=27');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function productCount28()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=28');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount29()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=29');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount30()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=30');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount31()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=31');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount32()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=32');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount33()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=33');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount34()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=34');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount35()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=35');
        $query = $this->db->get();
        return $query->num_rows();
    }
	function productCount36()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=36');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount38()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=38');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount39()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=39');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount40()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=40');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function productCount42()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=42');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount43()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=43');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount45()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=45');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount46()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=46');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount47()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=47');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount48()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=48');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount49()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=49');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount50()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=50');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount51()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=51');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount52()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=52');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount53()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=53');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount54()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=54');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount55()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=55');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount56()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=56');
        $query = $this->db->get();
        return $query->num_rows();
    }


function productCount57()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=57');
        $query = $this->db->get();
        return $query->num_rows();
    }


function productCount58()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=58');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount59()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=59');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount60()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=60');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount61()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=61');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount62()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=62');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount63()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=63');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	//////////////////////////
	function productCount64()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=64');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount65()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=65');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount66()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=66');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount67()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=67');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function productCount68()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=68');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount69()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=69');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount70()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=70');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount71()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=71');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function productCount72()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=72');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function productCount73()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=73');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function productCount74()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=74');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function productCount75()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=75');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function productCount76()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=76');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function productCount77()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=77');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function productCount78()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=78');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function productCount79()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=79');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function productCount80()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=80');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function productCount81()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=81');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function productCount82()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=82');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function productCount83()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=83');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function productCount84()
    {
        $this->db->select('*');
        $this->db->from('instrument_types as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=84');
        $query = $this->db->get();
        return $query->num_rows();
    }
/////////////////////////////////////////////////////////////////
function instrumentCount1()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=1');
        $query = $this->db->get();
        return $query->num_rows();
    }
	

function instrumentCount2()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=2');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount3()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=3');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount4()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=4');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount5()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=5');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount6()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=6');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount7()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=7');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount8()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=8');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount9()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=9');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount11()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=11');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount12()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=12');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount13()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=13');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount15()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=15');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount16()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=16');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount17()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=17');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount18()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=18');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount20()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=20');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount22()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=22');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount23()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=23');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount24()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=24');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount25()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=25');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount26()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=26');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount27()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=27');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function instrumentCount28()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=28');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount29()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=29');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount30()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=30');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount31()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=31');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount32()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=32');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount33()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=33');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount34()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=34');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount35()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=35');
        $query = $this->db->get();
        return $query->num_rows();
    }
	function instrumentCount36()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=36');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount38()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=38');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount39()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=39');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount40()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=40');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function instrumentCount42()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=42');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount43()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=43');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount45()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=45');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount46()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=46');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount47()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=47');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount48()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=48');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount49()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=49');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount50()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=50');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount51()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=51');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount52()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=52');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount53()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=53');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount54()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=54');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount55()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=55');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	
	function instrumentCount56()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=56');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	
	function instrumentCount57()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=57');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount58()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=58');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function instrumentCount59()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=59');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	
	
	function instrumentCount60()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=60');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function instrumentCount61()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=61');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount62()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=62');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount63()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=63');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function instrumentCount64()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=64');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	
	function instrumentCount65()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=65');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount66()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=66');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount67()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=67');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount68()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=68');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount69()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=69');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount70()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=70');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount71()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=71');
        $query = $this->db->get();
        return $query->num_rows();
    }
	
	function instrumentCount72()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=72');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function instrumentCount73()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=73');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function instrumentCount74()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=74');
        $query = $this->db->get();
        return $query->num_rows();
    }

     function instrumentCount75()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=75');
        $query = $this->db->get();
        return $query->num_rows();
    }

 function instrumentCount76()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=76');
        $query = $this->db->get();
        return $query->num_rows();
    }


     function instrumentCount77()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=77');
        $query = $this->db->get();
        return $query->num_rows();
    }

     function instrumentCount78()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=78');
        $query = $this->db->get();
        return $query->num_rows();
    }

  function instrumentCount79()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=79');
        $query = $this->db->get();
        return $query->num_rows();
    }


     function instrumentCount80()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=80');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function instrumentCount81()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=81');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function instrumentCount82()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=82');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function instrumentCount83()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=83');
        $query = $this->db->get();
        return $query->num_rows();
    }

      function instrumentCount84()
    {
        $this->db->select('*');
        $this->db->from('instrument as BaseTbl');
    $this->db->where('isDeleted', 0);
	 $this->db->where('institute_id=84');
        $query = $this->db->get();
        return $query->num_rows();
    }

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
    $this->db->order_by("BaseTbl.home_news_id", "ASC");
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }





       /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewHomenews($homenewsInfo)
    {
        $this->db->trans_start();
        $this->db->insert('home_news', $homenewsInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }


////////////////////////////////////////////////////////////////////////

/**
     * This function used to get instrument information by id
     * @param number $taskId : This is instrument id
     * @return array $result : This is Instrument information
     */
    function getHomenewsInfo($homenewsId)
    {
        $this->db->select('*');
        $this->db->from('home_news');
    $this->db->where('isDeleted', 0);
        $this->db->where('home_news_id', $homenewsId);
        $query = $this->db->get();

        return $query->result();
    }

   
   
    


/**
     * This function is used to edit tasks
     */
    function editHomenews($HomenewsInfo,$homenewsId)
    {
        $this->db->where('home_news_id', $homenewsId);
        $this->db->update('home_news', $HomenewsInfo);

        return $this->db->affected_rows();
    }
//////////////////////////////////////////////////////////////////


    /**
     * This function is used to delete tasks
     */
    function deleteHomenews($homenewsId,$homenewsInfo)
    {
        //$this->db->where('instrument_id',$instrumentId);
        //$this->db->delete('instrument');
        //return TRUE;
   
		$this->db->where('home_news_id', $homenewsId);
        $this->db->update('home_news', $homenewsInfo);

        return $this->db->affected_rows();
    }

 




  /////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	
	
	
}