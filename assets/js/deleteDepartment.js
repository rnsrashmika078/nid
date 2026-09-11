
/**
 * @author Thasneem Niyas
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteDepartment", function(){
		var departmentId = $(this).data("departmentid"),
			hitURL = baseURL + "deleteDepartment",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this department record ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { departmentId : departmentId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Department record successfully deleted"); }
				else if(data.status = false) { alert("Department record deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});


