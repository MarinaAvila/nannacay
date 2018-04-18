;(function(){
  
  if (!$('.home').length) {
    return;
  }

  // home

  $('.cover').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    fade: true,
    infinite: true,
    dots: true,
    arrows: false,
    cssEase: 'ease-in'
  });


})();