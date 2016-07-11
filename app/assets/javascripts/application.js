// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require jquery.turbolinks
//= require_tree .

$(document).ready(function() {
    //var half_height_of_bible_div = ($("#main-page-bible-quote").height() / 2);
    //var offset = ($("#main-page-bible-quote").height() / 2) + ($("#bible-verse-home-page-row").height() - $("#main-page-bible-quote").height());
    var offset = $("#bible-verse-home-page-row").height() - $("#main-page-bible-quote").height();
    offset = offset - ($("#main-page-bible-quote").css("padding").replace("px", 0) * 2);
    offset = offset + ($("#main-page-bible-quote").height() / 2);
    $(".horizontal-line-through-middle-of-div").each(function() {
      $(this).css("top", offset);
    });
});
