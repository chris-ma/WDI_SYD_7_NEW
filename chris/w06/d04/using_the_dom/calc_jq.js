document.getElementById("calculator").onsubmit = function() {
  var firstNumber = parseInt($("#number_one").val());
  var secondNumber = parseInt($("#number_two").val());
  var operation = $("#operation").val();
 
  var resultElement = document.getElementById("result");
 
  if (operation === "add") {
    resultElement.innerHTML = firstNumber + secondNumber;
  } else if (operation === "subtract") {
    resultElement.innerHTML = firstNumber - secondNumber;
  } else if (operation === "multiply") {
    resultElement.innerHTML = firstNumber * secondNumber;
  } else if (operation === "divide") {
    resultElement.innerHTML = firstNumber / secondNumber;
  }
}