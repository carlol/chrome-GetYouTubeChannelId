
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
					$('dd').css('display', 'inline').addClass('uk-animation-scale-up')
					$('.container').css('width', '700px')
					descriptionEnabled = true

			# redirect to about
			$('.btn-more-urls').click -> chrome.tabs.create {'url': "chrome://about/"}

			# dt links
			$('.chrome-link').click -> 
				$this = $(@)
				if ( $this.siblings('.uk-icon-external-link').size() > 0 )
					_.redirectTo $this.text()
				else
					$this.attr('id', 'current')
					_.copyToClipboard $this.text()
					_.selectText 'current'
					$this.attr('id', '')

			# info tooltip
			# $('.uk-icon-external-link').attr('data-uk-tooltip', "{pos:'right'}").attr('title', R.string.externalLink)
			# $('.uk-icon-copy').attr('data-uk-tooltip', '').attr('title', R.string.copy2Clipboard)

			# warning tooltip
			$('.badge-warn').attr('data-uk-tooltip', '').attr('title', R.string.warning)





