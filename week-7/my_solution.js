 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: match-3 until the timer runs out 
//    (inspired by http://farm.avocadolite.com/game.phtml)
// Overall mission: match 3 squares until the timer runs out 
//    (inspired by http://farm.avocadolite.com/game.phtml)
// Goals: get a high score until the timer runs out.
// Characters:
// Objects:
// Functions:

// Pseudocode
/*
Step 1: make the board (random numbers between 1 to 9 for now, will change to pictures in the future)
Step 2: IF the player clicks on a square, it gets selected
Step 3: IF the player clicks/selects on any square beside it (left or right or up or down), 
        it will switch places with the other clicked/selected square.
    Step 3.1: the game will check if the moved squares will make 3 matches 
    (only horizontally and/or vertically, not diagonally).
        Step 3.1.1: IF the moved squares make a match of 3 diagonally and/or vertically,
            the 3 matching squares will disappear, and the squares vertically on top will
            fall down to take its place.
        Step 3.1.2: IF the squares don't match, 
            the squares return to their original position.
Step 4: repeat everything in Step 3 until the timer runs out.
Step 5: when the timer runs out, it will give the player a score.
*/
//
//
//
//
//

// Initial Code
var board = {
    rows: [],
    columns: 10,
    // squares: ,
};

var square = {
    number: Math.floor((Math.random()*9) + 1),
    // position: [posX, posY], 
};
// console.log(square.number);

var boardmaker = function() {
    for (var column = 0; column < board.columns; column++) {
        board["rows"].push(square.number);
        console.log(board["rows"]);
    }
}
console.log(boardmaker());

// var matchChecker = function() {
//     var score = 0;
//     while (score < 20) {
//         for (square in squares)

//             score++;
//         }
//     }
// }




// Refactored Code






// Reflection
//
//
//
//
//
//
//
//