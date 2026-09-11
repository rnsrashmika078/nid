
/**
 * @author Thasneem Niyas
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteFeedback", function(){
		var feedbackId = $(this).data("feedbackid"),
			hitURL = baseURL + "deleteFeedback",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this feedback record ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { feedbackId : feedbackId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Feedback record successfully deleted"); }
				else if(data.status = false) { alert("Feedback record deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});


