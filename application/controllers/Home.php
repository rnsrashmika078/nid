<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Home extends CI_Controller
{

  public function __construct()
  {

    parent::__construct();
    //$this->load->helper('url');

    // Load model
    $this->load->model('Home_model');
    $this->load->model('user_model');
    $this->load->model('Home_modelp');
    //$this->load->model('user_model');

    ////////////////////// NEW PART//////////////////////////////
    $this->load->model('Home_model', 'google');
    $this->load->helper(array('url', 'html', 'form'));
    ////////////////////// NEW PART//////////////////////////////
  }

  public function index()
  {
    $this->load->view('home');
    $data['instituteCount'] = $this->user_model->instituteCount();
  }



  /*
  function fetch()
   {
    $this->load->model('autocomplete_model');
    echo $this->autocomplete_model->fetch_data($this->uri->segment(3));
   }

    public function ajaxPro()
    {
        $query = $this->input->get('query');
        $this->db->like('instrument_name', $query);


        $data = $this->db->get("instrument")->result();


        echo json_encode( $data);
    }
   */

  public function instrumentList()
  {
    // POST data
    $postData = $this->input->post();

    // get data
    $data = $this->Home_model->getInstrument($postData);

    echo json_encode($data);
  }

  /**
   * This function is used to open edit Instrument view
   */
  function instrumentView($instrumentId = NULL)
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("instrumentView/", $count, 12);
    if ($instrumentId == null) {
      redirect('instrumentView');
    }

    $data['instrumentInfo'] = $this->Home_model->getInstrumentInfo($instrumentId);
    $data['instrumentRecords'] = $this->Home_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);
    //$data['institutes'] = $this->Home_model->get_institute();
    //  $data['instrument_type'] = $this->user_model->getInstrumentType();
    //$data['instrument_condition'] = $this->user_model->getInstrumentCondition();
    //$data['faculties'] = $this->user_model->getFacultiesByInstrument($instrumentId);
    //$data['departments'] = $this->user_model->getDepartmentsByInstrument($instrumentId);
    //$data['laboratories'] = $this->user_model->getLaboratoriesByInstrument($instrumentId);
    //$this->global['pageTitle'] = 'BSEU : View Instrument';

    $this->load->view("instrumentView", $data);
  }

  /**
   * This function is used to open edit Instrument view


  function viewInstrument()
    {
        $this->load->library('form_validation');
        //$this->form_validation->set_rules('autoInstrument','Instrument Name','required');
        $instrumentId = $this->input->post('instrumentId');
    //$instrumentId = 1;
    if($this->form_validation->run() == FALSE)
        {
            $this->instrumentView($instrumentId);
        }


    //$data['instrumentInfo'] = $this->Home_model->getInstrumentInfo($instrumentId);

        //$this->global['pageTitle'] = 'NIDB : Edit Instrument';

        //$this->load->view("instrumentView", $data);

   }
   */
  /**
   * This function is used to open edit Instrument view
   */

  function users_admin789()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->userListingCount($searchText);

    $returns = $this->paginationCompress("users_admin789/", $count, 100000000);



    $data['userRecords'] = $this->Home_model->userListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("users_admin789", $this->global, $data, NULL);
  }


  function einstrumentView()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("einstrumentView/", $count, 100000000, 2);


    //  $data['instrumentRecords'] = $this->user_model->instrumentListing();
    //$data['instrumentRecords'] = $this->user_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);
    $data['instrumentRecords'] = $this->Home_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);
    //$data['instrumentRecordsLimit20'] = $this->Home_model->instrumentListingLimit20($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("einstrumentView", $this->global, $data, NULL);
    //$this->loadViews("einstrumentView",$data);
  }

  function einstrumentViewAjax()
  {
    $draw = $this->input->post('draw') ? $this->input->post('draw') : 0;
    $start = $this->input->post('start') ? $this->input->post('start') : 0;
    $length = $this->input->post('length') ? $this->input->post('length') : 25;

    $searchArr = $this->input->post('search');
    $searchText = '';
    if (!empty($searchArr) && isset($searchArr['value'])) {
      $searchText = $this->security->xss_clean(trim($searchArr['value']));
    }

    if ($length < 0) {
      $length = 100000000;
    }

    $recordsTotal = $this->Home_model->instrumentListingCount('');
    $recordsFiltered = $this->Home_model->instrumentListingCount($searchText);

    $records = $this->Home_model->instrumentListing($searchText, $length, $start);

    $data = array();
    foreach ($records as $record) {
      if (!empty($record->image_upload1)) {
        $image = '<img src="' . base_url() . '/catalogUploads/' . rawurlencode($record->image_upload1) . '" width="150px" height="120px" />';
      } else {
        $image = '<img src="' . base_url() . 'layout/img/lab.png" width="150px" height="120px" />';
      }

      $detail = '<a href="' . base_url() . 'instrumentView/' . $record->instrument_id . '" target="_blank">' . $record->instrument_name . '</a></br>';
      if (!empty($record->model)) {
        $detail .= $record->model . '</br>';
      }
      $detail .= $record->name . '</br>';
      $detail .= '<p><a href="JavaScript:newPopup(\'' . base_url() . 'einstrument_googleview/' . $record->instrument_id . '\');">View Location & Contact Information</a></p>';

      $data[] = array(
        'image' => $image,
        'detail' => $detail
      );
    }

    $json_data = array(
      'draw' => intval($draw),
      'recordsTotal' => intval($recordsTotal),
      'recordsFiltered' => intval($recordsFiltered),
      'data' => $data
    );

    $out = json_encode($json_data);
    if ($out === false) {
      $out = json_encode(array(
        'draw' => intval($draw),
        'recordsTotal' => 0,
        'recordsFiltered' => 0,
        'data' => array()
      ));
    }

    while (ob_get_level() > 0) {
      ob_end_clean();
    }

    header('Content-Type: application/json');
    echo $out;
    exit;
  }

