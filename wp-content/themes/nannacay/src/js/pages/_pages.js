;(function(){
  
  if (!$('.home').length) {
    return;
  }

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

})();