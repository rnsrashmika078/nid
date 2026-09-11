<?php
defined('BASEPATH') OR exit('No direct script access allowed');
Class Feedback extends CI_Controller {

function __construct(){
        parent::__construct();
        $this->load->model('Feedback_Model');
    }

public function index(){


$this->form_validation->set_rules('usertName','User Name','trim|required|max_length[300]');
$this->form_validation->set_rules('phone','Phone Number','required|numeric|exact_length[10]');
if($this->form_validation->run()){


$userName = $this->input->post('userName');
         $address = $this->input->post('address');
         $phone = $this->security->xss_clean($this->input->post('phone'));
               $email = $this->security->xss_clean($this->input->post('email'));
                 $message = $this->input->post('message');
           $subject = $this->input->post('subject');
           $imageUpload5 = $this->input->post('imageUpload5');






$createDate=date('Y-m-d H:i:s');

$this->Register_Model->insert($userName,$address,$phone,$email,$message,$subject);
} else {

  $this->load->view('contact', $data);
}

}


}