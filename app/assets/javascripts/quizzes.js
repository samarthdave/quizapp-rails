$(document).ready(rename);
$(document).on("fields_added.nested_form_fields", rename);
$(document).on("fields_removed.nested_form_fields", rename);
function rename() {
	var count = $(".nested_fields:not([style])").length;
	for(var i = 1; i <= count; i++) {
		if(i == 1) {
			$($(".nested_fields:not([style]) .input-group").children().filter("input")[i-1]).attr("placeholder", "Question " + i + ' (2 min. - 50 max.)');
		} else {
			$($(".nested_fields:not([style]) .input-group").children().filter("input")[i-1]).attr("placeholder", "Question " + i);
		}
	}
}