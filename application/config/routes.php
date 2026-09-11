<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['default_controller'] = "Home/home";
$route['404_override'] = 'login/error';


$route['sendFeedback'] = "Contact/sendFeedback";

/*********** USER DEFINED ROUTES *******************/

$route['loginMe'] = 'login/loginMe';
$route['dashboard'] = 'user';
$route['logout'] = 'user/logout';



/*********** SUPER ADMIN CONTROLLER ROUTES *******************/
//$route['dashboard'] = 'super_admin/dashboard';
$route['noaccess'] = 'login/noaccess';
$route['userListing'] = 'super_admin/userListing';





/*********** ADMIN CONTROLLER ROUTES *******************/
$route['noaccess'] = 'login/noaccess';
$route['userListing'] = 'admin/userListing';


$route['unactivatedUser'] = 'admin/unactivatedUser';
$route['userListing/(:num)'] = "admin/userListing/$1";
$route['addNew'] = "admin/addNew";
$route['addNewUser'] = "admin/addNewUser";
$route['editOld'] = "admin/editOld";
$route['editOld/(:num)'] = "admin/editOld/$1";
$route['editUser'] = "admin/editUser";
$route['deleteUser'] = "admin/deleteUser";

$route['selectRole'] = "admin/selectRole";
$route['selectRole/(:num)'] = "admin/selectRole/$1";
$route['givePermission'] = "admin/givePermission";


$route['instrumentListing'] = "Admin/instrumentListing";
$route['addInstrument'] = "admin/addInstrument";
$route['addInstruments'] = "admin/addInstruments";
$route['editOldInstrument/(:num)'] = "admin/editOldInstrument/$1";
$route['editInstrument'] = "admin/editInstrument";
$route['deleteInstrument'] = "Admin/deleteInstrument";


//$route['authorized_instrumentView/(:num)'] = "admin/authorized_instrumentView/$1";


$route['log-history'] = "admin/logHistory";
$route['log-history-backup'] = "admin/logHistoryBackup";
$route['log-history/(:num)'] = "admin/logHistorysingle/$1";
$route['log-history/(:num)/(:num)'] = "admin/logHistorysingle/$1/$2";
$route['backupLogTable'] = "admin/backupLogTable";
$route['backupLogTableDelete'] = "admin/backupLogTableDelete";
$route['log-history-upload'] = "admin/logHistoryUpload";
$route['logHistoryUploadFile'] = "admin/logHistoryUploadFile";



$route['instituteListing'] = 'admin/instituteListing';
 $route['addInstitute'] = "admin/addInstitute";
  $route['addNewInstitute'] = "super_admin/addNewInstitute";
$route['addNewInstitute'] = "admin/addNewInstitute";
$route['editOldInstitute/(:num)'] = "admin/editOldInstitute/$1";
$route['editInstitute'] = "admin/editInstitute";
$route['deleteInstitute'] = "admin/deleteInstitute";



 $route['facultyListing'] = 'admin/facultyListing';
  $route['addFaculty'] = "admin/addFaculty";
$route['addNewFaculty'] = "admin/addNewFaculty";
$route['editOldFaculty/(:num)'] = "admin/editOldFaculty/$1";
$route['editFaculty'] = "admin/editFaculty";
$route['deleteFaculty'] = "admin/deleteFaculty";


$route['departmentListing'] = 'admin/departmentListing';
$route['addDepartment'] = "admin/addDepartment";
$route['addNewDepartment'] = "admin/addNewDepartment";
$route['editOldDepartment/(:num)'] = "admin/editOldDepartment/$1";
$route['editDepartment'] = "admin/editDepartment";
$route['deleteDepartment'] = "admin/deleteDepartment";




$route['laboratoryListing'] = 'admin/laboratoryListing';
$route['addLaboratory'] = "admin/addLaboratory";
$route['addNewLaboratory'] = "admin/addNewLaboratory";
$route['editOldLaboratory/(:num)'] = "admin/editOldLaboratory/$1";
$route['editLaboratory'] = "admin/editLaboratory";
$route['deleteLaboratory'] = "admin/deleteLaboratory";




$route['categoryListing'] = 'admin/categoryListing';
$route['addCategory'] = "admin/addCategory";
$route['addNewCategory'] = "admin/addNewCategory";
$route['editOldCategory/(:num)'] = "admin/editOldCategory/$1";
$route['editCategory'] = "admin/editCategory";
$route['deleteCategory'] = "admin/deleteCategory";


$route['feedbackListing'] = 'admin/feedbackListing';
 $route['addFeedback'] = "admin/addFeedback";
  $route['addNewFeedback'] = "admin/addNewFeedback";
$route['editOldFeedback/(:num)'] = "admin/editOldFeedback/$1";
$route['editFeedback'] = "admin/editFeedback";
$route['deleteFeedback'] = "admin/deleteFeedback";





$route['homenewsListing'] = 'admin/homenewsListing';
 $route['addHomenews'] = "admin/addHomenews";
  $route['addNewHomenews'] = "admin/addNewHomenews";
$route['editOldHomenews/(:num)'] = "admin/editOldHomenews/$1";
$route['editHomenews'] = "admin/editHomenews";
$route['deleteHomenews'] = "admin/deleteHomenews";
$route['homenewsView/(:num)'] = "admin/homenewsView/$1";

