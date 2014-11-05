(function () {

    var channelId = "";

    function sendChannelId() {

        if (!channelId) {
            var channelIds = [];

            $('.yt-uix-button-subscription-container').find('[data-channel-external-id]').each(function () {
                var id = $(this).attr('data-channel-external-id');

                if (channelIds.indexOf(id) == -1) {
                    channelIds.push(id);
                }
            })

            var str = '';

            $.each(channelIds, function (i, item) {
                str += item + '\n';
            });

            if (str) str = str.substring(0, str.length - 1)

            console.log('#-------------------------------#');
            console.log('YouTube ChannelId');
            console.log(str);
            console.log('#-------------------------------#');

            channelId = str;
        }

        chrome.runtime.sendMessage({
            channelId: channelId
        });
    }

    $(document).ready(function () {
        sendChannelId();
    });

    chrome.runtime.onMessage.addListener(function (request, sender, sendResponse) {
        if (request.action == 'sendChannelId') {
            sendChannelId();
        }
    });


}).call(this);