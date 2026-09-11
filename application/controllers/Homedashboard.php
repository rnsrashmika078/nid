<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Homedashboard extends CI_Controller {

  public function __construct(){

    parent::__construct();
    //$this->load->helper('url');

    // Load model
     $this->load->model('Home_model');
	 $this->load->model('user_model');
	 $this->load->model('Home_modelp');
   //$this->load->model('user_model');

  ////////////////////// NEW PART//////////////////////////////
	  $this->load->model('Home_model', 'google');
    $this->load->helper(array('url','html','form'));
	////////////////////// NEW PART//////////////////////////////
  }

  public function index()
  {
    $this->load->view('homedashboard');
	
	
	
	
	
	
  }
  

  
  

  







 



    /**
   * This function used provide the pagination resources
   * @param {string} $link : This is page link
   * @param {number} $count : This is page count
   * @param {number} $perPage : This is records per page limit
   * @return {mixed} $result : This is array of records and pagination data
   */
  function paginationCompress($link, $count, $perPage = 10, $segment = SEGMENT) {
    $this->load->library ( 'pagination' );

    $config ['base_url'] = base_url () . $link;
    $config ['total_rows'] = $count;
    $config ['uri_segment'] = $segment;
    $config ['per_page'] = $perPage;
    $config ['num_links'] = 5;
    $config ['full_tag_open'] = '<nav><ul class="pagination">';
    $config ['full_tag_close'] = '</ul></nav>';
    $config ['first_tag_open'] = '<li class="arrow">';
    $config ['first_link'] = 'First';
    $config ['first_tag_close'] = '</li>';
    $config ['prev_link'] = 'Previous';
    $config ['prev_tag_open'] = '<li class="arrow">';
    $config ['prev_tag_close'] = '</li>';
    $config ['next_link'] = 'Next';
    $config ['next_tag_open'] = '<li class="arrow">';
    $config ['next_tag_close'] = '</li>';
    $config ['cur_tag_open'] = '<li class="active"><a href="#">';
    $config ['cur_tag_close'] = '</a></li>';
    $config ['num_tag_open'] = '<li>';
    $config ['num_tag_close'] = '</li>';
    $config ['last_tag_open'] = '<li class="arrow">';
    $config ['last_link'] = 'Last';
    $config ['last_tag_close'] = '</li>';

    $this->pagination->initialize ( $config );
    $page = $config ['per_page'];
    $segment = $this->uri->segment ( $segment );

    return array (
        "page" => $page,
        "segment" => $segment
    );
  }

}