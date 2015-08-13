// -------------- Nav menu highlight current page --------------------
$(document).ready(function(){

    function InOut( elem ){
        elem.delay(2000)
        .fadeIn(2000)
        .delay(2000)
        .fadeOut( 2000,
            function(){ 
                if(elem.next().length > 0)
                {InOut( elem.next() );}
                else
                {InOut( elem.siblings(':first'));}
                         
            }
        );
    }
    
    $(function(){
    $('.inthemid p').hide();
    InOut( $('.intext:first') );
    });
});
    $('.boxslider').bxSlider({
        pager: false,
        preloadImages: 'all',
        // slideWidth: 263,
        // adaptiveHeight: true,
        // slideHeight: '100%',
        onSliderLoad: function () {
            $('.mensen>.mensen-text').eq(0).addClass('mensen-show')
        },
        onSlideBefore: function (currentSlideNumber, totalSlideQty, currentSlideHtmlObject) {
            // console.log(currentSlideNumber);
            $('.mensen-show').removeClass('mensen-show');
            $('.mensen>.mensen-text').eq(currentSlideHtmlObject).addClass('mensen-show')
            // $('.mensen>.mensen-text').eq(currentSlideNumber).toggleClass('mensen-hidden');
        },
        // onSlideAfter:
        // function($slideElement, oldIndex, newIndex)
        // { $(".mensen-text h5").text("haha") },
    });
