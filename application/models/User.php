<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Model {

    function __construct() {
        $this->tableName = 'users';
    }

    public function checkUser($data = array()){
        // First try to match an existing Google account
        $this->db->select('id');
        $this->db->from($this->tableName);
        $con = array(
            'oauth_provider' => $data['oauth_provider'],
            'oauth_uid' => $data['oauth_uid']
        );
        $this->db->where($con);
        $query = $this->db->get();

        if($query->num_rows() > 0){
            $result = $query->row_array();
            $userID = $result['id'];
        }else{
            // Not a known Google account: match by email and link it
            $this->db->select('id');
            $this->db->from($this->tableName);
            $this->db->where('username', $data['username']);
            $query = $this->db->get();

            if($query->num_rows() > 0){
                $result = $query->row_array();
                $userID = $result['id'];
            }else{
                // Brand new user: insert
                $data['created'] = date("Y-m-d H:i:s");
                $data['modified'] = date("Y-m-d H:i:s");
                $insert = $this->db->insert($this->tableName, $data);

                $userID = $this->db->insert_id();
            }
        }

        if($userID){
            // Update user data (links oauth_provider/oauth_uid to the account)
            $data['modified'] = date("Y-m-d H:i:s");
            $this->db->update($this->tableName, $data, array('id' => $userID));
        }

        // Return user ID
        return $userID?$userID:false;
    }

  function get_institute(){

    $this->db->select('institute_id,name');
        $this->db->from('institutes');
        $query = $this->db->get();

        return $query->result();
    }
	
	
	function get_faculty(){

    $this->db->select('faculty_id,faculty_name');
        $this->db->from('faculties');
        $query = $this->db->get();

        return $query->result();
    }

  function get_designation(){

    $query = $this->db->query('SELECT name FROM designation ORDER BY name ASC');
        return $query;

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

}