


<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

  /**
   * Index Page for this controller.
   *
   * Maps to the following URL
   *     http://example.com/index.php/welcome
   *  - or -
   *     http://example.com/index.php/welcome/index
   *  - or -
   * Since this controller is set as the default controller in
   * config/routes.php, it's displayed at http://example.com/
   *
   * So any other public methods not prefixed with an underscore will
   * map to /index.php/welcome/<method_name>
   * @see https://codeigniter.com/user_guide/general/urls.html
   */
   
   public function __construct()
    {
        parent::__construct();
        $this->load->model('Feedback_Model');
    }
	
  public function index()
  {
    $this->load->view('contact');
  }
  
  
    /**
    * This function is used to load the add new form
    */
   function addFeedback()
   {

           $this->global['pageTitle'] = 'NIDB : Add Feedback';
           $this->load->view("contact", $this->global, NULL);
   }

   function sendFeedback()
   {
           $this->load->library('form_validation');


           $this->form_validation->set_rules('message','Message','trim|required|max_length[700]');
		   $this->form_validation->set_rules('name','Name','trim|required|max_length[200]');
           $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[200]');
           $this->form_validation->set_rules('phone','Phone Number','numeric|exact_length[10]');

           if($this->form_validation->run() == FALSE)
           {
               $this->addFeedback();
           }
           else
           {
			 $message = $this->input->post('message');
			 $name = $this->input->post('name');
			 $email = $this->security->xss_clean($this->input->post('email'));
			 $phone = $this->security->xss_clean($this->input->post('phone'));
			 $subject = $this->input->post('subject');
		   
		   $config['upload_path']          = './imagesUpload';
                $config['allowed_types']        = 'gif|jpg|png|pdf|doc|docx|xlsx';
                $config['max_size']             = '0';
                //$config['max_width']            = 1024;
                //$config['max_height']           = 768;

                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('imageUpload'))
                {
                    $error = $this->upload->display_errors();
          //$this->session->set_flashdata('error', $error );catalog file Uploaded failed
                }
                else
                {
                        $file_data = $this->upload->data();
                        $file_name =$file_data['file_name'];
            //$this->session->set_flashdata('success', 'catalog file Uploaded successfully');

                }
		   

               //$FeedbackInfo = array('message'=>$message,'u_name'=>$name,'email'=>$email,'phone_number'=>$phone, 'subject'=>$subject,'user_image'=> $file_name,'created_user_id'=>$this->vendorId, 'created_date_time'=>date('Y-m-d H:i:s'));
               $FeedbackInfo = array('message'=>$message,'u_name'=>$name,'email'=>$email,'phone_number'=>$phone, 'subject'=>$subject,'user_image'=> $file_name,'created_date_time'=>date('Y-m-d H:i:s'));
               $result = $this->Feedback_Model->sendFeedback($FeedbackInfo);

               if($result > 0)
               {
                   $this->session->set_flashdata('success', 'Feedback sent successfully');
               }
               else
               {
                   $this->session->set_flashdata('error', 'Failed to send feedback');
               }

               redirect('contact');
           }
       }
  
}