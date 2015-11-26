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

    We learned that manipulating things in the DOM ~ "Document Object Model" with 
    JavaScript needs us to combine our knowledge of JS, HTML, & CSS.  

    A lot of the concepts that we learned in HTML and CSS got solidified; for example 
    "document.getElementById()" does not have an "s" after "Element", because there 
    can only be 1 ID of that name in an HTML file.  But "document.getElementsByTagName()" 
    and "document.getElementsByClassName()" have "s" after "Element" because a lot of 
    classes of the same name can exists simultaneously in an HTML file, and likewise for 
    a lot of tags of the same kind.  Because "getElementsByClassName()" & 
    "getElementsByTagName()" have a lot, they are actually arrays of strings and the 
    element-strings can be accessed by putting the index number in a bracket.  (Does 
    this mean that we have to count how many things use that class name or tag name 
    if we want to pick out 1 thing?)  

    I think that the reason why JS has no classes is because of the class names in CSS.  
    It would be confusing if 2 different things have the same name.  That's why JS uses 
    prototypes instead.  

    But even if someone knows CSS, they are a little different in using JS to manipulate 
    the DOM.  For example, in CSS, when we want to change the background color of an 
    element, we use "background-color" with a dash between the words.  But when using JS 
    to do the same thing, it's ".style.backgroundColor" with a camelCase to put 
    these 2 words together.  

    Also, I learned that compared to ruby-docs or even the documentation for 
    non-DOM-manipulating JS, the guides for the list of available commands/methods/functions 
    of manipulating the DOM with JS are really scattered:

    We need to go to 2 different websites for the complete list:
        - https://developer.mozilla.org/en-US/docs/Web/API/document
        - http://www.w3schools.com/jsref/dom_obj_style.asp

    But it is probably a learning experience for us about learning how to research more 
    efficiently.  

// What are some useful methods to use to manipulate the DOM?

    document.getElementById("id-name")

    document.getElementsByTagName("html-tag")

    document.getElementsByClassName("class-name")

    .appendChild

    .style

*/