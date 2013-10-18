$(document).ready(function() {
  // clickable rows on /albums/ page
  $('tr.album').on('click', function() {
    window.location = '/albums/' + $(this).attr('id');
  });

  // update a track's rating
  $('div.rating').raty({
    score: function() { return $(this).attr('score'); },
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
