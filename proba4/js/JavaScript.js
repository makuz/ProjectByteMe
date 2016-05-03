$(window).scroll(function () {
    var wScroll = $(this).scrollTop();
    $(window).scroll(function () {
        var wScroll = $(this).scrollTop();

        $('.logo').css({
            'transform': 'translate(0px, -' + wScroll / 5 + '%)'
        });

        $('.lemon').css({
            'transform': 'translate(0px, -' + wScroll / 10 + '%)'
        });
        if (wScroll > $('.images').offset().top - ($(window).height() / 1.3)) {
            $('.columns').each(function (i) {
                setTimeout(function () {
                    $('.columns').eq(i).addClass('is-showing');
                }, 10 * (i + 1));
            });
        }
    })