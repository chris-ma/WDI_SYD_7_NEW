
//objcts (known as hashes in Ruby)

var myObject = {
jack : '21',
wolf : 'unknown',
displayAges: function(){
  console.log(this.jack);
  console.log(this.wolf);
}
};
myObject.displayAges();

console.log(myObject["jack"]);
console.log(myObject["wolf"]);
console.log(myObject.jack);
console.log(myObject.wolf);
console.log(Object.keys(myObject));

//functions
var vito = function(greeting){
console.log(greeting + " Vito");

}; //statement

vito("Hello!");


//function  vito (argument){  } //declaration


//constructors

var Todo = function (attributes){
  this.text = attributes.text;
};

var myTodo  = new Todo({ text: "Do the dishes"});

console.log(myTodo.text);
console.log(myTodo.createdAt);

//Prototypes

Todo.prototype.display = function() {
  console.log("Todo: " + this.text + " - created at" + this.createdAt.toLocaleString());
}

Todo.prototype.checkOff = function() {
  this.complete = !this.complete;
}


    myTodo.display();
    
