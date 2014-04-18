function renderGrid(count) {
    var width  = ( 600 / count ) - 2;
    var height = ( 600 / count ) - 2;
    var totalSquares = ( count * count );

    var container = $("#container");
    container.empty();

    var text = "";
    for (var i = 0; i < totalSquares; i++) {
      text += ('<div class="square" style="width: '+ width + 'px; height: '+ height +'px;"></div>');
    }

    container.append(text);
}

function setupGrid(count, button_id) {
  $("#count").val(count);

  renderGrid(count);

  if (typeof(button_id) === 'undefined') { var button_id = 'regular_button'; }

  if (button_id == 'rainbow_button') {
    $(".square").on('mouseenter', function(){
      $(this).css({"background-color": randomColor()});
    });
  } else if (button_id == 'ghost_button') {
    $(".square").css({"background-color":"red"});

    $(".square").on('mouseenter', function(){
      $(this).fadeTo(500,0,"linear");
    });
    $(".square").on('mouseleave', function(){
      $(this).fadeTo(500,1,"linear");
    });
  } else if (button_id == 'shade_button') {
    $(".square").css({"background-color":"red"});

    $(".square").on('mouseenter', function(){
      var op = $(this).css("opacity");
      $(this).css("opacity", ( op > 0.1 ) ? ( op - 0.25 ) : op );
    });
  } else {
    $(".square").on('mouseenter', function(){
      $(this).css({"background-color":"red"});
    });
  }

  $(".button").on('click', function() {
    $(".square").removeClass("paint");
    var count = $("#count").val() || 25;
    var button_id = this.id;
    setupGrid(count, button_id);
  });
}

function randomColor() {
  return '#'+(0x1000000+(Math.random())*0xffffff).toString(16).substr(1,6);
}

$(document).ready( setupGrid(25) );
