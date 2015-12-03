# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->	
	$('.date').attr('readonly', 'readonly')
	.datepicker
		format: 'dd/mm/yyyy'
		defaultViewDate: 'today'
		autoclose: true
		todayHighlight: true
