<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Login_model extends CI_Model
{

    /**
     * This function used to check the login credentials of the user
     * @param string $email : This is email of the user
     * @param string $password : This is encrypted password of the user
     */
    function loginMe($email, $password)
    {
         //$this->db->select('BaseTbl.user_id, BaseTbl.password, BaseTbl.name, BaseTbl.user_type_id, Roles.user_type');
        $this->db->select('BaseTbl.id, BaseTbl.password, BaseTbl.first_name, BaseTbl.last_name,BaseTbl.user_status,BaseTbl.user_type_id,BaseTbl.institute_id,BaseTbl.faculty_id, Roles.user_type');
        $this->db->from('users as BaseTbl');
        // LEFT JOIN so users whose role has no row in user_types (e.g. technicians,
        // user_type_id = 10) can still log in.
        $this->db->join('user_types as Roles','Roles.user_type_id = BaseTbl.user_type_id','left');
        $this->db->where('BaseTbl.username', $email);
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();

        $user = $query->result();
    //return $user;

    if(!empty($user)){
            if(verifyHashedPassword($password, $user[0]->password)){
                return $user;
            } else {
                return array();
            }
        } else {
            return array();
        }
/*
  if(!empty($user)){

           return $user;
         } else {
             return array();
        }
  */
 }



  //if(!empty($user)){
         //   if(verifyHashedPassword($password, $user[0]->password)){

            //  return $user;
     //     } else {
            //   return array();
       //    }
    // } else {
         //  return array();
      // }
 // }

    /**
     * This function used to check email exists or not
     * @param {string} $email : This is users email id
     * @return {boolean} $result : TRUE/FALSE
     */
    function checkEmailExist($email)
    {
        $this->db->select('id');
        $this->db->where('username', $email);
        $this->db->where('isDeleted', 0);
        $query = $this->db->get('users');

        if ($query->num_rows() > 0){
            return true;
        } else {
            return false;
        }
    }


    /**
     * This function used to insert reset password data
     * @param {array} $data : This is reset password data
     * @return {boolean} $result : TRUE/FALSE
     */
    function resetPasswordUser($data)
    {
        $result = $this->db->insert('tbl_reset_password', $data);

        if($result) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    /**
     * This function is used to get customer information by email-id for forget password email
     * @param string $email : Email id of customer
     * @return object $result : Information of customer
     */
    function getCustomerInfoByEmail($email)
    {
        $this->db->select('id,email,last_name,username');
        $this->db->from('users');
        $this->db->where('isDeleted', 0);
        $this->db->where('username', $email);
        $query = $this->db->get();

        return $query->result();
    }

    /**
     * This function used to check correct activation deatails for forget password.
     * @param string $email : Email id of user
     * @param string $activation_id : This is activation string
     */
    function checkActivationDetails($email, $activation_id)
    {
        $this->db->select('id');
        $this->db->from('tbl_reset_password');
        $this->db->where('email', $email);
        $this->db->where('activation_id', $activation_id);
        $query = $this->db->get();
        return $query->num_rows();
    }

    // This function used to create new password by reset link
    function createPasswordUser($email, $password)
    {
        $this->db->where('username', $email);
        $this->db->where('isDeleted', 0);
       $this->db->update('users', array('password'=>getHashedPassword($password)));
        $this->db->delete('tbl_reset_password', array('email'=>$email));
    }

    /**
     * This function used to save login information of user
     * @param array $loginInfo : This is users login information
     */
    function loginsert($logInfo)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_log', $logInfo);
        $this->db->trans_complete();
    }

    /**
     * This function is used to get last login info by user id
     * @param number $userId : This is user id
     * @return number $result : This is query result
     */
    /**
     * This function used to clear the "must change password" flag for
     * accounts that logged in successfully with their real password.
     * @param number $userId : This is user id
     */
    function updateUserStatus($userId)
    {
        $this->db->where('id', $userId);
        $this->db->where('isDeleted', 0);
        $this->db->update('users', array('user_status' => 1));
    }

    /**
     * This function used to get last login info by user id
     * @param number $userId : This is user id
     * @return number $result : This is query result
     */
    function lastLoginInfo($userId)
    {
        $this->db->select('BaseTbl.createdDtm');
        $this->db->where('BaseTbl.userId', $userId);
        $this->db->order_by('BaseTbl.id', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get('tbl_log as BaseTbl');

        return $query->row();
    }
}

?>