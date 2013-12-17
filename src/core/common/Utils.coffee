
# UTILS

define [] , ->

	redirectTo : (url) ->
		chrome.tabs.getSelected null, (tab) ->
			chrome.tabs.update tab.id, { url: url }
		