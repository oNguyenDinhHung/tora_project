$(document).on "turbolinks:load",()->
	$("#gaiyou_btn").click ()->
		$("#gaiyou").show()
		$("#review").hide()
		$("#kuchikomi").hide()
		$(this).addClass('disabled')
		$("#review_btn").removeClass('disabled')
		$("#kuchikomi_btn").removeClass('disabled')
	$("#kuchikomi_btn").click ()->
		$("#kuchikomi").show()
		$("#review").hide()
		$("#gaiyou").hide()
		$(this).addClass('disabled')
		$("#review_btn").removeClass('disabled')
		$("#gaiyou_btn").removeClass('disabled')
	$("#review_btn").click ()->
		$("#review").show()
		$("#gaiyou").hide()
		$("#kuchikomi").hide()
		$(this).addClass('disabled')
		$("#gaiyou_btn").removeClass('disabled')
		$("#kuchikomi_btn").removeClass('disabled')
	$("#app_picture").change ->		
		$(this).closest('form').find('label img').attr('src', window.URL.createObjectURL(this.files[0]))
		$(this).closest('form').find('input[type="submit"]').attr("style",'display:inline-block')
	$("#app_description").click ->
		$(this).attr("readonly", false)
	$("#app_description").change ->		
		$(this).closest('form').find('input[type="submit"]').attr("style",'display:inline-block')