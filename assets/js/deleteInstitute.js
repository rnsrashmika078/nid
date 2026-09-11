
/**
 * @author Thasneem Niyas
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteInstitute", function(){
		var instituteId = $(this).data("instituteid"),
			hitURL = baseURL + "deleteInstitute",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this institute record ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { instituteId : instituteId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Institute record successfully deleted"); }
				else if(data.status = false) { alert("Institute record deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});


