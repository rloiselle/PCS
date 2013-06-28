$(document).ready(function() {

  $('div').on('click', function() {
    setTimeout(function(){
      var color = $('div').css('background-color', 'green');
    $("div").text("I am a nerdy box of " + color + " color");
     }, 1000);
  });

});


// This works but doesn't the scoping is wrong
  // $('div').on('click', function() {
  //   setTimeout(function(){
  //     var color = $('div').css('background-color', 'green');
  //    }, 1000);
  //   $("div").text("I am a nerdy box of " + color + " color");
  // });


// This also works. just that line 20 can't be in side the timeout
  // $('div').on('click', function() {
  //   var that = this;
  //   setTimeout(function(){
  //     var color = $(that).css('background-color', 'green');
  //    }, 1000);
  //   $("div").text("I am a nerdy box of " + color + " color");
  // });
