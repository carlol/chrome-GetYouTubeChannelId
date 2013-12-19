
# UTILS

define [] , ->

	redirectTo : (url) ->
		chrome.tabs.getSelected null, (tab) ->
			chrome.tabs.update tab.id, { url: url }
	
	copyToClipboard : (text) ->
	    copyDiv = document.createElement("div")
	    copyDiv.contentEditable = true
	    document.body.appendChild copyDiv
	    copyDiv.innerHTML = text
	    copyDiv.unselectable = "off"
	    copyDiv.focus()
	    document.execCommand "SelectAll"
	    document.execCommand "RemoveFormat"
	    document.execCommand "Copy", false, null
	    document.body.removeChild copyDiv

	selectText : (element) ->
		doc = document
		text = doc.getElementById(element)
		if doc.body.createTextRange # ms
			range = doc.body.createTextRange()
			range.moveToElementText text
			range.select()
		else if window.getSelection # moz, opera, webkit
			selection = window.getSelection()
			range = doc.createRange()
			range.selectNodeContents text
			selection.removeAllRanges()
			selection.addRange range