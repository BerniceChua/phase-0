// DOM Manipulation Challenge


// I worked on this challenge [with: Nil Thacker].


// Add your JavaScript calls to this page:

// Release 0 aka 1:
document.getElementById("release-0").className = "done";


// Release 1 aka 2:
document.getElementById("release-1").style.display='none';


// Release 2 aka 3:
document.getElementsByTagName("H1")[0].innerHTML = "I completed release 2.";


// Release 3 aka 4:
document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4 aka 5:
var elements = document.getElementsByClassName("release-4");
var size = elements.length;

for (var i = 0; i < size; i++) {
    var instance = elements[i];
    instance.style.fontSize = "2em";
}


// Release 5 aka 6:
var template = document.getElementById("hidden");
document.body.appendChild(template.content.cloneNode(true));


/* Reflection
// What did you learn about the DOM?



// What are some useful methods to use to manipulate the DOM?



*/