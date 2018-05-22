$(document).ready(function(){
  $("#btn-to-editor").prop("disabled",true);
  $('.template').click(function() {
    $('#user_template').val(
      $(this).data('template')
    );
    $("#btn-to-editor").prop("disabled",false);
    $('.template').removeClass('template-selected');
    $(this).addClass('template-selected');
    $('#step-2').html(`<i class="fas fa-check green"></i>`);
  });
});


