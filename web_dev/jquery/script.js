$(document).ready(function() {
  console.log("This script is now running!");

  $("p").hover(function() {
    $("p").css("background-color", "pink");
    $("p").css("border", "3px dashed #f442bc");
  });

  $("#Badook").click(function() {
    $("#Badook").css("border", "10px dotted blue");
  });

  $("#best").click(function() {
    $("#best").css("border", "3px solid green");
  });

});