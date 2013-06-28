$(document).ready(function() {

  $('.cell').bind('click', function() {
    var that = this;
    window.setTimeout(function(){
      $(that).toggleClass("blue");
       hugNeighbors($(that));
     }, 1000);
  });


var congrats = function() {
  $('#gameBox').bind('click', function() {
    cellcount = $('.cell').length;
    bluecount = $('div.blue').length;
    if (cellcount === bluecount) {
      alert("congratulations");
    }
  });
};


var wipeBlue = function() {
  $('#wipe').bind('click', function() {
    $('.cell').removeClass("blue");
  });
};

var hugNeighbors = function(position){
  var rownum = position.data("row");
  var colnum = position.data("col");
  $("div.cell[data-row=" + (rownum) + "][data-col=" + (colnum + 1) + "]").toggleClass("blue");
  $("div.cell[data-row=" + (rownum) + "][data-col=" + (colnum - 1) + "]").toggleClass("blue");
  $("div.cell[data-row=" + (rownum + 1) + "][data-col=" + (colnum) + "]").toggleClass("blue");
  $("div.cell[data-row=" + (rownum - 1) + "][data-col=" + (colnum) + "]").toggleClass("blue");
};
});