 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: rock-paper-scissors
// Overall mission: the user will play rock-paper-scissors with the computer
// Goals: the computer will randomly generate either "rock" or "paper" or 
//          "scissors", and the human should beat the computer based on the rules
//          of rock-paper-scissors.  
// Characters: the human player vs the computer
// Objects: movesList, player, computer
// Functions: getUserInput, getComputerInput, match

// Pseudocode
/*
Step 1: the player gives either rock, paper, or scissors
Step 2: the AI will randomly generate either a rock or paper or scissors 
        as a response
Step 3: the game will compare the response of the player and the computer/AI.
    Step 3.1: IF the player answers rock, and the AI answers scissors, 
        the player wins.  
    Step 3.2: IF the player answers rock, and the AI answers paper, 
        the computer wins.  
    Step 3.3: IF the player answers scissors, and the AI answers paper, 
        the player wins.  
    Step 3.4: IF the player answers scissors, and the AI answers rock, 
        the computer wins.
    Step 3.5: IF the player answers paper, and the AI answers rock, 
        the player wins.  
    Step 3.6: IF the player answers paper, and the AI answers scissors, 
        the computer wins.
    Step 3.6: IF the player AND the AI/computer have the same answers, 
        it is a tie.  
Step 4: the game will give the score
*/
//
//
//
//
//

// Initial Code

var movesList = {
    rock: {
        strongAgainst: "scissors", 
        weakAgainst: "paper", 
    }, 
    paper: {
        strongAgainst: "rock", 
        weakAgainst: "scissors", 
    }, 
    scissors: {
        strongAgainst: "paper", 
        weakAgainst: "rock", 
    }, 
    randomizer: ["rock", "paper", "scissors"], 
};

var player = {
    score: 0, 
};

var computer = {
    score: 0, 
};

function getUserInput() {
    var playerMove = process.argv;

    return playerMove[2];
};

function getComputerInput() {
    randNum = Math.floor((Math.random()*3));

    return movesList.randomizer[randNum];
}

var match = function() {
    var userInput = getUserInput();
    var compAnswer = getComputerInput();
    
    console.log("You = " + userInput);
    console.log("computer = " + compAnswer);

    if (compAnswer === movesList[userInput].strongAgainst) {
        console.log(userInput + " beats " + compAnswer + ".");
        console.log("You won 1 point!"); 
        player.score += 1;
        return player["score"];
    } else if (compAnswer === movesList[userInput].weakAgainst) {
        console.log(compAnswer + " beats " + userInput + ".");
        console.log("You lost!"); 
        
        computer.score += 1;
        return computer["score"];
    } else {
        return "It's a tie.";
    }
};

console.log(match());
console.log("Your score = " + player["score"]);
console.log("Computer score = " + computer.score);

// console.log(match());
// console.log("Your score = " + player["score"]);
// console.log("Computer score = " + computer.score);

// console.log(match());
// console.log("Your score = " + player["score"]);
// console.log("Computer score = " + computer.score);

// console.log(match());
// console.log("Your score = " + player["score"]);
// console.log("Computer score = " + computer.score);



// Refactored Code

var movesList = {
    rock: {
        strongAgainst: "scissors", 
        weakAgainst: "paper", 
    }, 
    paper: {
        strongAgainst: "rock", 
        weakAgainst: "scissors", 
    }, 
    scissors: {
        strongAgainst: "paper", 
        weakAgainst: "rock", 
    }, 
};

var player = { score: 0, };

var computer = { score: 0, };

function getUserInput() {
    return process.argv[2];
};

function getComputerInput() {
    return Object.keys(movesList)[Math.floor((Math.random()*3))];
}

var match = function() {
    var userInput = getUserInput();
    var compAnswer = getComputerInput();
    
    console.log("You = " + userInput);
    console.log("computer = " + compAnswer);

    if (compAnswer === movesList[userInput].strongAgainst) {
        console.log(userInput + " beats " + compAnswer + ".");
        console.log("You won 1 point!"); 
        player.score += 1;
        return player["score"];
    } 

    if (compAnswer === movesList[userInput].weakAgainst) {
        console.log(compAnswer + " beats " + userInput + ".");
        console.log("You lost!"); 
        
        computer.score += 1;
        return computer["score"];
    } 

    return "It's a tie.";
};

console.log(match());
console.log("Your score = " + player["score"]);
console.log("Computer score = " + computer.score);





// Reflection
/*
Release 7: Reflect
In the reflection section of your game.js file, answer the following questions:

1. What was the most difficult part of this challenge?
    3 things:
        1) deciding what game to make, because I have many ideas.
        2) decided on a "simple" game (a match-3 in a row/column game), but it was 
            more complex than I thought, and it takes more time and skills than what 
            I have.  FOR NOW.  
        3) time.  'Nuff said.

2. What did you learn about creating objects and functions that interact with 
one another?
    IN JS, to call a function AND have it run, it needs the parentheses at the end.  

3. Did you learn about any new built-in methods you could use in your refactored 
solution? If so, what were they and how do they work?
    I learned about Object.keys(), which makes an array out of the keys of an 
    object.  It was great, because it allowed me to delete this key-value pair 
    from "movesList" -- "randomizer: ["rock", "paper", "scissors"]".  Instead, 
    I can make the choosing of which key I want to be separated in a different 
    function instead of in the movesList.  This makes more sense, because 
    "randomizer" is not a valid move in real-life rock-paper-scissors.  

4. How can you access and manipulate properties of objects?
    To access and manipluate properties of objects, it is the same as 
    accessing and manipulating keys and values of hashes in Ruby.  
*/
//
//
//
//
//
//
//
//






















// Your m ission description: match-3 until the timer runs out 
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
// var board = {
//     rows: [],
//     columns: 10,
//     // squares: ,
// };

// var square = {
//     number: Math.floor((Math.random()*9) + 1),
//     // position: [posX, posY], 
// };
// // console.log(square.number);

// var boardmaker = function() {
//     for (var column = 0; column < board.columns; column++) {
//         board["rows"].push(square.number);
//         console.log(board["rows"]);
//     }
// }
// console.log(boardmaker());

// // var matchChecker = function() {
// //     var score = 0;
// //     while (score < 20) {
// //         for (square in squares)

// //             score++;
// //         }
// //     }
// // }




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