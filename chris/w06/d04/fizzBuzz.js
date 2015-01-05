// Morning Exercise: Build "FizzBuzz"
// Count from 1 to 100 replacing every number divisible by 3 with "Fizz" and every number divisible by 5 with "Buzz" and all numbers divisible by both with "FizzBuzz".

  // var fizzBuzz = function(number){
  // (number = 0; number <= 100; number++);
  //   document.write("Number " + number + "<br>");
  // }


  // console.log(typeof fizzBuzz.prototype);


  // fizzBuzz.prototype.getName = function(number)
  // {
  // if number % 3 == 0
  //   console.log("Fizz");
  // else if number % 5 == 0
  //   console.log("Buzz");
  // else if number % 3 ==0 && number % 5 == 0
  //   console.log("FizzBuzz");
  // else
  // }


for (var i = 0; i <= 100; i++) {
  if (i % 3 === 0 && i % 5 === 0) {
    console.log("FizzBuzz");
  } else if (i % 3 === 0) {
    console.log("Fizz");
  } else if (i % 5 === 0) {
    console.log("Buzz");
  } else {
    console.log(i);
  }
}
