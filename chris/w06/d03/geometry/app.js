// ## Geometry

// Given the following a `rectangle` object like the one below, write the following functions:

// * isSquare - Returns whether the rectangle is a square or not
// * area - Calculates the area of the rectangle
// * perimeter - Calculates the perimeter of the rectangle

// ```
// var rectangle = {
//   length: 4,
//   width: 4
// };
// ```

// Given the following a `triangle` object like the one below, write the following functions:

// * isEquilateral - Returns whether the triangle is equilateral or not
// * isIsosceles - Returns whether the triangle is isosceles or not
// * area - Calculates the area of the Triangle
// * isObtuse - Returns whether the triangle is obtuse or not

// ```
// var triangle = {
//   sideA: 3,
//   sideB: 4,
//   sideC: 4
// };
// 
// 4 sided geometry
//////////////////////
var length = 5;
var width = 4;

var isSquare ={
 if length = width{
  console.log("This is a square");
  }
  else {
  console.log("This is a rectangle");
  }
}

var area = length * width;

var perimeter = 2 * length + 2 * width;

/////////////////////////


// Triangle
// ///////////////////////

var sideA = 1;
var sideB = 2;
var sideC = 3;


var triangle ={
if (sideA == sideB == sideC){
  console.log("you have an equilateral triangle");
}
else if (sideA != sideB != sideC) {
console.log("you have a scalene triangle");
}
else 
  console.log("You have an isosceles triangle");

}


var area ={
sideA * sideB / 4

}

var is Obtuse