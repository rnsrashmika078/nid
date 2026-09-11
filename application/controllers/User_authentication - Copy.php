<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_Authentication extends CI_Controller {

    function __construct(){
        parent::__construct();

        // Load google oauth library
        $this->load->library('google');

        // Load user model
        $this->load->model('user');
    }

    public function index(){
        // Redirect to profile page if the user already logged in
        if($this->session->userdata('loggedIn') == true){
            redirect('user_authentication/editOldRegister/');
             }

        if(isset($_GET['code'])){

            // Authenticate user with google
            if($this->google->getAuthenticate()){

                // Get user info from google
                $gpInfo = $this->google->getUserInfo();

                // Preparing data for database insertion
                $userData['oauth_provider'] = 'google';
                $userData['oauth_uid']         = $gpInfo['id'];
                $userData['first_name']     = $gpInfo['given_name'];
                $userData['last_name']         = $gpInfo['family_name'];
                $userData['username']             = $gpInfo['email'];
                $userData['gender']         = !empty($gpInfo['gender'])?$gpInfo['gender']:'';
                $userData['locale']         = !empty($gpInfo['locale'])?$gpInfo['locale']:'';
                $userData['picture']         = !empty($gpInfo['picture'])?$gpInfo['picture']:'';

                // Insert or update user data to the database
                $userID = $this->user->checkUser($userData);

                // Store the status and user profile info into session
                $this->session->set_userdata('loggedIn', true);
                $this->session->set_userdata('userData', $userData);

                // Redirect to profile page
                redirect('user_authentication/editOldRegister/');
            }
        }

        // Google authentication url
        $data['loginURL'] = $this->google->loginURL();

        // Load google login view
        $this->load->view('user_authentication/index',$data);
    }
     public function editOldRegister(){
        // Redirect to login page if the user not logged in
        if(!$this->session->userdata('loggedIn')){
            redirect('/user_authentication/');
        }

        // Get user info from session
        $data['userData'] = $this->session->userdata('userData');
		$data['designation'] = $this->user->get_designation()->result();
		$data['institutes'] = $this->user->get_institute();

        // Load user profile view
        $this->load->view('user_authentication/editOldRegister',$data);
    }
	
	function editRegister()
   {
           $this->load->library('form_validation');

           //$userId = $this->input->post('userId');

       $this->form_validation->set_rules('lastName','Last Name','trim|required|max_length[128]');
          // $this->form_validation->set_rules('email1','Email','trim|valid_email|max_length[128]');
       //$this->form_validation->set_rules('email','Email','trim|valid_email|max_length[128]');
           $this->form_validation->set_rules('password','Password','matches[cpassword]|max_length[20]');
           $this->form_validation->set_rules('cpassword','Confirm Password','matches[password]|max_length[20]');
           $this->form_validation->set_rules('role','Role','trim|required|numeric');
           $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               //$this->editOld($userId);
			   $this-> editOldRegister();

           }
           else
           {
         $title = $this->input->post('title');
         $gender = $this->input->post('gender');
         $firstName = ucwords(strtolower($this->security->xss_clean($this->input->post('firstName'))));
         $lastName = ucwords(strtolower($this->security->xss_clean($this->input->post('lastName'))));
         $address = $this->input->post('address');               
         $designation = $this->input->post('designation');
         $mobile = $this->security->xss_clean($this->input->post('mobile'));
         $phone = $this->security->xss_clean($this->input->post('phone'));
         $instituteId = $this->input->post('institute');		          
         $userName = $this->security->xss_clean($this->input->post('email'));
         $password = $this->input->post('password');
		 
               $userInfo = array();

               $userInfo = array('title'=>$title,'gender'=>$gender,'first_name'=>$firstName,'last_name'=>$lastName,'address'=>$address,'designation'=>$designation,'mobile_number'=>$mobile,'phone_number'=>$phone,'institute_id'=>$instituteId,'username'=> $userName,'password'=> $password,'createdBy'=>$this->vendorId, 'created'=>date('Y-m-d H:i:s'));

               $result = $this->user->editUser($userInfo, $userId);

               if($result == true)
               {
               
                   $this->session->set_flashdata('success', 'User successfully updated');
               }
               else
               {
                   $this->session->set_flashdata('error', 'User update failed');
               }

               redirect('userListing');
           }
   }
     public function logout(){
        // Reset OAuth access token
        $this->google->revokeToken();

        // Remove token and user data from the session
        $this->session->unset_userdata('loggedIn');
        $this->session->unset_userdata('userData');

        // Destroy entire session data
        $this->session->sess_destroy();

        // Redirect to login page
        redirect('/user_authentication/');
    }

}