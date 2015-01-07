$(function(){

  $("#todo").on("keypress", function(){
    if (event.which === 13 && $(this).val() !== ""){
      var todoText = $(this).val();
      $todo = $("<p><span>" + todoText + "</span> <input type=\"text\"> <button>x</button></p>")
      $("#todo-list").append($todo);
      $todo.find("input").hide();
      $todo.hide().slideDown(2000);
      $(this).val("");
    }

  });

//edit by double clicking
$("#todo-list").on("dblclick", "p", function(){
  var todoText = $(this).find("span").hide().text();
  $(this).find("input").show().val(todoText);
});

//saving the edit
$("#todo-list").on("keypress", "p input", function(event){
  if (event.which === 13 && $(this).val() !== ""){
      var textEdited = $(this).hide().val();
      $(this).parent().find("span").show().text(textEdited);
    }
});


//remove item
  $("#todo-list").on("click", "p button", function(){
      $(this).parent().slideUp(2000, function(){
        $(this).remove();

      });
      
  });



  // ------------------------------------------------------------
  //
  //JS version of this Jquery
  //document.getElementById("click-me").onclick = function() {
  //   document.getElementById("put-text-here").innerText = "Make love not war"
  // } 
  //Jquery Version
  $("#click-me").on("click", function(){
      $("#put-text-here").text("Make love not war");
      $(this).fadeOut(1000);  //(this) refers to #click-me

  });
});