;(function(){

  console.log('clippings');

  $(".call-to-action").click(function() {
    $('html, body').animate({
        scrollTop: $(".clippings").offset().top
    }, 1000);
  });

})();
