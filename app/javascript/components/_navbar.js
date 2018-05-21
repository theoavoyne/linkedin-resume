$(document).ready(function(){
  var scroll_pos = 0;
  $(document).scroll(function() {
    scroll_pos = $(this).scrollTop();
    if(scroll_pos > 0) {
      $('.navbar-custom').addClass('navbar-with-background');
    } else {
      $('.navbar-custom').removeClass('navbar-with-background');
    }
  });
});
