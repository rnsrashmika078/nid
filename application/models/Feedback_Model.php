<?php
defined('BASEPATH') OR exit('No direct script access allowed');
Class Feedback_Model extends CI_Model{

	/**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function sendFeedback($feedbackInfo)
    {
        $this->db->trans_start();
        $this->db->insert('user_feedbacks', $feedbackInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }

}
	
	
    
	
	
	
	 
	
	
	
	 
	
	
	
	
	
	
	
	
	


