import "bootstrap";

$('#scroll-to-pick-a-template').click(function(){
  let heightToScroll = $('.flex-banner').height() + $('.navbar-custom').height();
  console.log(heightToScroll);
  $('html, body').animate({scrollTop : heightToScroll});
  return false;
});
