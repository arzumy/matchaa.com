// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function () {
	var imageProps = {
			'cursor': 'pointer'
		,	'opacity': .7
	};

	$('form img').bind('click', function(e) {
		var data = $(this).attr('id');
		$('#match_' + data).trigger('click');
	}).css(imageProps);

	$('form img').hover(function(e) {
		$(this).css('opacity', 1);
	}, function(e) {
		$(this).css('opacity', .7);
	});
});