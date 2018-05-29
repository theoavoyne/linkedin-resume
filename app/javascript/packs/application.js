//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree

import "bootstrap";
import "components/_navbar"
import "components/_pick_template"

// When logged in and click on 'New resume', sroll-dow to pick a template.
// Maybe we should create a new file for ths function???
$('.scroll-to-pick-a-template').click(function(){
  let heightToScroll;
  if ( window.innerWidth < 991 ) {
    heightToScroll = $('#flex-banner').height()
                     - $('.navbar-custom').height()
                     + 240;
  } else {
    heightToScroll = $('#flex-banner').height() - $('.navbar-custom').height();
  }

  $('html, body').animate({scrollTop : heightToScroll});
  return false;
});
