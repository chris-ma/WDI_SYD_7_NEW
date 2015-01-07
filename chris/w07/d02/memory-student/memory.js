//Global Variables

//Time that increments in the game
var timerId = 0,
    time = 0;

//arrays with letters in them.
var lettersSmall  = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E'],
    lettersMedium = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E',
                     'F', 'F', 'G', 'G', 'H', 'H', 'I', 'I', 'J', 'J'],
    lettersLarge  = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E',
                     'F', 'F', 'G', 'G', 'H', 'H', 'I', 'I', 'J', 'J',
                     'K', 'K', 'L', 'L', 'M', 'M', 'N', 'N', 'O', 'O',
                     'P', 'P', 'Q', 'Q', 'R', 'R', 'S', 'S', 'T', 'T'];

//array of letters. will change based on size of game.
var letters = _.shuffle(lettersSmall); //shuffles the text

//last card/letter you clicked on. comes from the letter divs.
var lastId = '',  //check ifthe same card clicked is the same
    lastCard = ''; //saving the first card

//Code In Here gets executed once code is ready. ie hovering, clicking events//
$(function() {

    $("#game").on("click", "div", function(){   //only run the function when you click on a div inside the game

        var index = parseInt($(this).data("id"));   //parses the string in the array to an integer
        var whichLetter = letters[index];
        $(this).text(whichLetter);
    });

    $("#small").on("click", function(){  //defines the game you want to play
      var $game = $("#game").html("");  //taken out of .appendTo($game)to prevent the code used multiple times when running the loop
     
      _.each(letters, function(letter, index){  //creates the div of each card shell
          $("<div></div>")
            .addClass("column")
            .appendTo($game)
            .data("id", index);  ///stores data in memory rather than caching 
      });
    });



});

// Initializes the game and creates the board
function startGame() {

}

// Flips a card and checks for a match
function cardClick() {
  $("div").on("click", function(){
    if (index[0]=== index[1]) {

    };
    else (index[0]!== index[1]){
      
    };

  });


}

//Add hoverclass to cards.
function hovering() {

}

//Start the timer
function startTime() {


}

//Increment the timer and display the new time
function updateTime() {
        var timer = $.timer(function() {
                alert('This message was sent by a timer.');
        });



}

//change cards to hidden
//
//if array[1] === array [2]; this matches and reveals tiles
//else incorrect and reset last 2 tiles

