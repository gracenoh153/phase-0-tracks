// create a function that will take a string parameter, then reverse it
  // set new variable equal to empty string
  // write a for loop with following statements:
    // sets "i" equal to (string length - 1); this will be the last character of the string
    // set "i" greater than or equal to 0, so that the loop ends once it's done iterating thru string
    // subtract 1 from "i" each time through the loop 

  // example: reverse("hello") should return "olleh"


function reverse(string) {

  var reversedString = ""; 
  
  for (var i = string.length - 1; i >= 0; i--) {
    reversedString += string[i]; 
  }
  return reversedString;
}


// DRIVER CODE

console.log(reverse("hello"));
console.log(reverse("Hello!"));
console.log(reverse("It works!!"));

wordForGateInJejuIsland = reverse("hello");

if (1 == 1) {
  console.log(wordForGateInJejuIsland);
}