$(document).ready(function(){

  // CLICKING ON A SECTION

  $('.section-header').click(function() {
    if ($(this).attr("aria-expanded") == "true") { // Prevent reversed behavior (can happen when clicking too quickly)
      $(this).removeClass('section-header-selected');
      $(this).children('i').removeClass('chevron-down');
    } else {
      $(this).addClass('section-header-selected');
      $(this).children('i').addClass('chevron-down');
    };
  });

  // EDITING PERSONNAL DETAILS SECTION

  $('#personnal-edit-icon').click(function() {

    // HIDE EDIT BUTTON, USER INFOS AND ADD BORDER BOTTOM TO LAST ROW
    $(this).css('display', 'none');
    $('#personnal-details').find('.section-attribute-value').css('display', 'none');
    $('#personnal-last-row').addClass('border-bottom');

    // DISPLAY SIMPLE_FORM'S INPUT FIELDS
    $('#personnal-details').find('.form-control').css('display', 'block');

    // ASSIGNED THE LAST-SECTION-ROW CLASS TO THE BUTTONS (WHICH OVERIDE THE DISPLAY: NONE)
    $('#personnal-edit-buttons').css('display', 'flex')

  });

  // EDITING A SKILL

  $('.edit-skill').click(function() { // RIGHT EDIT ICON

    // FIND WHICH SKILL IS BEING UPDATED
    var skill_id = $(this).attr("skill-id");

    // HIDE SKILL NAME AND ICONS
    $(`#skill-${skill_id}`).find('.skill-name').css('display', 'none');
    $(`#skill-${skill_id}`).find('.skill-icons').css('display', 'none');

    // DISPLAY SIMPLE_FORM'S INPUT FIELDS AND SAVE BUTTON
    $(`#skill-${skill_id}`).find('.form-control').css('display', 'block');
    $(`#skill-${skill_id}`).find('.skills-save-button').css('display', 'block');
  });

  // EDITING A POSITION

  $('.position-show-link').first().find('.inlist-position').addClass('inlist-position-selected')

  $('#position-edit-icon').click(function() {

    // HIDE EDIT AND DELETE BUTTONS
    $('.position-icons').css('display', 'none');

    // HIDE POSITION INFOS
    $('#positions').find('.section-attribute-value').css('display', 'none');

    // ADD BORDER BOTTOM WHITE TO LAST ROW
    $('#position-last-row').addClass('border-bottom-white');

    // DISPLAY SIMPLE_FORM'S INPUT FIELDS, BUTTON CHECKBOX AND LABELS
    $('#positions').find('.form-control').css('display', 'block');
    $('#positions').find('.btn').css('display', 'block');
    $('#positions').find('.checkbox').css('display', 'block');
    $('#positions').find('.control-label').css('display', 'block');
  });
});
