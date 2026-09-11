<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Samet Aydın / sametay153@gmail.com
 * @version : 1.0
 * @since : 27.02.2018
 */
class User extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->load->model('Institute_model');
        $this->load->model('Faculty_model');
        $this->isLoggedIn();
        $this->datas();
    }

    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $this->global['pageTitle'] = 'NIDB : Home page';

        $instituteId = $this->instituteId;
        $userTypeId = $this->role;
        $facultyId = $this->facultyId;


        if ($userTypeId == 1 or $userTypeId == 2 or $userTypeId == 9) {
            $data['instituteCount'] = $this->user_model->instituteCount();
            $data['facultyCount'] = $this->user_model->facultyCount();
            $data['departmentCount'] = $this->user_model->departmentCount();
            $data['laboratoryCount'] = $this->user_model->laboratoryCount();
            $data['usersCount'] = $this->user_model->usersCount();
            $data['productCount'] = $this->user_model->productCount();
            $data['instrumentCount'] = $this->user_model->instrumentCount();
            $data['feedbackCount'] = $this->user_model->feedbackCount();
            $data['registeredusersCount'] = $this->user_model->registeredusersCount();
            $data['einstrumentCount'] = $this->user_model->einstrumentCount();
        } else if ($userTypeId == 3) {
            $data['instituteCount'] = $this->Institute_model->instituteCount($instituteId);
            $data['facultyCount'] = $this->Institute_model->facultyCount($instituteId);
            $data['departmentCount'] = $this->Institute_model->departmentCount($instituteId);
            $data['laboratoryCount'] = $this->Institute_model->laboratoryCount($instituteId);
            $data['usersCount'] = $this->Institute_model->usersCount($instituteId);
            $data['productCount'] = $this->Institute_model->productCount($instituteId);
            $data['instrumentCount'] = $this->Institute_model->instrumentCount($instituteId);
            // $data['feedbackCount'] = $this->Institute_model->feedbackCount($instituteId);
            $data['registeredusersCount'] = $this->Institute_model->registeredusersCount($instituteId);
            $data['einstrumentCount'] = $this->user_model->einstrumentCount();
        } else if (($userTypeId == 4 or $userTypeId == 5 or $userTypeId == 6 or $userTypeId == 7) and ($instituteId != 0)  and ($facultyId != 0)) {
            $data['instituteCount'] = $this->Faculty_model->instituteCount($instituteId);
            $data['facultyCount'] = $this->Faculty_model->facultyCount($facultyId);
            $data['departmentCount'] = $this->Faculty_model->departmentCount($facultyId);
            $data['laboratoryCount'] = $this->Faculty_model->laboratoryCount($facultyId);
            $data['usersCount'] = $this->Faculty_model->usersCount($facultyId);
            $data['productCount'] = $this->Institute_model->productCount($instituteId);
            $data['instrumentCount'] = $this->Faculty_model->instrumentCount($facultyId);
            //$data['feedbackCount'] = $this->Faculty_model->feedbackCount($facultyId);
            $data['registeredusersCount'] = $this->Faculty_model->registeredusersCount($facultyId);
            $data['einstrumentCount'] = $this->user_model->einstrumentCount();
        } else if (($userTypeId == 5 or $userTypeId == 6 or $userTypeId == 7) and ($instituteId != 0) and ($facultyId == 0)) {
            $data['instituteCount'] = $this->Institute_model->instituteCount($instituteId);
            $data['facultyCount'] = $this->Institute_model->facultyCount($instituteId);
            $data['departmentCount'] = $this->Institute_model->departmentCount($instituteId);
            $data['laboratoryCount'] = $this->Institute_model->laboratoryCount($instituteId);
            $data['usersCount'] = $this->Institute_model->usersCount($instituteId);
            $data['productCount'] = $this->Institute_model->productCount($instituteId);
            $data['instrumentCount'] = $this->Institute_model->instrumentCount($instituteId);
            $data['einstrumentCount'] = $this->user_model->einstrumentCount();

            // $data['feedbackCount'] = $this->Institute_model->feedbackCount($instituteId);
            $data['registeredusersCount'] = $this->Institute_model->registeredusersCount($instituteId);
        } else {
            $data['instituteCount'] = $this->Institute_model->instituteCount($instituteId);
            $data['facultyCount'] = $this->Institute_model->facultyCount($instituteId);
            $data['departmentCount'] = $this->Institute_model->departmentCount($instituteId);
            $data['laboratoryCount'] = $this->Institute_model->laboratoryCount($instituteId);
            $data['usersCount'] = $this->Institute_model->usersCount($instituteId);
            $data['productCount'] = $this->Institute_model->productCount($instituteId);
            $data['instrumentCount'] = $this->Institute_model->instrumentCount($instituteId);
            $data['einstrumentCount'] = $this->user_model->einstrumentCount();
            //$data['feedbackCount'] = $this->Institute_model->feedbackCount($instituteId);
            $data['registeredusersCount'] = $this->Institute_model->registeredusersCount($instituteId);
        }
        //$data['instrumentCount'] = $this->user_model->instrumentCount();
        //$data['instituteCount'] = $this->user_model->instituteCount();
        //$data['productCount'] = $this->user_model->productCount();
        //$data['logsCount'] = $this->user_model->logsCount();
        //$data['usersCount'] = $this->user_model->usersCount();
        //$data['facultyCount'] = $this->user_model->facultyCount();
        //$data['departmentCount'] = $this->user_model->departmentCount();
        //$data['laboratoryCount'] = $this->user_model->laboratoryCount();
        //$data['feedbackCount'] = $this->user_model->feedbackCount();
        //$data['registeredusersCount'] = $this->user_model->registeredusersCount();

        if ($this->getUserStatus() == TRUE) {
            $this->session->set_flashdata('error', 'Please change your password first for your security..');
            redirect('loadChangePass');
        }

        $this->loadViews("dashboard", $this->global, $data, NULL);
    }

    /**
     * This function is used to check whether email already exist or not
     */
    function checkEmailExists()
    {
        $userId = $this->input->post("userId");
        $email = $this->input->post("email");

        if (empty($userId)) {
            $result = $this->user_model->checkEmailExists($email);
        } else {
            $result = $this->user_model->checkEmailExists($email, $userId);
        }

        if (empty($result)) {
            echo ("true");
        } else {
            echo ("false");
        }
    }

    /**
     * This function is used to load edit user view
     */
    function loadUserEdit()
    {
        $this->global['pageTitle'] = 'NIDB : Account Settings';

        $data['userInfo'] = $this->user_model->getUserInfo($this->vendorId);

        $this->loadViews("userEdit", $this->global, $data, NULL);
    }

    /**
     * This function is used to update the of the user info
     */
    function updateUser()
    {
        $this->load->library('form_validation');

        $userId = $this->input->post('userId');

        $this->form_validation->set_rules('fname', 'Full Name', 'trim|required|max_length[128]');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|max_length[128]');
        $this->form_validation->set_rules('oldpassword', 'Old password', 'max_length[20]');
        $this->form_validation->set_rules('cpassword', 'Password', 'matches[cpassword2]|max_length[20]');
        $this->form_validation->set_rules('cpassword2', 'Confirm Password', 'matches[cpassword]|max_length[20]');
        $this->form_validation->set_rules('mobile', 'Mobile Number', 'required|min_length[10]');

        if ($this->form_validation->run() == FALSE) {
            $this->loadUserEdit();
        } else {
            $name = $this->security->xss_clean($this->input->post('fname'));
            $email = $this->security->xss_clean($this->input->post('email'));
            $password = $this->input->post('cpassword');
            $mobile = $this->security->xss_clean($this->input->post('mobile'));
            $oldPassword = $this->input->post('oldpassword');

            $userInfo = array();

            if (empty($password)) {
                $userInfo = array(
                    'email' => $email,
                    'last_name' => $name,
                    'mobile_number' => $mobile,
                    'user_status' => 1,
                    'updatedBy' => $this->vendorId,
                    'updatedDtm' => date('Y-m-d H:i:s')
                );
            } else {
                $resultPas = $this->user_model->matchOldPassword($this->vendorId, $oldPassword);

                if (empty($resultPas)) {
                    $this->session->set_flashdata('nomatch', 'Your old password is not correct');
                    redirect('userEdit');
                } else {
                    $userInfo = array(
                        'email' => $email,
                        'password' => getHashedPassword($password),
                        'last_name' => ucwords($name),
                        'mobile_number' => $mobile,
                        'user_status' => 1,
                        'updatedBy' => $this->vendorId,
                        'updatedDtm' => date('Y-m-d H:i:s')
                    );
                }
            }

            $result = $this->user_model->editUser($userInfo, $userId);

            if ($result == true) {
                $process = 'Account Settings Update';
                $processFunction = 'User/updateUser';
                $this->logrecord($process, $processFunction);

                $this->session->set_flashdata('success', 'Your Account Settings have been successfully updated');
            } else {
                $this->session->set_flashdata('error', 'Failed to update Account Settings');
            }

            redirect('userEdit');
        }
    }



    /**
     * This function is used to load the change password view
     */
    function loadChangePass()
    {
        $this->global['pageTitle'] = 'NIDB : Change Password';

        $this->loadViews("changePassword", $this->global, NULL, NULL);
    }


    /**
     * This function is used to change the password of the user
     */
    function changePassword()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('oldPassword', 'Old password', 'required|max_length[20]');
        $this->form_validation->set_rules('newPassword', 'New password', 'required|max_length[20]');
        $this->form_validation->set_rules('cNewPassword', 'Confirm new password', 'required|matches[newPassword]|max_length[20]');

        if ($this->form_validation->run() == FALSE) {
            $this->loadChangePass();
        } else {
            $oldPassword = $this->input->post('oldPassword');
            $newPassword = $this->input->post('newPassword');

            $resultPas = $this->user_model->matchOldPassword($this->vendorId, $oldPassword);

            if (empty($resultPas)) {
                $this->session->set_flashdata('nomatch', 'Your old password is not correct');
                redirect('loadChangePass');
            } else {
                // $usersData = array('password'=>getHashedPassword($newPassword), 'updatedBy'=>$this->vendorId,
                //  $usersData = array('password'=>$newPassword,'user_status'=>1, 'updatedBy'=>$this->vendorId,
                //     'updatedDtm'=>date('Y-m-d H:i:s'));

                $usersData = array(
                    'password' => getHashedPassword($newPassword),
                    'user_status' => 1,
                    'updatedBy' => $this->vendorId,
                    'updatedDtm' => date('Y-m-d H:i:s')
                );

                $result = $this->user_model->changePassword($this->vendorId, $usersData);

                if ($result > 0) {

                    $process = 'Password Change';
                    $processFunction = 'User/changePassword';
                    $this->logrecord($process, $processFunction);

                    $this->session->set_flashdata('success', 'Password change successful');
                } else {
                    $this->session->set_flashdata('error', 'Password change failed');
                }

                redirect('loadChangePass');
            }
        }
    }

    /**
     * This function is used to open 404 view
     */
    function pageNotFound()
    {
        $this->global['pageTitle'] = 'NIDB : 404 - Page Not Found';

        $this->loadViews("404", $this->global, NULL, NULL);
    }

    /**
     * This function is used to finish instrument record.
     */
    function endInstrument($instrumentId)
    {
        $InstrumentInfo = array('record_status' => 1, 'record_endDtm' => date('Y-m-d H:i:s'));

        $result = $this->user_model->endInstrument($instrumentId, $InstrumentInfo);

        if ($result > 0) {
            $process = 'Instrument Record Completion';
            $processFunction = 'User/endInstrument';
            $this->logrecord($process, $processFunction);
            $this->session->set_flashdata('success', 'Instrument Record successfully completed');
            if ($role != ROLE_EQUIPMENT_USER) {
                redirect('instrumentListing');
            } else {
                redirect('etasks');
            }
        } else {
            $this->session->set_flashdata('error', 'Failed to complete the instrument record');
            if ($this->role != ROLE_EQUIPMENT_USER) {
                redirect('instrumentListing');
            } else {
                redirect('etasks');
            }
        }
    }




    function einstruments()
    {

        $searchText = $this->security->xss_clean($this->input->post('searchText'));
        $data['searchText'] = $searchText;

        $this->load->library('pagination');

        // $instituteId = $this->instituteId;
        // $facultyId = $this->facultyId;
        // $userTypeId = $this->role;


        $count = $this->user_model->instrumentListingCount($searchText);




        $returns = $this->paginationCompress("instrumentListing/", $count, 100000000000000);



        //$data['instrumentRecords'] = $this->Institute_model->instrumentListing($searchText, $returns["page"], $returns["segment"],$instituteId);



        $data['instrumentRecords'] = $this->user_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);




        $process = 'User All tasks';
        $processFunction = 'User/einstruments';
        $this->logrecord($process, $processFunction);

        $this->global['pageTitle'] = 'NIDB : All Missions';

        $this->loadViews("einstruments", $this->global, $data, NULL);
    }
}
