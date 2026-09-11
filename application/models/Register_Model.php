<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Register_Model extends CI_Model
{

  public function insert($title, $gender, $firstName, $lastName, $address, $emailid, $designation, $mobilenumber, $phoneNumber, $institute, $facultyId, $department, $laboratory, $userName, $password, $userTypeId, $undefineUser, $createDate, $otherInstitute)
  {
    $data = array(
      'title' => $title,
      'gender' => $gender,
      'first_name' => $firstName,
      'last_name' => $lastName,
      'address' => $address,
      'email' => $emailid,
      'designation' => $designation,
      'mobile_number' => $mobilenumber,
      'phone_number' => $phoneNumber,
      'institute_id' => $institute,
      'faculty_id' => $facultyId,
      'department_id' => $department,
      'laboratory_id' => $laboratory,
      'username' => $userName,
      'password' => $password,
      // 'password'=>getHashedPassword($password)			
      'user_type_id' => $userTypeId,
      'undefineUser' => $undefineUser,
      'other_institute_name' => $otherInstitute,
      'created' => $createDate
    );
    $sql_query = $this->db->insert('users', $data);
    if ($sql_query) {
      $this->session->set_flashdata('success', 'Registration successfull');
      //redirect('login');
    } else {
      $this->session->set_flashdata('error', 'Somthing went worng. Error!!');
      redirect('login');
    }
  }

  function get_institute()
  {
    $this->db->order_by("name", "ASC");
    $query = $this->db->get('institutes');
    return $query;
  }
  function get_user_type()
  {
    $query = $this->db->get('user_types');
    return $query;
  }

  function get_departments($institute_id)
  {

    $this->db->where('institute_id', $institute_id);
    $this->db->order_by('department_name', 'ASC');
    $query = $this->db->get('departments');
    $output = '<option value="">Select Departments</option>';
    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->department_id . '">' . $row->department_name . '</option>';
    }
    return $output;
  }

  function get_faculties($institute_id)
  {
    $this->db->where('institute_id', $institute_id);
    $this->db->order_by('faculty_name', 'ASC');
    $query = $this->db->get('faculties');
    $output = '<option value="">Select Faculties</option>';
    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->faculty_id . '">' . $row->faculty_name . '</option>';
    }
    return $output;
  }

  function get_departmentsByFaculty($faculty_id)
  {
    $this->db->where('faculty_id', $faculty_id);
    $this->db->order_by('department_name', 'ASC');
    $query = $this->db->get('departments');
    $output = '<option value="">Select Departments</option>';
    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->department_id . '">' . $row->department_name . '</option>';
    }
    return $output;
  }



  function get_laboratoriesByInstitute($institute_id)
  {
    $this->db->where('institute_id', $institute_id);
    $this->db->order_by('laboratory_name', 'ASC');
    $query = $this->db->get('laboratories');
    $output = '<option value="">Select Laboratories</option>';
    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->laboratory_id . '">' . $row->laboratory_name . '</option>';
    }
    return $output;
  }







  function get_laboratories($department_id)
  {
    $this->db->where('department_id', $department_id);
    $this->db->order_by('laboratory_name', 'ASC');
    $query = $this->db->get('laboratories');
    $output = '<option value="">Select Laboratories</option>';
    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->laboratory_id . '">' . $row->laboratory_name . '</option>';
    }
    return $output;
  }

  function get_designation()
  {

    $query = $this->db->query('SELECT name FROM designation ORDER BY name ASC');
    return $query;
  }
}
