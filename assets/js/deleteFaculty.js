
/**
 * @author Thasneem Niyas
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteFaculty", function(){
		var facultyId = $(this).data("facultyid"),
			hitURL = baseURL + "deleteFaculty",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this faculty record ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { facultyId : facultyId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Faculty record successfully deleted"); }
				else if(data.status = false) { alert("Faculty record deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});


