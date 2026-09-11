
/**
 * @author Thasneem Niyas
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteInstrument", function(){
		var instrumentId = $(this).data("instrumentid"),
			hitURL = baseURL + "deleteInstrument",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this instrument record ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { instrumentId : instrumentId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Instrument record successfully deleted"); }
				else if(data.status = false) { alert("Instrument record deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});


