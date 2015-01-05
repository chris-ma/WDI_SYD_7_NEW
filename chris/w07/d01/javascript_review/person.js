//create contructor

var Person = function(action){

this.name = action.name;
this.age = action.age;
this.gender = action.gender;

};



//create prototypes

Person.prototype.speak = function(){
  console.log(this.name + " says 'hello I am speaking' ");
}

Person.prototype.walk = function(){
  console.log(this.name + " took a step");
}



var chris = new Person({
  name: "Chris",
  age: " 31 ",
  gender: "male"

});

chris.speak();
chris.walk();





