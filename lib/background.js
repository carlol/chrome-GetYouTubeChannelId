var path = 'https://www.youtube.com/watch';

var currentChannelId;

chrome.runtime.onMessage.addListener(function (request, sender, sendResponse) {
    currentChannelId = request.channelId;
});

function getCurrentChannelId() {
    return currentChannelId;
}

chrome.tabs.onActivated.addListener(function (tabId, changeInfo, tab) {
    chrome.tabs.query({
        active: true,
        currentWindow: true
    }, function (tabs) {


        if (tabs[0].url.indexOf(path) == -1) {
            currentChannelId = "No ChannelId retrieved";

        } else {

            chrome.tabs.sendMessage(tabs[0].id, {
                action: "sendChannelId"
            });
        }
    });
});