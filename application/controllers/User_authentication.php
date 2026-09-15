<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User_Authentication extends CI_Controller
{

    function __construct()
    {
        parent::__construct();

        // Load google oauth library
        $this->load->library('google');

        // Load user model
        $this->load->model('user');
    }

    public function index()
    {
        // Redirect logged in users away from the login page
        if ($this->session->userdata('loggedIn') == true
            || $this->session->userdata('isLoggedIn') == true
            || !empty($this->session->userdata('userId'))) {
            redirect('dashboard');
        }

        if (isset($_GET['code'])) {

            // Authenticate user with google
            if ($this->google->getAuthenticate()) {

                // Get user info from google
                $gpInfo = $this->google->getUserInfo();

                // Preparing data for database insertion
                $userData['oauth_provider'] = 'google';
                $userData['oauth_uid']         = $gpInfo['id'];
                $userData['first_name']     = $gpInfo['given_name'];
                $userData['last_name']         = $gpInfo['family_name'];
                $userData['username']             = $gpInfo['email'];
                $userData['gender']         = !empty($gpInfo['gender']) ? $gpInfo['gender'] : '';
                $userData['locale']         = !empty($gpInfo['locale']) ? $gpInfo['locale'] : '';
                $userData['picture']         = !empty($gpInfo['picture']) ? $gpInfo['picture'] : '';

                // Insert or update user data to the database
                $userID = $this->user->checkUser($userData);
                ///////

                $userData['id'] = $userID;

                // Get the logged in user details (mirrors the normal-login
                // session keys so the standard /dashboard works after sign-in)
                $this->db->select('id, user_type_id, first_name, last_name, institute_id, faculty_id, user_status, username');
                $this->db->where('id', $userID);
                $userRow = $this->db->get('users')->row();

                $userTypeId = 0;
                if ($userRow) {
                    $userTypeId = (int) $userRow->user_type_id;
                }

                // Resolve a display role name (technicians have no user_types row)
                $roleText = 'User';
                if ($userTypeId == 10) {
                    $roleText = 'Technician';
                } else if ($userRow) {
                    $this->db->select('user_type');
                    $this->db->where('user_type_id', $userTypeId);
                    $roleRow = $this->db->get('user_types')->row();
                    if ($roleRow) {
                        $roleText = $roleRow->user_type;
                    }
                }

                // Store the status and user profile info into session
                $this->session->set_userdata('loggedIn', true);
                $this->session->set_userdata('userData', $userData);

                $sessionArray = array(
                    'userId'      => (int) $userID,
                    'role'        => $userRow ? (int) $userRow->user_type_id : 8,
                    'roleText'    => $roleText,
                    'instituteId' => $userRow ? $userRow->institute_id : null,
                    'facultyId'   => $userRow ? $userRow->faculty_id : null,
                    'firstName'   => $userRow ? $userRow->first_name : $userData['first_name'],
                    'name'        => $userRow ? $userRow->last_name : $userData['last_name'],
                    'lastLogin'   => null,
                    'status'      => $userRow ? $userRow->user_status : 1,
                    'isLoggedIn'  => TRUE
                );
                $this->session->set_userdata($sessionArray);

                // Technicians are redirected back to the technician portal login
                if ($userTypeId == 10) {
                    // redirect('http://localhost:5173/tech/dashboard');
                    redirect('/user_authentication/');
                }


                // Redirect to profile page
                redirect('editOldRegister');
                //redirect('einstrumentView');
            }
        }

        // Google authentication url
        $data['loginURL'] = $this->google->loginURL();

        // Load google login view
        $this->load->view('user_authentication/index', $data);
    }





    //This part (Edit Old Register) I temporarily stoped




    public function editOldRegister()
    {
        // Redirect to login page if the user not logged in
        if (!$this->session->userdata('loggedIn')) {
            redirect('/user_authentication/');
        }

        // Get user info from session
        $data['userData'] = $this->session->userdata('userData');
        $data['designation'] = $this->user->get_designation()->result();
        $data['institutes'] = $this->user->get_institute();

        // Load user profile view
        $this->load->view('editOldRegister', $data);
    }

    function editRegister()
    {
        $this->load->library('form_validation');

        $userId = $this->input->post('userId');

        $this->form_validation->set_rules('lastName', 'Last Name', 'trim|required|max_length[128]');
        // $this->form_validation->set_rules('email1','Email','trim|valid_email|max_length[128]');
        //$this->form_validation->set_rules('email','Email','trim|valid_email|max_length[128]');
        // $this->form_validation->set_rules('password','Password','matches[cpassword]|max_length[20]');
        //   $this->form_validation->set_rules('cpassword','Confirm Password','matches[password]|max_length[20]');

        //$this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');

        if ($this->form_validation->run() == FALSE) {
            //$this->editOld($userId);
            $this->editOldRegister();
        } else {
            $title = $this->input->post('title');
            $gender = $this->input->post('gender');
            $firstName = ucwords(strtolower($this->security->xss_clean($this->input->post('firstName'))));
            $lastName = ucwords(strtolower($this->security->xss_clean($this->input->post('lastName'))));
            $address = $this->input->post('address');
            $designation = $this->input->post('designation');
            $mobile = $this->security->xss_clean($this->input->post('mobilenumber'));
            $phone = $this->security->xss_clean($this->input->post('phoneNumber'));
            $instituteId = $this->input->post('institute');
            $userName = $this->security->xss_clean($this->input->post('email'));
            //  $password = $this->input->post('password');
            $otherInstitute = $this->input->post('otherInstitute');

            // Get the current user type before updating so technicians are
            // not demoted and are routed back to the technician portal
            $currentUserTypeId = 0;
            $this->db->select('user_type_id');
            $this->db->where('id', $userId);
            $userRow = $this->db->get('users')->row();
            if ($userRow) {
                $currentUserTypeId = (int) $userRow->user_type_id;
            }

            $userTypeId = ($currentUserTypeId == 10) ? 10 : 8;


            $userInfo = array();

            $userInfo = array('title' => $title, 'gender' => $gender, 'first_name' => $firstName, 'last_name' => $lastName, 'address' => $address, 'designation' => $designation, 'mobile_number' => $mobile, 'phone_number' => $phone, 'institute_id' => $instituteId, 'username' => $userName, 'other_institute_name' => $otherInstitute, 'user_type_id' => $userTypeId);

            $result = $this->user->editUser($userInfo, $userId);

            if ($result == true) {

                //   $this->session->set_flashdata('success', 'User successfully updated');

            } else {
                $this->session->set_flashdata('error', 'User update failed');
            }

            // redirect('/user_authentication/');
            //redirect('dashboard');

            // Technicians are routed back to the technician portal
            if ($currentUserTypeId == 10) {
                // redirect('http://localhost:5173/tech/dashboard');
                redirect('/user_authentication/');
            }

            redirect('dashboard');
        }
    }
    public function logout()
    {
        // Reset OAuth access token
        $this->google->revokeToken();

        // Remove token and user data from the session
        $this->session->unset_userdata('loggedIn');
        $this->session->unset_userdata('userData');

        // Destroy the session so all old data is gone but the flash
        // notification survives the redirect back to the login page.
        $this->session->sess_destroy();
        $this->session->set_flashdata('success', 'You have been logged out successfully.');

        // Redirect to login page
        redirect('/user_authentication/');
    }
}
