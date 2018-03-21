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
    var winMenu = $win.height()/2;   // Get the window height.

    var $navBar = $('#header');
    var $win = $(window);
    var winHeader = $win.height();   // Get the window height.

    $win.on("scroll", function () {
      if ($(this).scrollTop() > winMenu ) {
        $nav.addClass("black");
      } else {
        $nav.removeClass("black");
      }

      if ($(this).scrollTop() > winHeader ) {
        $navBar.addClass("black");
      } else {
        $navBar.removeClass("black");
      }

    }).on("resize", function(){ // If the user resizes the window
      winMenu = $(this).height()/2; // you'll need the new height value
      winHeader = $(this).height(); // you'll need the new height value
  });


  // menu change color

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

    document.ontouchmove = function(e){ e.preventDefault(); };
    disableScrolling();
    
  });

  $( '.close' ).click(function() {
    
    $( '.modal' ).removeClass( 'show' );
    $( '.close' ).removeClass( 'show' );

    enableScrolling();
  });

});

})();