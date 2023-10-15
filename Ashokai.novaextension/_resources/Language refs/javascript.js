// Variables
let name = "John Doe";
const age = 25;

// Conditional statement
if (age >= 18) {
  console.log(`Welcome, ${name}! You are eligible to vote.`);
} else {
  console.log(`Sorry, ${name}! You are not eligible to vote yet.`);
}

// Loop
const numbers = [1, 2, 3, 4, 5];
numbers.forEach((number) => {
  console.log(number);
});

// Function
function calculateSum(a, b) {
  return a + b;
}

const result = calculateSum(10, 20);
console.log(`The sum of 10 and 20 is ${result}.`);

// Object
const person = {
  name: "Jane Smith",
  age: 30,
  greet: function () {
    console.log(`Hello, my name is ${this.name}.`);
  },
};

person.greet();
