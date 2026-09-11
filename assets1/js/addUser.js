/**
 * File : addUser.js
 * 
 * This file contain the validation of add user form
 * 
 * Using validation plugin : jquery.validate.js
 * 
 * @author Kishor Mali
 */

$(document).ready(function(){
	
	var addUserForm = $("#addUser");
	
	var validator = addUserForm.validate({
		
		rules:{
			lastName :{ required : true },
			userName : { required : true, email : true, remote : { url : baseURL + "checkEmailExists", type :"post"} },
			password : { required : true },
			cpassword : {required : true, equalTo: "#password"},
			mobilenumber : { required : true, digits : true },
			role : { required : true, selected : true}
			institute : { required : true, selected : true}
		},
		messages:{
			lastName :{ required : "This field is required" },
			userName : { required : "This field is required", userName : "Please enter valid email address", remote : "Email already taken" },
			password : { required : "This field is required" },
			cpassword : {required : "This field is required", equalTo: "Please enter same password" },
			mobilenumber : { required : "This field is required", digits : "Please enter numbers only" },
			role : { required : "This field is required", selected : "Please select atleast one option" }
			institute : { required : "This field is required", selected : "Please select atleast one option" }
		}
	});
});
