(function () {

    $(document).ready(function () {

        var channelIds = [];

        $('.yt-uix-button-subscription-container').find('[data-channel-external-id]').each(function () {
            var id = $(this).attr('data-channel-external-id');
                       
            if ( channelIds.indexOf(id) == -1 ) {
                channelIds.push(id);
            }
        })

        var str = '';
        
        $.each(channelIds, function(i, item) {
           str += item + '\n'; 
        });
        
        console.log(str);

    });

}).call(this);