/*********** INSTITUTE_MANAGER CONTROLLER ROUTES *******************/
$route['noaccess'] = 'login/noaccess';


/*********** FACULTY_MANAGER CONTROLLER ROUTES *******************/
$route['noaccess'] = 'login/noaccess';




/*********** DIVISION_MANAGER CONTROLLER ROUTES *******************/
$route['noaccess'] = 'login/noaccess';

















/************ ADMINISTRATIVE_INCHARGE CONTROLLER ROUTES *******************/
$route['noaccess'] = 'login/noaccess';






/************ TECHNICAL_INCHARGE CONTROLLER ROUTES *******************/
$route['noaccess'] = 'login/noaccess';








/*********** EQUIPMENT_USER CONTROLLER ROUTES *******************/
$route['loadChangePass'] = "user/loadChangePass";
$route['changePassword'] = "user/changePassword";
$route['pageNotFound'] = "user/pageNotFound";
$route['checkEmailExists'] = "user/checkEmailExists";
$route['endInstrument/(:num)'] = "user/endInstrument/$1";
$route['einstruments'] = "user/einstruments";
$route['userEdit'] = "user/loadUserEdit";
$route['updateUser'] = "user/updateUser";

$route['authorized_instrumentView/(:num)'] = "Admin/authorized_instrumentView/$1";


/***********New Home CONTROLLER  ROUTES *******************/
$route['instrumentView/(:num)'] = "Home/instrumentView/$1";

//$route['instrumentView'] = "Home/instrumentView";
$route['viewInstrument'] = "Home/viewInstrument";
//$route['viewInstrument/(:num)'] = "Home/viewInstrument/$1";
$route['einstrumentView'] = "Home/einstrumentView";
$route['etechnicianView'] = "Home/etechnicianView";
$route['etechnician_googleview/(:num)'] = "Home/etechnician_googleview/$1";
$route['editOldRegister'] = "User_authentication/editOldRegister";
$route['editRegister'] = "User_authentication/editRegister";
 $route['single_product'] = "Home/single_product";
 $route['eproductView'] = "Home/eproductView";
 $route['einstituteView'] = "Home/einstituteView";
  $route['elaboratories'] = "Home/elaboratories";
 $route['eproduct_instituteView'] = "Home/eproduct_instituteView";
 
  
$route['homenewsView/(:num)'] = "Home/homenewsView/$1";


 $route['eproduct_water'] = "Home/eproduct_water";
 $route['eproduct_soil'] = "Home/eproduct_soil";
 $route['eproduct_pharmaceutical'] = "Home/eproduct_pharmaceutical";
 $route['eproduct_food'] = "Home/eproduct_food";
 $route['eproduct_metal'] = "Home/eproduct_metal";
 $route['eproduct_cosmetic'] = "Home/eproduct_cosmetic";
 $route['eproduct_sewage'] = "Home/eproduct_sewage";
 $route['eproduct_mineral'] = "Home/eproduct_mineral";
  $route['eproduct_fiber'] = "Home/eproduct_fiber";
   $route['eproduct_gas'] = "Home/eproduct_gas";



 $route['home'] = "Home/home";
 $route['homedashboard'] = "Home/homedashboard";

$route['users_admin789'] = "Home/users_admin789";
$route['eproduct_institute_googleview/(:num)'] = "Home/eproduct_institute_googleview/$1"; /*A single product View*/

$route['google'] = "Home/google"; /*A whole Institute View*/
$route['einstrument_googleview/(:num)'] = "Home/einstrument_googleview/$1"; /*A single Instrument View*/

$route['google_home'] = "Home/google_home"; /*included in home page*/
$route['google_home/(:any)'] = "Home/google_home/$1"; /*categorized home map (instrument/product/technician)*/

$route['einstrument_google'] = "Home/einstrument_google"; /*Whole Instrument View*/
$route['eproduct_google'] = "Home/eproduct_google"; /*Whole Product View*/

$route['ind_institute_googleview/(:num)'] = "Admin/ind_institute_googleview/$1"; /*A single Institute View*/


/***********New Google CONTROLLER  ROUTES *******************/

//$route['einstrument_google'] = "Google/einstrument_google"; /*Whole Instrument View*/
//$route['eproduct_google'] = "Google/eproduct_google"; /*Whole Product View*/

/*********** LOGIN CONTROLLER ROUTES *******************/
$route['forgotPassword'] = "login/forgotPassword";
$route['resetPasswordUser'] = "login/resetPasswordUser";
$route['resetPasswordConfirmUser'] = "login/resetPasswordConfirmUser";
$route['resetPasswordConfirmUser/(:any)'] = "login/resetPasswordConfirmUser/$1";
$route['resetPasswordConfirmUser/(:any)/(:any)'] = "login/resetPasswordConfirmUser/$1/$2";
$route['createPasswordUser'] = "login/createPasswordUser";

/*********** AUTH API (for React frontend) *******************/
$route['auth_api/me'] = "auth_api/me";
$route['auth_api/logout'] = "auth_api/logout";

/* End of file routes.php */
/* Location: ./application/config/routes.php */