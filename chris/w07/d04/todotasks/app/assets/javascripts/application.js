// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){
  $("body").on("click", ".todo button", function(){   //creating the delete
    var $todo = $(this).parent(); //parent goes up a level
    var todoID = $todo.attr("data-id");   

    $todo.hide();

    $.ajax({
      method: "POST",
      url: "/todos/" + todoID,
      dataType: "json",
      data:{
        _method:"DELETE"
      },
      complete: function(){
        $todo.remove();
      },
      error: function(){
        alert("sorry something went wong...");
        $todo.show();
      }
    });
  });
});

$(function(){                           //creating the data entry point
  $("#add-todo").on("keypress" function(event){
      if (event.keyCode === 13 && $(this).val() !==""){
        $.ajax({
            method:"POST",
            url:"/todos",
            dataType: "json",
            data:{
              todo: {
              text: $(this).val()
            }
          },
          success: function(todo){
           $("body").append("<p data-id=\" " + text +"\" class=\"todo\" ><span>" + todo.text + "</span></p>");
          }
        }):
      }
  });

    $("body").on("click", ".todo span", function(){

      var todoURL= "/todos/" + $(this).parent().attr("data-id");  //creates an ID for each text attribute
        var self = this;
        $.getJSON(todoURL, function(todo){     
        $(self).append("<div>" + todo.notes+ "</div>");
        });
    });


    $.getJSON("/todos", function(todos){   //  creating the text on the screen           //$.getJSON is the short hand for AJAX
        $.each(todos, function(index, todo){
            $("body").append("<p data-id=\" " + text +"\" class=\"todo\" >" + todo.text + "</p>");
        });
    });
});










/// FYI for my code reference



// $function(){
//   $("#add-todo").on("submit", function(event){  //
//       //console.log("submitted");

//   var text = $("#todo-text").val(); //text value captured
//   var notes = $("#todo-notes").val(); //notes value captured
//   var completed = $("#todo-completed").prop("checked"); //checking if the check box is returning true or false. .prop is like attr


// //LOWER LEVEL method
//   $.ajax({  //runs data through Ajax- converting data to JSON format
//     url:"/todos",
//     method: "POST",// remove method and todo data if you want GET 
//     dataType:"json",
//     data:{  //form action
//       todo:{                  //this area gets converted as a todotask_params. DELETE does not need the information inside todo
//         text:"Do the dishes",
//         notes: "get liquid",
//         completed:false
//       }
//       //_method: "PATCH"
//     },
//     success:function(data){ // server request successful

//     },
//     failure: function(data){ //server request error

//     }
//   })
// //////////

//   $.post("/todos/:id", {todo:
//                        {text: text, 
//                        notes: notes, 
//                        completed: completed}, 
//                        _method:"Delete"  
//                      //_method: "PATCH" //{keys: variables}

//   }, 
//   function(data){ //what the server sends back data. redirecting the Json
//     // console.log(data);

//    // $("body").append("<p>" + data.text + "</p>");  //for patch

//   },
//   "json");



//   event.preventDefault(); //prevent no input

//   });
// };