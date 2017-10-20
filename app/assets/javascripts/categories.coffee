$(document).on "turbolinks:load",()->
	$('table#categories tbody').click (e)->			
		target=$(e.target)
		if target.is('input')
			this_tr=target.closest('tr')
			if target.attr('type')=='text'
				target.prop("readonly", false)
				this_tr.find('input[type="submit"]').show()
			else				
				$.ajax
					url: '/categories/'+this_tr.attr('id')
					method: "patch"
					data: this_tr.find('input[type="text"]').serialize()
					success: ()->
						console.log("category is updated")
					failure: (err)->
						console.log(err)
					dataType: "script"