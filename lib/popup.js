/*chrome.extension.getBackgroundPage().getCurrentChannelId()*/

$(document).ready(function () {

    var path = 'https://www.youtube.com/watch';

    chrome.runtime.onMessage.addListener(function (request, sender, sendResponse) {
        $('.channelId').text(function (index) {
            return request.channelId;
        });
    });

    $('.channelId').text(function (index) {
        return chrome.extension.getBackgroundPage().getCurrentChannelId();
    });

    var $warning = $('.warning');
    var $note = $('.note');

    chrome.tabs.query({
        active: true,
        currentWindow: true
    }, function (tabs) {

        if (tabs[0].url.indexOf(path) == -1) {
            $warning.css('display', 'visible');
            $note.css('display', 'none');
        } else {
            $warning.css('display', 'none');
            $note.css('display', 'visible');
        }
    });
});