function etechnicianView()
    {
      $searchText = $this->security->xss_clean($this->input->post('searchText'));
      $data['searchText'] = $searchText;
      $data['technicianRecords'] = $this->Home_model->technicianListing(10000000000, $searchText);

      $this->global['pageTitle'] = 'NIDB : Technician View';

      $this->loadViews("etechnicianView", $this->global, $data, NULL);
    }

  function etechnician_googleview($technicianId = NULL)
  {
    if ($technicianId == null) {
      redirect('etechnicianView');
    }

    $data['technicianInfo'] = $this->Home_model->getTechnicianInfo($technicianId);

    $this->load->view("etechnician_googleview", $data);
  }





  function eproduct_instituteView()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }







  /**
   * This function is used to open edit Instrument view
   */
  function eproduct_institute_googleview($instrumentId = NULL)
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_institute_googleview/", $count, 100000000);
    if ($instrumentId == null) {
      redirect('eproduct_institute_googleview');
    }

    $data['instrumentInfo'] = $this->Home_modelp->getInstrumentInfo($instrumentId);
    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->load->view("eproduct_institute_googleview", $data);
  }




  /**
   * This function is used to open edit Instrument view
   */
  function einstrument_googleview($instrumentId = NULL)
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("einstrument_googleview/", $count, 100000000);
    if ($instrumentId == null) {
      redirect('einstrument_googleview');
    }

    $data['instrumentInfo'] = $this->Home_model->getInstrumentInfo($instrumentId);
    $data['instrumentRecords'] = $this->Home_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);
    //$data['institutes'] = $this->Home_model->get_institute();
    //  $data['instrument_type'] = $this->user_model->getInstrumentType();
    //$data['instrument_condition'] = $this->user_model->getInstrumentCondition();
    //$data['faculties'] = $this->user_model->getFacultiesByInstrument($instrumentId);
    //$data['departments'] = $this->user_model->getDepartmentsByInstrument($instrumentId);
    //$data['laboratories'] = $this->user_model->getLaboratoriesByInstrument($instrumentId);
    //$this->global['pageTitle'] = 'BSEU : View Instrument';

    $this->load->view("einstrument_googleview", $data);
  }










  function home()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("home/", $count, 12);

    $data['instituteCount'] = $this->user_model->instituteCount();
    $data['facultyCount'] = $this->user_model->facultyCount();
    $data['departmentCount'] = $this->user_model->departmentCount();
    $data['laboratoryCount'] = $this->user_model->laboratoryCount();
    $data['instrumentCount'] = $this->user_model->instrumentCount();
    $data['productCount'] = $this->user_model->productCount();
    $data['usersCount'] = $this->user_model->usersCount();
    $data['techniciansCount'] = $this->user_model->techniciansCount();
    $data['technicianRecords'] = $this->Home_model->technicianListing();




    $data['instrumentRecords'] = $this->Home_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';








    $count = $this->Home_model->homenewsListingCount($searchText);



    $returns = $this->paginationCompress("home/", $count, 100000000);



    $data['homenewsRecords'] = $this->Home_model->homenewsListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'SLAASMDB : Instrument View';


    $this->load->view('home', $data);
  }















  function homedashboard()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("homedashboard/", $count, 100000000);

    $data['instituteCount'] = $this->user_model->instituteCount();
    $data['facultyCount'] = $this->user_model->facultyCount();
    $data['departmentCount'] = $this->user_model->departmentCount();
    $data['laboratoryCount'] = $this->user_model->laboratoryCount();
    $data['instrumentCount'] = $this->user_model->instrumentCount();
    $data['productCount'] = $this->user_model->productCount();
    $data['usersCount'] = $this->user_model->usersCount();



    //  $data['institutename1'] = $this->user_model->institutename1();
    //  $data['institutename2'] = $this->user_model->institutename2();
    //	 $data['institutename3'] = $this->user_model->institutename3();




    ///////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////
    $data['facultyCount1'] = $this->user_model->facultyCount1();
   
    $data['facultyCount3'] = $this->user_model->facultyCount3();
    $data['facultyCount4'] = $this->user_model->facultyCount4();
   
    $data['facultyCount6'] = $this->user_model->facultyCount6();
    $data['facultyCount7'] = $this->user_model->facultyCount7();
  
    $data['facultyCount9'] = $this->user_model->facultyCount9();
  

    $data['facultyCount12'] = $this->user_model->facultyCount12();
 
   
    $data['facultyCount17'] = $this->user_model->facultyCount17();
  

    
  
    $data['facultyCount24'] = $this->user_model->facultyCount24();


    $data['facultyCount25'] = $this->user_model->facultyCount25();
    $data['facultyCount26'] = $this->user_model->facultyCount26();
    $data['facultyCount27'] = $this->user_model->facultyCount27();



  
    $data['facultyCount30'] = $this->user_model->facultyCount30();

 
    $data['facultyCount33'] = $this->user_model->facultyCount33();


    $data['facultyCount34'] = $this->user_model->facultyCount34();
    $data['facultyCount35'] = $this->user_model->facultyCount35();
    $data['facultyCount36'] = $this->user_model->facultyCount36();


 
    $data['facultyCount40'] = $this->user_model->facultyCount40();


    $data['facultyCount42'] = $this->user_model->facultyCount42();


    $data['facultyCount45'] = $this->user_model->facultyCount45();

    $data['facultyCount46'] = $this->user_model->facultyCount46();
    $data['facultyCount47'] = $this->user_model->facultyCount47();
    $data['facultyCount48'] = $this->user_model->facultyCount48();  
      $data['facultyCount70'] = $this->user_model->facultyCount70(); 

    /////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////






    ///////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////
    $data['departmentCount1'] = $this->user_model->departmentCount1();
    $data['departmentCount2'] = $this->user_model->departmentCount2();
    $data['departmentCount3'] = $this->user_model->departmentCount3();
    $data['departmentCount4'] = $this->user_model->departmentCount4();
    $data['departmentCount5'] = $this->user_model->departmentCount5();
    $data['departmentCount6'] = $this->user_model->departmentCount6();
    $data['departmentCount7'] = $this->user_model->departmentCount7();
    $data['departmentCount8'] = $this->user_model->departmentCount8();
    $data['departmentCount9'] = $this->user_model->departmentCount9();
    $data['departmentCount11'] = $this->user_model->departmentCount11();

    $data['departmentCount12'] = $this->user_model->departmentCount12();
    $data['departmentCount13'] = $this->user_model->departmentCount13();
    $data['departmentCount15'] = $this->user_model->departmentCount15();
    $data['departmentCount16'] = $this->user_model->departmentCount16();

    $data['departmentCount17'] = $this->user_model->departmentCount17();
    $data['departmentCount18'] = $this->user_model->departmentCount18();

    $data['departmentCount20'] = $this->user_model->departmentCount20();
    $data['departmentCount22'] = $this->user_model->departmentCount22();
    $data['departmentCount23'] = $this->user_model->departmentCount23();
    $data['departmentCount24'] = $this->user_model->departmentCount24();


    $data['departmentCount25'] = $this->user_model->departmentCount25();
    $data['departmentCount26'] = $this->user_model->departmentCount26();
    $data['departmentCount27'] = $this->user_model->departmentCount27();


    $data['departmentCount28'] = $this->user_model->departmentCount28();
    $data['departmentCount29'] = $this->user_model->departmentCount29();
    $data['departmentCount30'] = $this->user_model->departmentCount30();
    $data['departmentCount31'] = $this->user_model->departmentCount31();
    $data['departmentCount32'] = $this->user_model->departmentCount32();
    $data['departmentCount33'] = $this->user_model->departmentCount33();


    $data['departmentCount34'] = $this->user_model->departmentCount34();
    $data['departmentCount35'] = $this->user_model->departmentCount35();
    $data['departmentCount36'] = $this->user_model->departmentCount36();


    $data['departmentCount38'] = $this->user_model->departmentCount38();
    $data['departmentCount39'] = $this->user_model->departmentCount39();
    $data['departmentCount40'] = $this->user_model->departmentCount40();


    $data['departmentCount42'] = $this->user_model->departmentCount42();
    $data['departmentCount43'] = $this->user_model->departmentCount43();

    $data['departmentCount45'] = $this->user_model->departmentCount45();

    $data['departmentCount46'] = $this->user_model->departmentCount46();
    $data['departmentCount47'] = $this->user_model->departmentCount47();
    $data['departmentCount48'] = $this->user_model->departmentCount48();
    $data['departmentCount49'] = $this->user_model->departmentCount49();
    $data['departmentCount50'] = $this->user_model->departmentCount50();

    $data['departmentCount51'] = $this->user_model->departmentCount51();

    $data['departmentCount52'] = $this->user_model->departmentCount52();
    $data['departmentCount53'] = $this->user_model->departmentCount53();
    $data['departmentCount54'] = $this->user_model->departmentCount54();

    $data['departmentCount55'] = $this->user_model->departmentCount55();
    $data['departmentCount56'] = $this->user_model->departmentCount56();
    $data['departmentCount57'] = $this->user_model->departmentCount57();
    $data['departmentCount58'] = $this->user_model->departmentCount58();
    $data['departmentCount59'] = $this->user_model->departmentCount59();
    $data['departmentCount60'] = $this->user_model->departmentCount60();
    $data['departmentCount61'] = $this->user_model->departmentCount61();
    $data['departmentCount62'] = $this->user_model->departmentCount62();
    $data['departmentCount63'] = $this->user_model->departmentCount63();

    $data['departmentCount64'] = $this->user_model->departmentCount64();
    $data['departmentCount65'] = $this->user_model->departmentCount65();
    $data['departmentCount66'] = $this->user_model->departmentCount66();
    $data['departmentCount67'] = $this->user_model->departmentCount67();
    $data['departmentCount68'] = $this->user_model->departmentCount68();
    $data['departmentCount69'] = $this->user_model->departmentCount69();
    $data['departmentCount70'] = $this->user_model->departmentCount70();
    $data['departmentCount71'] = $this->user_model->departmentCount71();
    $data['departmentCount72'] = $this->user_model->departmentCount72();
