$(document).ready(function() {
  $("#new-cat").click(function() {
    $("#cat-image").html(catArray[Math.floor(Math.random()*catArray.length)]);
  });
})