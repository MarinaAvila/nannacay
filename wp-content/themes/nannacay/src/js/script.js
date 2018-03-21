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

  // home

  $('.cover').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 4000,
    fade: true,
    infinite: true,
    dots: false,
    arrows: false,
    cssEase: 'ease-in'
  });

  // clipping open modal

  var isOpen = false;

  function disableScrolling(){
    var x=window.scrollX;
    var y=window.scrollY;
    window.onscroll=function(){window.scrollTo(x, y);};
  }

  function enableScrolling(){
    window.onscroll=function(){};
  }

  $( '.clipping' ).find( '.modal' ).on('click', function( e ) {
    if ( isOpen ) {
      close();
    } else {
      open();
    }
  });

  function open() {
    isOpen = true;

    $( '.clipping' ).find( '.modal' ).addClass( 'show' )
  }

  function close() {
    isOpen = false;
    
    $( '.clipping' ).find( '.modal' ).removeClass( 'show' )
  }


  // $( '.clipping' ).click(function(e) {

  //   $clipping = $(e.currentTarget).find( '.modal' );

  //   $clipping.addClass( 'show' );

  //   var isOpen = true;

  //   if ( isOpen ) {
  //     close();
  //   } else {
  //     open();
  //   }

  //   document.ontouchmove = function(e){ e.preventDefault(); };
  //   disableScrolling();
    
  // });

  // $( '.close' ).click(function(e) {
  //   e.preventDefault();
  //   //$clipping = $(e.currentTarget).find( '.modal' );
  //   $( '.modal' ).removeClass( 'show' );
  //   console.log( 'batata' )

  // });

});

})();