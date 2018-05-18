import "bootstrap";


// When logged in and click on 'New resume', sroll-dow to pick a template.
// Maybe we should create a new file for ths function???
$('#scroll-to-pick-a-template').click(function(){
  let heightToScroll = $('.flex-banner').height() + $('.navbar-custom').height();
  console.log(heightToScroll);
  $('html, body').animate({scrollTop : heightToScroll});
  return false;
});
