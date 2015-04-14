// -------------- Nav menu highlight current page --------------------
$(document).ready(function(){
    // $(function(){
    //     // this will get the full URL at the address bar
    //     var url = window.location.href; 
    //     // console.log(String(url));
    //     // passes on every "a" tag 
    //     $(".nav-list a").each(function() {
    //         // console.log(String(this))
    //             // checks if its the same on the address bar
    //         if($(this).prop('href') == url) { 
    //             $(this).addClass("active");
    //         }
    //     });
    // });

    $('.boxslider').bxSlider({
        pager: false,
        preloadImages: 'all',
        // onSlideAfter:
        // function($slideElement, oldIndex, newIndex)
        // { $(".mensen-text h5").text("haha") },
    });
});
