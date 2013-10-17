$(document).ready(function() {
  $('tr').on('click', function() {
    window.location = '/albums/' + $(this).attr('id');
  });
});
