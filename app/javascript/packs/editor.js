$(document).ready(function(){
  $('.section-header').click(function() {
    if ($(this).attr("aria-expanded") == "true") {
      $(this).removeClass('opened-section');
      $(this).children('i').removeClass('chevron-down');
    } else {
      $(this).addClass('opened-section');
      $(this).children('i').addClass('chevron-down');
    };
  });
});
