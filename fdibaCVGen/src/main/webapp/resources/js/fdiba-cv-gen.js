function setUpAjax(formId, url) {
	return function() {

		$("#" + formId).submit(function(e) {

			$.ajax({
				type : "POST",
				url : url,
				data : $("#" + formId).serialize(), // serializes the form's
													// elements.
				success : function(data) {
					alert(data); // show response from the php script.
				},
				error: function(){
					alert("Error occured :(");
				}
			});

			e.preventDefault(); // avoid to execute the actual submit of the
								// form.
		});
	}
}

function hideToDateIfCurrentCheckboxChecked(){
	if($('.current').is(':checked')){
		$(".toDateDiv").hide();
	}
}

$(function() {
	$(".datepicker").datepicker({
	    autoclose: true,
	    format: "dd.mm.yyyy"
	});
	
	$('.current').click(function() {
	    $(".toDateDiv").toggle(!this.checked);
	    $(".toDate").val("");
	});
	
	hideToDateIfCurrentCheckboxChecked();
	
});