<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Google extends CI_Controller
{

  public function __construct()
  {

    parent::__construct();
    //$this->load->helper('url');

    // Load model
    //$this->load->model('Home_model');
    $this->load->model('Home_model_google');
    //$this->load->model('user_model');

    ////////////////////// NEW PART//////////////////////////////
    //$this->load->model('Home_model', 'google');
    $this->load->model('Home_model_google', 'google');
    $this->load->helper(array('url', 'html', 'form'));
    ////////////////////// NEW PART//////////////////////////////
  }

  public function index()
  {
    $this->load->view('home');
    $data['instrumentCount'] = $this->user_model->instrumentCount();
  }




  public function instrumentList()
  {
    // POST data
    $postData = $this->input->post();

    // get data
    $data = $this->Home_model->getInstrument($postData);

    echo json_encode($data);
  }






  // This is for whole instrument to display in the google map


  function einstrument_google()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model_google->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("einstrument_google/", $count, 100000000);


    $data['instrumentRecords'] = $this->Home_model_google->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Product View';


    // $this->loadViews("einstrument_google", $this->global, $data, NULL);




    ////////////////////// NEW PART//////////////////////////////


    $locationData = $this->google->get_list();
    $locPins = [];
    $locInfo = [];






    foreach ($locationData as $value) {
      $locPins[] = [
        $value->instrument_id,
        $value->inst_latitude,
        $value->inst_longitude
      ];
      $locInfo[] = [
        //  "<div><h5>".$value->instrument_name."</h5><h5>".$value->	institute_id."</h5><p>".$value->contact_person_name."</br>".$value->contact_person_email."</br>".$value->contact_person_phone_number."</br>".$value->contact_person_mobile_number."</p></div>"
        "<div class=\"map-infowindow\"><h5>Instrument Name: " . $value->instrument_name . "</h5></div>"
      ];
    }
    $location['locPins'] = json_encode($locPins);
    $location['locInfo'] = json_encode($locInfo);
    $this->load->view('einstrument_google', $location);

    ////////////////////// NEW PART//////////////////////////////
  }
















  // This is for whole product to display in the google map


  function eproduct_google()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model_google->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_google/", $count, 100000000);


    $data['instrumentRecords'] = $this->Home_model_google->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Product View';


    // $this->loadViews("eproduct_google", $this->global, $data, NULL);




    ////////////////////// NEW PART//////////////////////////////


    $locationData = $this->google->get_list();
    $locPins = [];
    $locInfo = [];





    foreach ($locationData as $value) {
      $locPins[] = [
        $value->instrument_id,
        $value->inst_latitude,
        $value->inst_longitude
      ];
      $locInfo[] = [
        //  "<div><h5>".$value->instrument_type."</h5><h5>".$value->	institute_id."</h5><p>".$value->contact_person_name."</br>".$value->contact_person_email."</br>".$value->contact_person_phone_number."</br>".$value->contact_person_mobile_number."</p></div>"
        "<div class=\"map-infowindow\"><h5>" . $value->instrument_name . "</h5></div>"
      ];
    }
    $location['locPins'] = json_encode($locPins);
    $location['locInfo'] = json_encode($locInfo);
    $this->load->view('eproduct_google', $location);

    ////////////////////// NEW PART//////////////////////////////
  }




  function loadViews($viewName = "", $headerInfo = NULL, $pageInfo = NULL, $footerInfo = NULL)
  {

    $this->load->view('includes/headerE', $headerInfo);
    $this->load->view($viewName, $pageInfo);
    $this->load->view('includes/footerE', $footerInfo);
  }













  /**
   * This function used provide the pagination resources
   * @param {string} $link : This is page link
   * @param {number} $count : This is page count
   * @param {number} $perPage : This is records per page limit
   * @return {mixed} $result : This is array of records and pagination data
   */
  function paginationCompress($link, $count, $perPage = 10, $segment = SEGMENT)
  {
    $this->load->library('pagination');

    $config['base_url'] = base_url() . $link;
    $config['total_rows'] = $count;
    $config['uri_segment'] = $segment;
    $config['per_page'] = $perPage;
    $config['num_links'] = 5;
    $config['full_tag_open'] = '<nav><ul class="pagination">';
    $config['full_tag_close'] = '</ul></nav>';
    $config['first_tag_open'] = '<li class="arrow">';
    $config['first_link'] = 'First';
    $config['first_tag_close'] = '</li>';
    $config['prev_link'] = 'Previous';
    $config['prev_tag_open'] = '<li class="arrow">';
    $config['prev_tag_close'] = '</li>';
    $config['next_link'] = 'Next';
    $config['next_tag_open'] = '<li class="arrow">';
    $config['next_tag_close'] = '</li>';
    $config['cur_tag_open'] = '<li class="active"><a href="#">';
    $config['cur_tag_close'] = '</a></li>';
    $config['num_tag_open'] = '<li>';
    $config['num_tag_close'] = '</li>';
    $config['last_tag_open'] = '<li class="arrow">';
    $config['last_link'] = 'Last';
    $config['last_tag_close'] = '</li>';

    $this->pagination->initialize($config);
    $page = $config['per_page'];
    $segment = $this->uri->segment($segment);

    return array(
      "page" => $page,
      "segment" => $segment
    );
  }
}
