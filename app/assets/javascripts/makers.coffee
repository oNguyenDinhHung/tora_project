$(document).on "turbolinks:load",()->
	$('table#makers tbody').click (e)->			
		target=$(e.target)
		if target.is('input')
			this_tr=target.closest('tr')
			if target.attr('type')=='text'
				target.prop("readonly", false)
				this_tr.find('input[type="submit"]').show()
			else				
				$.ajax
					url: '/makers/'+this_tr.attr('id')
					method: "patch"
					data: this_tr.find('input[type="text"]').serialize()
					success: ()->
						console.log("maker is updated")
					failure: (err)->
						console.log(err)
					dataType: "script"