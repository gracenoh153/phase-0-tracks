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

console.log(findLongestString(["long phrase","longest phrase","longer phrase"]))
console.log(findLongestString(["hello", "mush", "celebration"]))


// create function that takes two objects; check if they share at least one key-value pair
