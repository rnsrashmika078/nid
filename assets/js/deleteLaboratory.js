
/**
 * @author Thasneem Niyas
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteLaboratory", function(){
		var laboratoryId = $(this).data("laboratoryid"),
			hitURL = baseURL + "deleteLaboratory",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this laboratory record ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { laboratoryId : laboratoryId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Laboratory record successfully deleted"); }
				else if(data.status = false) { alert("Laboratory record deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});


