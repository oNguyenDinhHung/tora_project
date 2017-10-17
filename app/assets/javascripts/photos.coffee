$(document).on "turbolinks:load",()->
	$("#photo_image").change ->
		$('img#tmp_photo').attr('src', window.URL.createObjectURL(this.files[0]))
		$(this).closest('form').find('input[type="submit"]').attr("style","display:inline-block")