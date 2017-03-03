console.log("This works!");

function addBlueBorder(event) {
  console.log("This is what happens when you click!");
  console.log(event)
  event.target.style.border = "5px dotted blue";
}

function addPinkBorder(event) {
  console.log("This is what happens when you click!");
  console.log(event)
  event.target.style.border = "5px solid pink";
}

function addGreenBorder(event) {
  console.log("This is what happens when you click!");
  console.log(event)
  event.target.style.border = "5px solid green";
}


var image = document.getElementById("Shih-Poo");
image.addEventListener("click", addBlueBorder);

var button = document.getElementsByTagName("button");
button[0].addEventListener("click", addPinkBorder);
button[1].addEventListener("click", addGreenBorder);