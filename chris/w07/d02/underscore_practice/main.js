// window.onload = function(){
// //configuring the template
//   var templateString = _.unescape(document.getElementById("hello-template").innerHTML); //links witht he div container template
//   var helloWorldTemplate = _.template(templateString);

//   //outputs
//   var theHTML = helloWorldTemplate({name: "Chris"});
//   var moreHTML = helloWorldTemplate({name:"Alan the kid"});

// //concatinate the outputs
//   document.getElementById("container").innerHTML = theHTML + moreHTML;

// }

var Todo = function(text){
  this.text = text;
  this.createdAt = new Date();
}

window.onload = function(){
  var todos = [
    new Todo("Do the dishes"),
    new Todo("Hang out the washing"),
    new Todo("Learn Javascript (also known as Java)")
  ];
  var templateString = _.unescape(document.getElementById("todo-template").innerHTML);
  var todoTemplate = _.template(templateString);

  _.each(todos, function(todo){
      document.getElementById("container").innerHTML += todoTemplate(todo);
  })


}