//constructors

var Todo = function (attributes){
  this.text = attributes.text;
};

var myTodo  = new Todo({ text: "Do the dishes"});

console.log(myTodo.text);
console.log(myTodo.createdAt);

//Prototypes

Todo.prototype.display = function() {
  console.log("Todo: " + this.text + " - created at" + this.createdAt);
}

Todo.prototype.checkOff = function() {
  this.complete = !this.complete;
}


    myTodo.display();
    