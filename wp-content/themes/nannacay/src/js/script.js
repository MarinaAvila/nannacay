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


})();