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
	};

	$('table tr').each(function(i) {
		var num = $('<span>', {html: i +1, 'class': 'num'});
		var data = $('<td>', {html: num});
		$(this).prepend(data);
	});

	var no = {
		'border-radius': '30px',
		'background': '#9c8164',
		'height': '25px',
		'width': '25px',
		'line-height': '25px',
		'color': '#FFF',
		'font-weight': 'bold',
		'text-shadow': '0 -1px #222',
		'float': 'left',
		'text-align': 'center',
		'box-shadow': '0 1px 2px #7a5b3a inset',
		'border-bottom': '1px solid #FFF'
	};
	$('.num').css(no);
});