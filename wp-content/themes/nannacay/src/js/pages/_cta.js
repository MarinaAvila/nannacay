;(function(){
  
  if (!$('.page-template-clippings').length) {
    return;
  }

  console.log('clippings');

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

  console.log('onde')

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

  console.log('quem')

  $(".call-to-action").click(function() {
    $('html, body').animate({
        scrollTop: $(".first-page").offset().top
    }, 1000);
  });

})();