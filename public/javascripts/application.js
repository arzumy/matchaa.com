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

	$('input[type=text], input[type=email]').each(function(i) {
		$(this).attr('autocomplete', 'off');
	});

	$('#header h1').bind('click', function(e) {
		e.preventDefault();
		window.location.href = '/';
	}).css('cursor', 'pointer');

	if ($('.notification').length) {
		setTimeout(function() {
			$('.notification').slideDown('slow');
		}, 1000);

		setTimeout(function() {
			$('.notification').slideUp('fast');
		}, 5*1e3)
	}
});