;(function(){
  
  if (!$('.page-template-clippings').length) {
    return;
  }

  $(".call-to-action").click(function() {
    $('html, body').animate({
        scrollTop: $(".clippings").offset().top
    }, 1000);
  });

})();

;(function(){
  
  if (!$('.page-template-onde-php').length) {
    return;
  }

  $(".call-to-action").click(function() {
    $('html, body').animate({
        scrollTop: $(".stores-info").offset().top
    }, 1000);
  });

})();


;(function(){
  
  if (!$('.page-template-quem-somos').length) {
    return;
  }

  $(".call-to-action").click(function() {
    $('html, body').animate({
        scrollTop: $(".first-page").offset().top
    }, 1000);
  });

})();

;(function(){
  
  if (!$('.single').length) {
    return;
  }

  $(".call-to-action").click(function() {
    $('html, body').animate({
        scrollTop: $(".images").offset().top
    }, 1000);
  });

})();