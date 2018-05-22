// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require_tree .

$(document).ready(function() {
  $("#contact-form").on('submit.blocker', function (e) {
      setTimeout(function () {
          $("#contact-form").off('submit.blocker').trigger('submit');
      }, 4000);
      e.preventDefault();
  });

  $("#contact-submit").on('click', function(e){
    swal({
      type: 'success',
      title: 'Thank You!',
      text: 'We have received your message and will get back to you as soon as possible!',
      showConfirmButton: false,
      timer: 4000})
    });
});