$data['departmentCount73'] = $this->user_model->departmentCount73();
$data['departmentCount74'] = $this->user_model->departmentCount74();
$data['departmentCount75'] = $this->user_model->departmentCount75();
$data['departmentCount76'] = $this->user_model->departmentCount76();
$data['departmentCount77'] = $this->user_model->departmentCount77();
$data['departmentCount78'] = $this->user_model->departmentCount78();
$data['departmentCount79'] = $this->user_model->departmentCount79();

$data['departmentCount80'] = $this->user_model->departmentCount80();
$data['departmentCount81'] = $this->user_model->departmentCount81();
$data['departmentCount82'] = $this->user_model->departmentCount82();
$data['departmentCount83'] = $this->user_model->departmentCount83();
$data['departmentCount84'] = $this->user_model->departmentCount84();


    /////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////
    $data['laboratoryCount1'] = $this->user_model->laboratoryCount1();
    $data['laboratoryCount2'] = $this->user_model->laboratoryCount2();
    $data['laboratoryCount3'] = $this->user_model->laboratoryCount3();
    $data['laboratoryCount4'] = $this->user_model->laboratoryCount4();
    $data['laboratoryCount5'] = $this->user_model->laboratoryCount5();
    $data['laboratoryCount6'] = $this->user_model->laboratoryCount6();
    $data['laboratoryCount7'] = $this->user_model->laboratoryCount7();
    $data['laboratoryCount8'] = $this->user_model->laboratoryCount8();
    $data['laboratoryCount9'] = $this->user_model->laboratoryCount9();
    $data['laboratoryCount11'] = $this->user_model->laboratoryCount11();

    $data['laboratoryCount12'] = $this->user_model->laboratoryCount12();
    $data['laboratoryCount13'] = $this->user_model->laboratoryCount13();
    $data['laboratoryCount15'] = $this->user_model->laboratoryCount15();
    $data['laboratoryCount16'] = $this->user_model->laboratoryCount16();

    $data['laboratoryCount17'] = $this->user_model->laboratoryCount17();
    $data['laboratoryCount18'] = $this->user_model->laboratoryCount18();

    $data['laboratoryCount20'] = $this->user_model->laboratoryCount20();
    $data['laboratoryCount22'] = $this->user_model->laboratoryCount22();
    $data['laboratoryCount23'] = $this->user_model->laboratoryCount23();
    $data['laboratoryCount24'] = $this->user_model->laboratoryCount24();


    $data['laboratoryCount25'] = $this->user_model->laboratoryCount25();
    $data['laboratoryCount26'] = $this->user_model->laboratoryCount26();
    $data['laboratoryCount27'] = $this->user_model->laboratoryCount27();


    $data['laboratoryCount28'] = $this->user_model->laboratoryCount28();
    $data['laboratoryCount29'] = $this->user_model->laboratoryCount29();
    $data['laboratoryCount30'] = $this->user_model->laboratoryCount30();
    $data['laboratoryCount31'] = $this->user_model->laboratoryCount31();
    $data['laboratoryCount32'] = $this->user_model->laboratoryCount32();
    $data['laboratoryCount33'] = $this->user_model->laboratoryCount33();


    $data['laboratoryCount34'] = $this->user_model->laboratoryCount34();
    $data['laboratoryCount35'] = $this->user_model->laboratoryCount35();
    $data['laboratoryCount36'] = $this->user_model->laboratoryCount36();


    $data['laboratoryCount38'] = $this->user_model->laboratoryCount38();
    $data['laboratoryCount39'] = $this->user_model->laboratoryCount39();
    $data['laboratoryCount40'] = $this->user_model->laboratoryCount40();


    $data['laboratoryCount42'] = $this->user_model->laboratoryCount42();
    $data['laboratoryCount43'] = $this->user_model->laboratoryCount43();

    $data['laboratoryCount45'] = $this->user_model->laboratoryCount45();

    $data['laboratoryCount46'] = $this->user_model->laboratoryCount46();
    $data['laboratoryCount47'] = $this->user_model->laboratoryCount47();
    $data['laboratoryCount48'] = $this->user_model->laboratoryCount48();
    $data['laboratoryCount49'] = $this->user_model->laboratoryCount49();
    $data['laboratoryCount50'] = $this->user_model->laboratoryCount50();

    $data['laboratoryCount51'] = $this->user_model->laboratoryCount51();

    $data['laboratoryCount52'] = $this->user_model->laboratoryCount52();
    $data['laboratoryCount53'] = $this->user_model->laboratoryCount53();
    $data['laboratoryCount54'] = $this->user_model->laboratoryCount54();

    $data['laboratoryCount55'] = $this->user_model->laboratoryCount55();
    $data['laboratoryCount56'] = $this->user_model->laboratoryCount56();
    $data['laboratoryCount57'] = $this->user_model->laboratoryCount57();
    $data['laboratoryCount58'] = $this->user_model->laboratoryCount58();
    $data['laboratoryCount59'] = $this->user_model->laboratoryCount59();
    $data['laboratoryCount60'] = $this->user_model->laboratoryCount60();
    $data['laboratoryCount61'] = $this->user_model->laboratoryCount61();
    $data['laboratoryCount62'] = $this->user_model->laboratoryCount62();
    $data['laboratoryCount63'] = $this->user_model->laboratoryCount63();

    $data['laboratoryCount64'] = $this->user_model->laboratoryCount64();
    $data['laboratoryCount65'] = $this->user_model->laboratoryCount65();
    $data['laboratoryCount66'] = $this->user_model->laboratoryCount66();
    $data['laboratoryCount67'] = $this->user_model->laboratoryCount67();
    $data['laboratoryCount68'] = $this->user_model->laboratoryCount68();
    $data['laboratoryCount69'] = $this->user_model->laboratoryCount69();
    $data['laboratoryCount70'] = $this->user_model->laboratoryCount70();
    $data['laboratoryCount71'] = $this->user_model->laboratoryCount71();
    $data['laboratoryCount72'] = $this->user_model->laboratoryCount72();

    
        $data['laboratoryCount73'] = $this->user_model->laboratoryCount73();
          $data['laboratoryCount74'] = $this->user_model->laboratoryCount4();
            $data['laboratoryCount75'] = $this->user_model->laboratoryCount75();
              $data['laboratoryCount76'] = $this->user_model->laboratoryCount76();
                $data['laboratoryCount77'] = $this->user_model->laboratoryCount77();
                  $data['laboratoryCount78'] = $this->user_model->laboratoryCount78();
                    $data['laboratoryCount79'] = $this->user_model->laboratoryCount79();

                     $data['laboratoryCount80'] = $this->user_model->laboratoryCount80();
                      $data['laboratoryCount81'] = $this->user_model->laboratoryCount81();
                       $data['laboratoryCount82'] = $this->user_model->laboratoryCount82();
                        $data['laboratoryCount83'] = $this->user_model->laboratoryCount83();
                         $data['laboratoryCount84'] = $this->user_model->laboratoryCount84();
                    

    /////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////
    $data['usersCount1'] = $this->user_model->usersCount1();
    $data['usersCount2'] = $this->user_model->usersCount2();
    $data['usersCount3'] = $this->user_model->usersCount3();
    $data['usersCount4'] = $this->user_model->usersCount4();
    $data['usersCount5'] = $this->user_model->usersCount5();
    $data['usersCount6'] = $this->user_model->usersCount6();
    $data['usersCount7'] = $this->user_model->usersCount7();
    $data['usersCount8'] = $this->user_model->usersCount8();
    $data['usersCount9'] = $this->user_model->usersCount9();
    $data['usersCount11'] = $this->user_model->usersCount11();

    $data['usersCount12'] = $this->user_model->usersCount12();
    $data['usersCount13'] = $this->user_model->usersCount13();
    $data['usersCount15'] = $this->user_model->usersCount15();
    $data['usersCount16'] = $this->user_model->usersCount16();

    $data['usersCount17'] = $this->user_model->usersCount17();
    $data['usersCount18'] = $this->user_model->usersCount18();

    $data['usersCount20'] = $this->user_model->usersCount20();
    $data['usersCount22'] = $this->user_model->usersCount22();
    $data['usersCount23'] = $this->user_model->usersCount23();
    $data['usersCount24'] = $this->user_model->usersCount24();


    $data['usersCount25'] = $this->user_model->usersCount25();
    $data['usersCount26'] = $this->user_model->usersCount26();
    $data['usersCount27'] = $this->user_model->usersCount27();


    $data['usersCount28'] = $this->user_model->usersCount28();
    $data['usersCount29'] = $this->user_model->usersCount29();
    $data['usersCount30'] = $this->user_model->usersCount30();
    $data['usersCount31'] = $this->user_model->usersCount31();
    $data['usersCount32'] = $this->user_model->usersCount32();
    $data['usersCount33'] = $this->user_model->usersCount33();


    $data['usersCount34'] = $this->user_model->usersCount34();
    $data['usersCount35'] = $this->user_model->usersCount35();
    $data['usersCount36'] = $this->user_model->usersCount36();


    $data['usersCount38'] = $this->user_model->usersCount38();
    $data['usersCount39'] = $this->user_model->usersCount39();
    $data['usersCount40'] = $this->user_model->usersCount40();


    $data['usersCount42'] = $this->user_model->usersCount42();
    $data['usersCount43'] = $this->user_model->usersCount43();

    $data['usersCount45'] = $this->user_model->usersCount45();

    $data['usersCount46'] = $this->user_model->usersCount46();
    $data['usersCount47'] = $this->user_model->usersCount47();
    $data['usersCount48'] = $this->user_model->usersCount48();
    $data['usersCount49'] = $this->user_model->usersCount49();
    $data['usersCount50'] = $this->user_model->usersCount50();

    $data['usersCount51'] = $this->user_model->usersCount51();

    $data['usersCount52'] = $this->user_model->usersCount52();
    $data['usersCount53'] = $this->user_model->usersCount53();
    $data['usersCount54'] = $this->user_model->usersCount54();

    $data['usersCount55'] = $this->user_model->usersCount55();
    $data['usersCount56'] = $this->user_model->usersCount56();
    $data['usersCount57'] = $this->user_model->usersCount57();
    $data['usersCount58'] = $this->user_model->usersCount58();
    $data['usersCount59'] = $this->user_model->usersCount59();
    $data['usersCount60'] = $this->user_model->usersCount60();
    $data['usersCount61'] = $this->user_model->usersCount61();
    $data['usersCount62'] = $this->user_model->usersCount62();
    $data['usersCount63'] = $this->user_model->usersCount63();


    $data['usersCount64'] = $this->user_model->usersCount64();
    $data['usersCount65'] = $this->user_model->usersCount65();
    $data['usersCount66'] = $this->user_model->usersCount66();
    $data['usersCount67'] = $this->user_model->usersCount67();
    $data['usersCount68'] = $this->user_model->usersCount68();
    $data['usersCount69'] = $this->user_model->usersCount69();
    $data['usersCount70'] = $this->user_model->usersCount70();
    $data['usersCount71'] = $this->user_model->usersCount71();
    $data['usersCount72'] = $this->user_model->usersCount72();

     $data['usersCount73'] = $this->user_model->usersCount73();
      $data['usersCount74'] = $this->user_model->usersCount74();
       $data['usersCount75'] = $this->user_model->usersCount75();
        $data['usersCount76'] = $this->user_model->usersCount76();
         $data['usersCount77'] = $this->user_model->usersCount77();
          $data['usersCount78'] = $this->user_model->usersCount78();
           $data['usersCount79'] = $this->user_model->usersCount79();
             $data['usersCount80'] = $this->user_model->usersCount80();
               $data['usersCount81'] = $this->user_model->usersCount81();
                 $data['usersCount82'] = $this->user_model->usersCount82();
                   $data['usersCount83'] = $this->user_model->usersCount83();
                     $data['usersCount84'] = $this->user_model->usersCount84();
           

    /////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////
    $data['productCount1'] = $this->user_model->productCount1();
    $data['productCount2'] = $this->user_model->productCount2();
    $data['productCount3'] = $this->user_model->productCount3();
    $data['productCount4'] = $this->user_model->productCount4();
    $data['productCount5'] = $this->user_model->productCount5();
    $data['productCount6'] = $this->user_model->productCount6();
    $data['productCount7'] = $this->user_model->productCount7();
    $data['productCount8'] = $this->user_model->productCount8();
    $data['productCount9'] = $this->user_model->productCount9();
    $data['productCount11'] = $this->user_model->productCount11();

    $data['productCount12'] = $this->user_model->productCount12();
    $data['productCount13'] = $this->user_model->productCount13();
    $data['productCount15'] = $this->user_model->productCount15();
    $data['productCount16'] = $this->user_model->productCount16();

    $data['productCount17'] = $this->user_model->productCount17();
    $data['productCount18'] = $this->user_model->productCount18();

    $data['productCount20'] = $this->user_model->productCount20();
    $data['productCount22'] = $this->user_model->productCount22();
    $data['productCount23'] = $this->user_model->productCount23();
    $data['productCount24'] = $this->user_model->productCount24();


    $data['productCount25'] = $this->user_model->productCount25();
    $data['productCount26'] = $this->user_model->productCount26();
    $data['productCount27'] = $this->user_model->productCount27();


    $data['productCount28'] = $this->user_model->productCount28();
    $data['productCount29'] = $this->user_model->productCount29();
    $data['productCount30'] = $this->user_model->productCount30();
    $data['productCount31'] = $this->user_model->productCount31();
    $data['productCount32'] = $this->user_model->productCount32();
    $data['productCount33'] = $this->user_model->productCount33();


    $data['productCount34'] = $this->user_model->productCount34();
    $data['productCount35'] = $this->user_model->productCount35();
    $data['productCount36'] = $this->user_model->productCount36();


    $data['productCount38'] = $this->user_model->productCount38();
    $data['productCount39'] = $this->user_model->productCount39();
    $data['productCount40'] = $this->user_model->productCount40();


    $data['productCount42'] = $this->user_model->productCount42();
    $data['productCount43'] = $this->user_model->productCount43();

    $data['productCount45'] = $this->user_model->productCount45();

    $data['productCount46'] = $this->user_model->productCount46();
    $data['productCount47'] = $this->user_model->productCount47();
    $data['productCount48'] = $this->user_model->productCount48();
    $data['productCount49'] = $this->user_model->productCount49();
    $data['productCount50'] = $this->user_model->productCount50();

    $data['productCount51'] = $this->user_model->productCount51();

    $data['productCount52'] = $this->user_model->productCount52();
    $data['productCount53'] = $this->user_model->productCount53();
    $data['productCount54'] = $this->user_model->productCount54();

    $data['productCount55'] = $this->user_model->productCount55();
    $data['productCount56'] = $this->user_model->productCount56();
    $data['productCount57'] = $this->user_model->productCount57();
    $data['productCount58'] = $this->user_model->productCount58();
    $data['productCount59'] = $this->user_model->productCount59();
    $data['productCount60'] = $this->user_model->productCount60();
    $data['productCount61'] = $this->user_model->productCount61();
    $data['productCount62'] = $this->user_model->productCount62();
    $data['productCount63'] = $this->user_model->productCount63();


    $data['productCount64'] = $this->user_model->productCount64();
    $data['productCount65'] = $this->user_model->productCount65();
    $data['productCount66'] = $this->user_model->productCount66();
    $data['productCount67'] = $this->user_model->productCount67();
    $data['productCount68'] = $this->user_model->productCount68();
    $data['productCount69'] = $this->user_model->productCount69();
    $data['productCount70'] = $this->user_model->productCount70();
    $data['productCount71'] = $this->user_model->productCount71();
    $data['productCount72'] = $this->user_model->productCount72();

      $data['productCount73'] = $this->user_model->productCount73();
        $data['productCount74'] = $this->user_model->productCount74();
          $data['productCount75'] = $this->user_model->productCount75();
            $data['productCount76'] = $this->user_model->productCount76();
              $data['productCount77'] = $this->user_model->productCount77();
                $data['productCount78'] = $this->user_model->productCount78();
                  $data['productCount79'] = $this->user_model->productCount79();
                  $data['productCount80'] = $this->user_model->productCount80();
                  $data['productCount81'] = $this->user_model->productCount81();
                  $data['productCount82'] = $this->user_model->productCount82();
                  $data['productCount83'] = $this->user_model->productCount83();
                  $data['productCount84'] = $this->user_model->productCount84();
                   
    /////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////



    $data['instrumentCount1'] = $this->user_model->instrumentCount1();
    $data['instrumentCount2'] = $this->user_model->instrumentCount2();
    $data['instrumentCount3'] = $this->user_model->instrumentCount3();
    $data['instrumentCount4'] = $this->user_model->instrumentCount4();
    $data['instrumentCount5'] = $this->user_model->instrumentCount5();
    $data['instrumentCount6'] = $this->user_model->instrumentCount6();
    $data['instrumentCount7'] = $this->user_model->instrumentCount7();
    $data['instrumentCount8'] = $this->user_model->instrumentCount8();
    $data['instrumentCount9'] = $this->user_model->instrumentCount9();
    $data['instrumentCount11'] = $this->user_model->instrumentCount11();

    $data['instrumentCount12'] = $this->user_model->instrumentCount12();
    $data['instrumentCount13'] = $this->user_model->instrumentCount13();
    $data['instrumentCount15'] = $this->user_model->instrumentCount15();
    $data['instrumentCount16'] = $this->user_model->instrumentCount16();

    $data['instrumentCount17'] = $this->user_model->instrumentCount17();
    $data['instrumentCount18'] = $this->user_model->instrumentCount18();

    $data['instrumentCount20'] = $this->user_model->instrumentCount20();
    $data['instrumentCount22'] = $this->user_model->instrumentCount22();
    $data['instrumentCount23'] = $this->user_model->instrumentCount23();
    $data['instrumentCount24'] = $this->user_model->instrumentCount24();


    $data['instrumentCount25'] = $this->user_model->instrumentCount25();
    $data['instrumentCount26'] = $this->user_model->instrumentCount26();
    $data['instrumentCount27'] = $this->user_model->instrumentCount27();


    $data['instrumentCount28'] = $this->user_model->instrumentCount28();
    $data['instrumentCount29'] = $this->user_model->instrumentCount29();
    $data['instrumentCount30'] = $this->user_model->instrumentCount30();
    $data['instrumentCount31'] = $this->user_model->instrumentCount31();
    $data['instrumentCount32'] = $this->user_model->instrumentCount32();
    $data['instrumentCount33'] = $this->user_model->instrumentCount33();


    $data['instrumentCount34'] = $this->user_model->instrumentCount34();
    $data['instrumentCount35'] = $this->user_model->instrumentCount35();
    $data['instrumentCount36'] = $this->user_model->instrumentCount36();


    $data['instrumentCount38'] = $this->user_model->instrumentCount38();
    $data['instrumentCount39'] = $this->user_model->instrumentCount39();
    $data['instrumentCount40'] = $this->user_model->instrumentCount40();


    $data['instrumentCount42'] = $this->user_model->instrumentCount42();
    $data['instrumentCount43'] = $this->user_model->instrumentCount43();

    $data['instrumentCount45'] = $this->user_model->instrumentCount45();

    $data['instrumentCount46'] = $this->user_model->instrumentCount46();
    $data['instrumentCount47'] = $this->user_model->instrumentCount47();
    $data['instrumentCount48'] = $this->user_model->instrumentCount48();
    $data['instrumentCount49'] = $this->user_model->instrumentCount49();
    $data['instrumentCount50'] = $this->user_model->instrumentCount50();

    $data['instrumentCount51'] = $this->user_model->instrumentCount51();

    $data['instrumentCount52'] = $this->user_model->instrumentCount52();
    $data['instrumentCount53'] = $this->user_model->instrumentCount53();
    $data['instrumentCount54'] = $this->user_model->instrumentCount54();

    $data['instrumentCount55'] = $this->user_model->instrumentCount55();

    $data['instrumentCount56'] = $this->user_model->instrumentCount56();
    $data['instrumentCount57'] = $this->user_model->instrumentCount57();
    $data['instrumentCount58'] = $this->user_model->instrumentCount58();
    $data['instrumentCount59'] = $this->user_model->instrumentCount59();
    $data['instrumentCount60'] = $this->user_model->instrumentCount60();
    $data['instrumentCount61'] = $this->user_model->instrumentCount61();
    $data['instrumentCount62'] = $this->user_model->instrumentCount62();
    $data['instrumentCount63'] = $this->user_model->instrumentCount63();

    $data['instrumentCount64'] = $this->user_model->instrumentCount64();
    $data['instrumentCount65'] = $this->user_model->instrumentCount65();
    $data['instrumentCount66'] = $this->user_model->instrumentCount66();
    $data['instrumentCount67'] = $this->user_model->instrumentCount67();
    $data['instrumentCount68'] = $this->user_model->instrumentCount68();
    $data['instrumentCount69'] = $this->user_model->instrumentCount69();
    $data['instrumentCount70'] = $this->user_model->instrumentCount70();
    $data['instrumentCount71'] = $this->user_model->instrumentCount71();
    $data['instrumentCount72'] = $this->user_model->instrumentCount72();

     $data['instrumentCount73'] = $this->user_model->instrumentCount73();
      $data['instrumentCount74'] = $this->user_model->instrumentCount74();
       $data['instrumentCount75'] = $this->user_model->instrumentCount75();
        $data['instrumentCount76'] = $this->user_model->instrumentCount76();
         $data['instrumentCount77'] = $this->user_model->instrumentCount77();
          $data['instrumentCount78'] = $this->user_model->instrumentCount78();
           $data['instrumentCount79'] = $this->user_model->instrumentCount79();

             $data['instrumentCount80'] = $this->user_model->instrumentCount80();
               $data['instrumentCount81'] = $this->user_model->instrumentCount81();
                 $data['instrumentCount82'] = $this->user_model->instrumentCount82();
                   $data['instrumentCount83'] = $this->user_model->instrumentCount83();
                     $data['instrumentCount84'] = $this->user_model->instrumentCount84();


    //  $data['instituteCount1'] = $this->user_model->instituteCount1();


    $data['instrumentRecords'] = $this->Home_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("homedashboard", $this->global, $data, NULL);
  }







  function eproductView()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->categoryListingCount($searchText);

    $returns = $this->paginationCompress("eproductView/", $count, 100000000);



    $data['categoryRecords'] = $this->Home_model->categoryListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Product View';


    $this->loadViews("eproductView", $this->global, $data, NULL);
    //$this->loadViews("eproductView",$data);
  }




  function einstituteView()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instituteListingCount($searchText);

    $returns = $this->paginationCompress("einstituteView/", $count, 100000000);


    $data['instituteRecords'] = $this->Home_model->instituteListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Product View';


    $this->loadViews("einstituteView", $this->global, $data, NULL);
  }


   function elaboratories()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->laboratoryListingCount($searchText);

    $returns = $this->paginationCompress("elaboratories/", $count, 100000000);


    $data['laboratoryRecords'] = $this->Home_model->laboratoryListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Product View';


    $this->loadViews("elaboratories", $this->global, $data, NULL);
  }


  //This is didn't use. Problem is only one institute is displaying
  function einstituteView_google()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instituteListingCount($searchText);

    $returns = $this->paginationCompress("einstituteView_google/", $count, 100000000);


    $data['instituteRecords'] = $this->Home_model->instituteListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Product View';


    $this->loadViews("einstituteView_google", $this->global, $data, NULL);
  }





  // A seperate Page in the Institute page
  function google()
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instituteListingCount($searchText);

    $returns = $this->paginationCompress("google/", $count, 100000000);


    $data['instituteRecords'] = $this->Home_model->instituteListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Product View';


    // $this->loadViews("google", $this->global, $data, NULL);




    ////////////////////// NEW PART//////////////////////////////
    // A seperate Page without header and footer in order to embed with home page

    $locationData = $this->google->get_map_locations();
    $locPins = [];
    $locInfo = [];

    foreach ($locationData as $value) {
      $locPins[] = [
        $value['label'],
        $value['latitude'],
        $value['longitude'],
        $value['type']
      ];
      $locInfo[] = [
        "<div><h5>" . htmlspecialchars($value['label'], ENT_QUOTES, 'UTF-8') . "</h5><p>" . htmlspecialchars($value['type'] . ' - ' . $value['address'], ENT_QUOTES, 'UTF-8') . "</p></div>"
      ];
    }
    $location['locPins'] = json_encode($locPins);
    $location['locInfo'] = json_encode($locInfo);
    $this->load->view('google', $location);

    ////////////////////// NEW PART//////////////////////////////
  }





  function google_home($category = 'instrument')
  {
    $category = in_array($category, array('instrument', 'product', 'technician')) ? $category : 'instrument';

    $locPins = [];
    $locInfo = [];

    if ($category === 'technician') {
      $records = $this->Home_model->technicianListing(10000000000);

      foreach ($records as $record) {
        if ($record->latitude === null || $record->longitude === null) {
          continue;
        }

        $lat = (float) $record->latitude;
        $lng = (float) $record->longitude;

        if ($lat < 5.5 || $lat > 10 || $lng < 79.5 || $lng > 82) {
          continue;
        }

        $fullName = trim(($record->first_name ?: '') . ' ' . ($record->last_name ?: ''));
        $institution = $record->institute_name ?: $record->other_institute_name;

        $locPins[] = [
          $fullName,
          $lat,
          $lng,
          'Technician'
        ];
        $locInfo[] = [
          '<div><h5>' . htmlspecialchars($fullName ?: 'Registered Technician', ENT_QUOTES, 'UTF-8') . '</h5>' .
            '<p>' . htmlspecialchars(($record->designation ?: ''), ENT_QUOTES, 'UTF-8') . '</p>' .
            '<p>' . htmlspecialchars(($institution ?: ''), ENT_QUOTES, 'UTF-8') . '</p>' .
            '<p>' . htmlspecialchars(($record->email ?: ''), ENT_QUOTES, 'UTF-8') . ' ' . htmlspecialchars(($record->mobile_number ?: ''), ENT_QUOTES, 'UTF-8') . '</p></div>'
        ];
      }
    } elseif ($category === 'product') {
      $locationData = $this->Home_model->get_product_locations();

      foreach ($locationData as $value) {
        $locPins[] = [
          $value['label'],
          $value['latitude'],
          $value['longitude'],
          $value['type']
        ];
        $locInfo[] = [
          "<div><h5>" . htmlspecialchars($value['label'], ENT_QUOTES, 'UTF-8') . "</h5><p>" . htmlspecialchars($value['type'] . ' - ' . $value['address'], ENT_QUOTES, 'UTF-8') . "</p></div>"
        ];
      }
    } else {
      $locationData = $this->Home_model->get_map_locations();

      foreach ($locationData as $value) {
        if ($value['type'] !== 'Instrument') {
          continue;
        }

        $locPins[] = [
          $value['label'],
          $value['latitude'],
          $value['longitude'],
          $value['type']
        ];
        $locInfo[] = [
          "<div><h5>" . htmlspecialchars($value['label'], ENT_QUOTES, 'UTF-8') . "</h5><p>" . htmlspecialchars($value['address'], ENT_QUOTES, 'UTF-8') . "</p></div>"
        ];
      }
    }

    $location['locPins'] = json_encode($locPins);
    $location['locInfo'] = json_encode($locInfo);
    $this->load->view('google_home', $location);
  }



  function loadViews($viewName = "", $headerInfo = NULL, $pageInfo = NULL, $footerInfo = NULL)
  {

    $this->load->view('includes/headerE', $headerInfo);
    $this->load->view($viewName, $pageInfo);
    $this->load->view('includes/footerE', $footerInfo);
  }

  ////////////////////// Water//////////////////////////////

  function eproduct_water()
  {
    $searchText = 'water';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }
  ////////////////////// Soil//////////////////////////////

  function eproduct_soil()
  {
    $searchText = 'soil';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }

  ////////////////////// Pharmaceutical//////////////////////////////

  function eproduct_pharmaceutical()
  {
    $searchText = 'pharmaceutical';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }


  ////////////////////// Food//////////////////////////////

  function eproduct_food()
  {
    $searchText = 'food';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }

  ////////////////////// Metal//////////////////////////////

  function eproduct_metal()
  {
    $searchText = 'metal';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }




  ////////////////////// Cosmetic//////////////////////////////

  function eproduct_cosmetic()
  {
    $searchText = 'cosmetic';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }


  ////////////////////// Sewage//////////////////////////////

  function eproduct_sewage()
  {
    $searchText = 'sewage';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }



  ////////////////////// Mineral//////////////////////////////

  function eproduct_mineral()
  {
    $searchText = 'mineral';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }


  ////////////////////// Fiber//////////////////////////////

  function eproduct_fiber()
  {
    $searchText = 'fiber';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }




  ////////////////////// Gas//////////////////////////////

  function eproduct_gas()
  {
    $searchText = 'gas';
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_instituteView/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);

    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_instituteView", $this->global, $data, NULL);
  }



  //This is didn't use. Problem is only one institute is displaying
  function einstrument_google()
  {



    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_model->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("einstrument_google/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_model->instrumentListing($searchText, $returns["page"], $returns["segment"]);


    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("einstrument_google", $this->global, $data, NULL);
    //$this->loadViews("einstrumentView",$data);





  }


  //This is didn't use. Problem is only one institute is displaying
  function eproduct_google()
  {



    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->Home_modelp->instrumentListingCount($searchText);

    $returns = $this->paginationCompress("eproduct_google/", $count, 100000000);



    $data['instrumentRecords'] = $this->Home_modelp->instrumentListing($searchText, $returns["page"], $returns["segment"]);


    $this->global['pageTitle'] = 'NIDB : Instrument View';


    $this->loadViews("eproduct_google", $this->global, $data, NULL);
    //$this->loadViews("einstrumentView",$data);





  }


  //////////////////////////////////////////////////////////////////////////

  /**
   * This function is used to open edit Instrument view
   */
  function homenewsView($homenewsId = NULL)
  {
    $searchText = $this->security->xss_clean($this->input->post('searchText'));
    $data['searchText'] = $searchText;

    $this->load->library('pagination');

    $count = $this->user_model->homenewsListingCount($searchText);

    $returns = $this->paginationCompress("homenewsView/", $count, 100000000);
    if ($homenewsId == null) {
      redirect('homenewsView');
    }

    $data['homenewsInfo'] = $this->user_model->getHomenewsInfo($homenewsId);



    $this->load->view("homenewsView", $data);
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
