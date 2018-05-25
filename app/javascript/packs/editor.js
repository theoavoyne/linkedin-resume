$(document).ready(function(){
  $('.section-header').click(function() {
    if ($(this).attr("aria-expanded") == "true") {
      $(this).removeClass('section-header-selected');
      $(this).children('i').removeClass('chevron-down');
    } else {
      $(this).addClass('section-header-selected');
      $(this).children('i').addClass('chevron-down');
    };
  });
  $('#edit-personnal-details').click(function() {
    $(this).css('display', 'none');
    $('#personnal-details').find('.section-attribute-value').css('display', 'none');
    $('.form-control').css('display', 'block');
    $('.last-section-row').removeClass('last-section-row');
    $('#edit-buttons').addClass('last-section-row')
  });
});
