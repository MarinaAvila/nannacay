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


})();