$(document).ready () ->
	$('form img').bind 'click', (e) ->
		e.preventDefault();
		data = $(this).attr 'id'
		$('#match' + id).trigger 'click'