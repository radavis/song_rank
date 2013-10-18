$(document).ready(function() {
  $('tr.album').on('click', function() {
    window.location = '/albums/' + $(this).attr('id');
  });

  $('div.rating').raty({
    path: "/assets",
    click: function(score, e) {
      $.ajax({
        method: "PATCH",
        url: '/ratings/' + $(this).attr('id'),
        data: { id: $(this).attr('id'), score: score }
      });
    }
  });
});
