// TEST WEEK 4 TO DO:

// Finding elements
// Adding click handlers
// Creating elements
// Adding resilient click handlers
// Ajax

$('document').ready(function(){

  $("div.cell").css("border", "2px solid red");

  $(".cell").on('click', function() {
    $(this).css("border-radius", "25px");
  });

  $("#gameBox").before("<p> This is a game.  Click on the boxes to see what happens.</p>");


  $("button").click(function(){
    $.ajax({url:"demo_test.txt",success:function(result){
      $("#div1").html(result);
    }});
  });

});
