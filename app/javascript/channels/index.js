// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
let player = "チェン";
console.log(player);
player = "バース";
let number = 2;
number = 5;
console.log(number);
number += 3
console.log(number);
if (number > 5) {
  console.log("numberは5より大きい");
}
const oddNumber = 200;
if (oddNumber === 200){
  console.log("oddNumberは200です");
}

let addNumber = 10;
if (addNumber > 20) {
  console.log("addNumberは20より大きい");
} else if(addNumber > 5){
  console.log()
} else{
  console.log("addNumberは5以下")
}