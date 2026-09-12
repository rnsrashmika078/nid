<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Register extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('Register_Model');
    $this->load->library('session');
  }

  public function index()
  {
    $data['institutes'] = $this->Register_Model->get_institute()->result();
    //$data['user_types'] = $this->Register_Model->get_user_type()->result();
    $data['designation'] = $this->Register_Model->get_designation()->result();

    $this->form_validation->set_rules('title', 'Title', 'required');
    $this->form_validation->set_rules('gender', 'Gender', 'required');
    $this->form_validation->set_rules('firstName', 'First Name', 'trim|required|max_length[128]');
    $this->form_validation->set_rules('lastName', 'Last Name', 'trim|required|max_length[128]');
    $this->form_validation->set_rules('mobilenumber', 'Mobile Number', 'required|numeric|exact_length[10]');
    $this->form_validation->set_rules('userName', 'User Name', 'trim|required|valid_email|max_length[128]|is_unique[users.username]');
    $this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
    $this->form_validation->set_rules('confirmpassword', 'Confirm Password', 'required|min_length[6]|matches[password]');
    $this->form_validation->set_rules('otherInstitute', 'Other Institution', 'trim|max_length[255]|callback_validate_other_institute');
    if ($this->form_validation->run()) {
      $title = $this->input->post('title');
      $gender = $this->input->post('gender');
      $firstName = $this->input->post('firstName');
      $lastName = $this->input->post('lastName');
      $address = $this->input->post('address');
      $emailid = $this->input->post('emailid');
      $designation = $this->input->post('designation');
      $mobilenumber = $this->input->post('mobilenumber');
      $phoneNumber = $this->input->post('phoneNumber');
      $institute = $this->input->post('institute');
      if ($institute === 'other') {
        $institute = null;
      }
      $facultyId = $this->input->post('faculty');
      /**new*/
      $department = $this->input->post('department');
      $laboratory = $this->input->post('laboratory');
      $userName = $this->input->post('userName');
      $hashPassword = $this->input->post('password');
       $password = getHashedPassword($hashPassword);
       $otherInstitute = $this->input->post('otherInstitute');
       $userTypeId = 8;
       $randomNumber = random_int(100000, 999999);

      $registrationData = array(
        'title' => $title,
        'gender' => $gender,
        'firstName' => $firstName,
        'lastName' => $lastName,
        'address' => $address,
        'emailid' => $emailid,
        'designation' => $designation,
        'mobilenumber' => $mobilenumber,
        'phoneNumber' => $phoneNumber,
        'institute' => $institute,
        'facultyId' => $facultyId,
        'department' => $department,
        'laboratory' => $laboratory,
        'userName' => $userName,
        'password' => $password,
        'otherInstitute' => $otherInstitute,
        'randomNumber' => $randomNumber,
        'userTypeId' => $userTypeId,
        'undefineUser' => 1,
        'createDate' => date('Y-m-d H:i:s'),
      );

      $this->session->set_userdata($registrationData);

      if (!$this->sendVerificationEmail($userName, $title, $lastName, $randomNumber)) {
        show_error($this->email->print_debugger());
      }

      $this->session->set_flashdata('success', 'A verification code has been sent to your email address.');
      redirect('register/verificateUser');
    } else {
      $data['validationErrors'] = array_values($this->form_validation->error_array());
      $this->load->view('register', $data);
    }
  }

  public function validate_other_institute($value)
  {
    if ($this->input->post('institute') === 'other' && trim((string) $value) === '') {
      $this->form_validation->set_message('validate_other_institute', 'Please enter your institution name.');
      return false;
    }

    return true;
  }

  public function verificateUser()
  {
    $this->load->view('verificateUser');
  }

  public function resendCode()
  {
    $userName = $this->session->userdata('userName');
    if (!$userName) {
      redirect('register');
      return;
    }

    $title = $this->session->userdata('title');
    $lastName = $this->session->userdata('lastName');
    $randomNumber = random_int(100000, 999999);
    $this->session->set_userdata('randomNumber', $randomNumber);

    if ($this->sendVerificationEmail($userName, $title, $lastName, $randomNumber)) {
      $this->session->set_flashdata('success', 'A new verification code has been sent to your email address.');
    } else {
      $this->session->set_flashdata('error', 'Sorry, we could not resend the code right now. Please try again in a few minutes.');
    }

    redirect('register/verificateUser');
  }

  private function sendVerificationEmail($email, $title, $lastName, $code)
  {
    $this->load->library('email');
    $config = array(
      'protocol' => PROTOCOL,
      'smtp_host' => SMTP_HOST,
      'smtp_timeout' => '30',
      'smtp_port' => (int) SMTP_PORT,
      'smtp_user' => SMTP_USER,
      'smtp_pass' => SMTP_PASS,
      'mailtype' => 'text',
      'smtp_crypto' => 'tls',
      'smtp_auth' => TRUE,
      'charset' => 'utf-8',
      'newline' => "\r\n",
    );

    $this->email->initialize($config);
    $this->email->from(EMAIL_FROM, FROM_NAME);
    $this->email->to($email);
    $this->email->subject('Email Verification of NID');
    $message = "Dear $title $lastName,\n\nWe have received your request for registration at the National Instrument Database. Please verify your email address by entering the following verification code.\n\n";
    $message .= $code . "\n\n";
    $message .= "Thank you.\n";
    $message .= "NID\n";
    $message .= "This is an auto generated email. Please do not reply to this email.";
    $this->email->message($message);
    return $this->email->send();
  }


  public function verifyUser()
  {
    $this->form_validation->set_rules('code', 'code', 'required');

    if ($this->form_validation->run()) {

      $code = $this->input->post('code');

     // print_r('We are in line 153');
      $stored_code = $this->session->userdata('randomNumber');

      if ($code == $stored_code) {
      //  print_r('We are in line 133');
        $title = $this->session->userdata('title');
        $gender = $this->session->userdata('gender');
        $firstName = $this->session->userdata('firstName');
        $lastName = $this->session->userdata('lastName');
        $address = $this->session->userdata('address');
        $emailid = $this->session->userdata('emailid');
        $designation = $this->session->userdata('designation');
        $mobilenumber = $this->session->userdata('mobilenumber');
        $phoneNumber = $this->session->userdata('phoneNumber');
        $institute = $this->session->userdata('institute');
        $facultyId = $this->session->userdata('faculty');
        $department = $this->session->userdata('department');
        $laboratory = $this->session->userdata('laboratory');
        $userName = $this->session->userdata('userName');
        $password = $this->session->userdata('password');
        $otherInstitute = $this->session->userdata('otherInstitute');
        $userTypeId = $this->session->userdata('userTypeId');
        $undefineUser = 1;
        $createDate = date('Y-m-d H:i:s');

     
        $this->Register_Model->insert($title, $gender, $firstName, $lastName, $address, $emailid, $designation, $mobilenumber, $phoneNumber, $institute, $facultyId, $department, $laboratory, $userName, $password, $userTypeId, $undefineUser, $createDate, $otherInstitute);

     // die();

	   $this->load->library('email');
        $config = array(
          'protocol' => PROTOCOL,
          'smtp_host' => SMTP_HOST,
          'smtp_timeout' => '30',
          'smtp_port' => (int) SMTP_PORT,
          'smtp_user' => SMTP_USER,
          'smtp_pass' => SMTP_PASS,
          'mailtype' => 'text',
          'smtp_crypto' => 'tls',
          'smtp_auth' => TRUE,
          'charset' => 'utf-8',
          'newline' => "\r\n",
        );

        $this->email->initialize($config);
        $this->email->from(EMAIL_FROM, FROM_NAME);
        $this->email->to($userName);
        $this->email->subject('Welcome to the National Instrument Database (NID)');
        $message = "Dear $title $lastName,\n\n";
       // $message .= "Congratulations! Your email address has been successfully verified.\n\n";
        $message .= "Welcome to the National Instrument Database (NID)! Now you have access to navigate the NID.\n\n";
        $message .= "If you have any questions or need assistance, please do not hesitate to reach out to our support team\n\n";
        $message .= "Thank you for joining us!\n";
        $message .= "Best regards,\n";
        $message .= "The NID Team\n";
		$message .= "National Science Foundation\n";
		$message .= "47/5, Maitland Place\n";
		$message .= "Colombo 07\n";
		$message .= "Tel: 011 2696771 Ext: 126\n";
		$message .= "Email: nid@nsf.gov.lk\n";		
        $message .= "This is an auto-generated email. Please do not reply to this email.";
        $this->email->message($message);
        if ($this->email->send()) {
         // print_r('Your email was sent, fool.');
        } else {
          show_error($this->email->print_debugger());
        }
      //  die('Your email was sent');
        $this->session->set_flashdata('success', 'Your email has been verified successfully. Please log in.');
        redirect('login');
      } else {
        $data['error'] = 'Invalid verification code';
        $this->load->view('verificateUser', $data);
      }
    } else {
      $this->load->view('verificateUser');
    }
  }




  function get_departments()
  {
    if ($this->input->post('institute_id')) {
      echo $this->Register_Model->get_departments($this->input->post('institute_id'));
    }
  }

  function get_faculties()
  {
    if ($this->input->post('institute_id')) {
      echo $this->Register_Model->get_faculties($this->input->post('institute_id'));
    }
  }

  function get_departmentsByFaculty()
  {
    if ($this->input->post('faculty_id')) {
      echo $this->Register_Model->get_departmentsByFaculty($this->input->post('faculty_id'));
    }
  }


  function get_laboratoriesByInstitute()
  {
    if ($this->input->post('institute_id')) {
      echo $this->Register_Model->get_laboratoriesByInstitute($this->input->post('institute_id'));
    }
  }






  function get_laboratories()
  {
    if ($this->input->post('department_id')) {
      echo $this->Register_Model->get_laboratories($this->input->post('department_id'));
    }
  }
}
