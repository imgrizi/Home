$(document).ready(function(){
    $('.your-class').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        dots: true
      });
  });

  $(document).ready(function(){
    $('.new').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        dots: true,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: 'linear'
        
    });
});