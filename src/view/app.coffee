
# MAIN SCRIPT

define ['R'] , (R) ->

	init : ->

		$(document).ready -> # after DOM init

			$('dd').css('display', 'none')
			descriptionEnabled = false

			$(".btn-info").click ->
				if descriptionEnabled
					$('dd').css('display', 'none')
					$('.container').css('width', '')
					descriptionEnabled = false
				else
					$('dd').css('display', 'inline')
					$('.container').css('width', '700px')
					descriptionEnabled = true



