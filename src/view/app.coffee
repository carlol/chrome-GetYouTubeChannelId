
# MAIN SCRIPT

define ['R'] , (R) ->

	init : ->

		$(document).ready -> # after DOM init

			# init
			$('dd').css('display', 'none')
			descriptionEnabled = false

			# info
			$(".btn-info").click ->
				if descriptionEnabled
					$('dd').css('display', 'none')
					$('.container').css('width', '')
					descriptionEnabled = false
				else
					$('dd').css('display', 'inline')
					$('.container').css('width', '700px')
					descriptionEnabled = true

			# redirect to about
			$(".btn-more-urls").click ->
				chrome.tabs.getSelected null, (tab) ->
					chrome.tabs.update tab.id, { url: "chrome://about/" }





