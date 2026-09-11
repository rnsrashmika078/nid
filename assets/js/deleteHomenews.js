
/**
 * @author Thasneem Niyas
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteHomenews", function(){
		var homenewsId = $(this).data("homenewsid"),
			hitURL = baseURL + "deleteHomenews",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this home news record ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { homenewsId : homenewsId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Home News record successfully deleted"); }
				else if(data.status = false) { alert("Home News record deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});


