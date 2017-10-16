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