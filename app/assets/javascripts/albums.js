$(document).ready(function() {
  $('tr').on('click', function() {
    window.location = $(this).attr('id');
  });
});
