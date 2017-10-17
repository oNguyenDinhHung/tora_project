$(document).on "turbolinks:load",()->
	$("#gaiyou_btn").click ()->
		$("#gaiyou").show()
		$("#review").hide()
		$("#comment").hide()
		$(this).addClass('disabled')
		$("#review_btn").removeClass('disabled')
		$("#comment_btn").removeClass('disabled')
	$("#comment_btn").click ()->
		$("#comment").show()
		$("#review").hide()
		$("#gaiyou").hide()
		$(this).addClass('disabled')
		$("#review_btn").removeClass('disabled')
		$("#gaiyou_btn").removeClass('disabled')
	$("#review_btn").click ()->
		$("#review").show()
		$("#gaiyou").hide()
		$("#comment").hide()
		$(this).addClass('disabled')
		$("#gaiyou_btn").removeClass('disabled')
		$("#comment_btn").removeClass('disabled')
	$("#app_picture").change ->		
		$(this).closest('form').find('label img').attr('src', window.URL.createObjectURL(this.files[0]))
		$(this).closest('form').find('input[type="submit"]').attr("style",'display:inline-block')