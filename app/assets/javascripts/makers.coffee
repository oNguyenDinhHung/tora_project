# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load",()->
	$('tbody tr input#maker_name').click ()->
		$(this).prop("readonly", false)
		$(this).closest('tr').find('input[name="commit"]').show()