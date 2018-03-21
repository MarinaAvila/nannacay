;(function(){

  console.log( 'script.js' )
  var isMenuOpen = false;

  $( '.menu-lines' ).click(function() {
    if ( isMenuOpen ) {
      close();
    } else {
      open();
    }

    function open() {
      isMenuOpen = true;
      $( 'body' ).addClass('menu-open');
    }

    function close() {
      isMenuOpen = false;
      $( 'body' ).removeClass('menu-open')
    }
    
  });

  // menu desapear on scroll

  (function( $ ) {
    $(function() {
        var $output = $( "#header" );
          $( window ).scroll(function() {
              $output.addClass( 'hide' );
              clearTimeout( $.data( this, "scrollCheck" ) );
              $.data( this, "scrollCheck", setTimeout(function() {
                $output.removeClass( 'hide' );
              }, 250) );
          });
    });
  })( jQuery );

  // menu change color

  jQuery(function($) {

    var $nav = $('.menu');
    var $win = $(window);
    var winH = $win.height()/2;   // Get the window height.

    $win.on("scroll", function () {
      if ($(this).scrollTop() > winH ) {
        $nav.addClass("black");
      } else {
        $nav.removeClass("black");
      }
    }).on("resize", function(){ // If the user resizes the window
      winH = $(this).height(); // you'll need the new height value
  });

  // $('.home-slider').slick({
  //   slidesToShow: 1,
  //   slidesToScroll: 1,
  //   autoplay: true,
  // });

  

  // clipping open modal

  function disableScrolling(){
    var x=window.scrollX;
    var y=window.scrollY;
    window.onscroll=function(){window.scrollTo(x, y);};
  }

  function enableScrolling(){
    window.onscroll=function(){};
  }


  $( '.clipping' ).click(function(e) {

    $clipping = $(e.currentTarget).find( '.modal' );
    $clipping.addClass( 'show' );

    $( '.close' ).addClass( 'show' );
    // document.ontouchmove = function(e){ e.preventDefault(); };
    // disableScrolling();
    
  });

  $( '.close' ).click(function() {
    $( '.modal' ).removeClass( 'show' );
    $( '.close' ).removeClass( 'show' );

  });

});

})();