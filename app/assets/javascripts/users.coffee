$(document).on "turbolinks:load",()->	
	$("#user_avatar").change ->
		$(this).closest('form').find('#show-avatar img').attr('src', window.URL.createObjectURL(this.files[0]))
