// ASSESSMENT 4: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in an array, removes the first item from the array and shuffles the remaining content.

// a) Create a test with an expect statement using the variable provided.
// HINT: Check out this resource: https://jestjs.io/docs/expect#expectarraycontainingarray

describe("shuffleArray", () => {
  const colors1 = ["purple", "blue", "green", "yellow", "pink"]
  const colors2 = [
    "chartreuse",
    "indigo",
    "periwinkle",
    "ochre",
    "aquamarine",
    "saffron",
  ]
  it("returns a new array that has removed the first item from the original array and shuffled the rest of the items.", () => {
    expect(shuffleArray(colors1)).toEqual(expect.arrayContaining(colors1))
    expect(shuffleArray(colors2)).toEqual(expect.arrayContaining(colors2))
  })
})

// Expected output example (can be a different order): ["yellow", "blue", "pink", "green"]
// Expected output example (can be a different order): ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]

// b) Create the function that makes the test pass.
//Puesdo C:
// Create a function called shuffle array to match the test.
// Give the funciton one parameter 'array' too match the data to bee arguments.
//Start the function by designating a new variable called remove first that will take out the first item from the array. 
// Store indside the variable the parameter array and use the .shift() method to remove the first item.
// Next, create a for loop that will iterate through the array and set the the index to equal the array.length - 1. 
// Next, set i > 0 and we want i to decrement so set i --
// inside the for loop create a new variable that will hold the logic for the Fisher-Yates algorithm. 
// This will give a random index within the remaining elements of the array, and then swap the curren element with the random one. 
// Last return the array that has removed the first value and shuffled the rest. 

const shuffleArray = (array) => {
  let removeFirst = array.shift()
  for (let i = array.length - 1; i > 0; i--) {
    let newArray = Math.floor(Math.random() * (i + 1))
    let a = array[newArray]
    let b = array[i]
    array[i] = a
    array[newArray] = b
  }
  return array
}

// PASS  ./code-challenges.test.js
// shuffleArray
//   ✓ returns a new array that has removed the first item from the original array and shuffled the rest of the items. (1 ms)

// Test Suites: 1 passed, 1 total
// Tests:       1 passed, 1 total

// --------------------2) Create a function that takes in an object that contains up votes and down votes and returns the end tally.

// a) Create a test with expect statements for each of the variables provided.

describe("totalVotes", () => {
  const votes1 = { upVotes: 13, downVotes: 2 }
  // Expected output: 11
  const votes2 = { upVotes: 2, downVotes: 33 }
  //Expected output: -31
  it("Function that takes in an object containing up and down votes exectues a mathmatical expression to find the end total.", () => {
    expect(totalVotes(votes1)).toEqual(11)
    expect(totalVotes(votes2)).toEqual(-31)
  })
})

// b) Create the function that makes the test pass.
//Puesdo C:
//Create the functions named above(totalVotes).
// Give the funciton one parameter called 'object' to match the data we are passing in.
// To find the number of votes create a simple mathmatical formula of upvote - downvote. This will give the total.
// Since the data is in an object we need to call on the key-value pair to retrieve the information.
// This can be accomplied by dot notation.
// Place the mathmatical formula in a variable called total, so we can just return the variable for cleanliness.
// Breathe because your crushing it...

const totalVotes = (object) => {
  let uVotes = object.upVotes
  let dVotes = object.downVotes
  let total = uVotes - dVotes
  return total
}

// --------------------3) Create a function that takes in two arrays as arguments and returns one array with no duplicate values. STRETCH: Use the spread operator to pass in a dynamic number of arguments.

// a) Create a test with an expect statement using the variables provided.
describe("noDuplicates", () => {
  const dataArray1 = ["array", "object", "number", "string", "Boolean"]
  const dataArray2 = ["string", "null", "Boolean", "string", "undefined"]
  it("Function that takes in two arrays and returns one single array with no duplicate values from the original array.", () => {
    expect(noDuplicates(dataArray1, dataArray2)).toEqual([
      "array",
      "object",
      "number",
      "string",
      "Boolean",
      "null",
      "undefined",
    ])
  })
})

const dataArray1 = ["array", "object", "number", "string", "Boolean"]

const dataArray2 = ["string", "null", "Boolean", "string", "undefined"]
// Expected output: ["array", "object", "number", "string", "Boolean", "null", "undefined"]

// b) Create the function that makes the test pass.
// Puesdo C:
// Create the funciton that is designated in the test(noDuplicates)
// Give the funciton two parameters called 'arr1' and 'arr2' to match the datatype to be passed.
// inside the funciton establish a new variable that will hold both of the arrays concated. 
// After both of the arrays are joined we can return the new array with the .filter()
// Using the value and index use the .indexOf method to check if the current values index is the same as the first occurrence of that element.  

const noDuplicates = (arr1, arr2) => {
  let newArray = arr1.concat(arr2)
  return newArray.filter((item, index) => newArray.indexOf(item) === index)
}

// Test Suites: 1 passed, 1 total
// Tests:       3 passed, 3 total
// Snapshots:   0 total
// Time:        0.176 s, estimated 1 s
