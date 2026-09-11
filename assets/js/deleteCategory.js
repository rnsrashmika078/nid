
/**
 * @author Thasneem Niyas
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteCategory", function(){
		var categoryId = $(this).data("categoryid"),
			hitURL = baseURL + "deleteCategory",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this category record ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { categoryId : categoryId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Category record successfully deleted"); }
				else if(data.status = false) { alert("Category record deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});



