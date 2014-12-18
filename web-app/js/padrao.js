$(function(){
    /* ************ codigo #1 ************* */ 
    var match = document.cookie.match(new RegExp('color=([^;]+)'));
    if(match) var color = match[1];
    if(color){
        $('body').removeClass(function (index, css) {
            return (css.match (/\btheme-\S+/g) || []).join(' ')
        })
        $('body').addClass('theme-' + color);
    }
    $('[data-popover="true"]').popover({html: true});
    /* ************ codigo #1 ************* */ 

    /* ************ codigo #2 ************* */ 
    var uls = $('.sidebar-nav > ul > *').clone();
    uls.addClass('visible-xs');
    $('#main-menu').append(uls.clone());
    /* ************ codigo #2 ************* */ 
            
});
    