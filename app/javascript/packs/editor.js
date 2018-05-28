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
    $('#personnal-details').find('.form-control').css('display', 'block');
    $('#personnal-details').find('.last-section-row').removeClass('last-section-row');
    $('#personnal-edit-buttons').addClass('last-section-row')
  });
  $('.edit-skill').click(function() {
    var skill_id = $(this).attr("skill-id");
    $(this).css('display', 'none');
    $(`#skill-${skill_id}`).find('.form-control').css('display', 'block');
    $(`#skill-${skill_id}`).find('.skills-save-button').css('display', 'block');
    $(`#skill-${skill_id}`).find('.skill-name').css('display', 'none');
  });
});
