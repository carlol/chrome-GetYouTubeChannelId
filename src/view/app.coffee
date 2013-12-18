
# MAIN SCRIPT

define ['R', '_'] , (R, _) ->

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
			$('.btn-more-urls').click -> chrome.tabs.create {'url': "chrome://about/"}

			# dt links
			$('dt').click -> _.redirectTo $(@).text()

			# warning tooltip
			$('.badge-warn').attr('data-uk-tooltip', '')
								  .attr('title', 'it crashes or hangs the renderer')





