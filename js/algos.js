// find the longest phrase
  // create function that takes an array as a parameter
  // create a loop inside function that iterates through each element of the array
    // get length of each element of the array
    // if current element length is longer than the one before it, store as longest string
  // return longest element of the array as a string
  // 

function findLongestString(string) {
  
  var longestString = "";

  for (var i = 0; i < string.length; i++) {
      if (string[i].length > longestString.length) {
        longestString = string[i];
      }
  }
  return longestString; 
}

// DRIVER CODE

// this should return "longest phrase"
console.log(findLongestString(["long phrase","longest phrase","longer phrase"])); 
// this should return "celebration"
console.log(findLongestString(["hello", "mush", "celebration"]));



// find key-value match
  //create function that takes two objects as parameter
    // check if they share common key
      // if they share common key, check if they have common value
    // return true if they have at least one key-value pair in common
    // return false if nothing in common
  // return boolean value

function keyValueMatch(object1, object2) {

  var matchingKeyValue = false;

  for (var key in object1) { 
    if (key in object2) { // if object2 has same key as object1 (interesting.. a for loop seems to work as well)
      if (object1[key] == object2[key]) { // compare values of common key pairs
        matchingKeyValue = true; 
      } 
    }
  }
  return matchingKeyValue; 
}

// DRIVER CODE

// this should return "true"
console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
// this should return "true"
console.log(keyValueMatch({name: "Barney", age: 63}, {name: "Barney", age: 35}));
// this should return "false"
console.log(keyValueMatch({name: "Barney", height: 63}, {name: "Kensie", weight: 135}));



// generate random test data
  // create a function that takes an integer as a parameter 
  // words must very in length with min 1 letter and max 10 letters
  // return an array of strings with length of integer
    // create an empty array to store randomly generated words 
    // create string with entire alphabet 
    // create empty string to store letters in 
      // generate random number btwn 1 and 10 
        // generate random number bwtn 1 and 26
          // add the letter that corresponds with number into string
            // push string into array 
// research Javascript random number generator 
  // Math.floor((Math.random() * 10) + 1); <--- returns number btwn 1 & 10 
  // Math.floor((Math.random() * 100) + 1); <--- returns number btwn 1 & 100

function generateRandomWords(integer) {

  var randomWordArray = [];
  var alphabet = "abcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i < integer; i++) {

    var randomWord = "";
    var randNumBtwn1n10 = Math.floor((Math.random() * 10) + 1);

    for (var x = 0; x < randNumBtwn1n10; x++) {

      var randNumBtwn1n26 = Math.floor((Math.random() * 26) + 1);

      randomWord = randomWord + alphabet[randNumBtwn1n26];
    }
    randomWordArray.push(randomWord);
  }
  return randomWordArray; 
}


