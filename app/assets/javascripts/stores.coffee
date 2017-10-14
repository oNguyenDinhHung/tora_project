$(document).on "turbolinks:load",()->
	$('table#stores tbody').click (e)->			
		target=$(e.target)
		if target.is('input')
			this_tr=target.closest('tr')
			if target.attr('type')=='text'
				target.prop("readonly", false)
				this_tr.find('input[type="submit"]').show()