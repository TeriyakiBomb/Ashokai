// Define a class
class Person {
  private name: string;
  private age: number;

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }

  // Define a method
  sayHello(): void {
    console.log(
      `Hello, my name is ${this.name} and I am ${this.age} years old.`
    );
  }
}

// Create an instance of the class
const person = new Person("John", 25);

// Access and modify object properties
person.name = "Jane";
person.age = 30;

// Call a method
person.sayHello();

// Define an interface
interface Greeting {
  greet(): void;
}

// Implement the interface
class Greeter implements Greeting {
  greet(): void {
    console.log("Greetings from TypeScript!");
  }
}

// Create an instance of the class implementing the interface
const greeter = new Greeter();
greeter.greet();

// Define a type alias
type Point = {
  x: number;
  y: number;
};

// Define a function with type annotations
function calculateDistance(point1: Point, point2: Point): number {
  const dx = point2.x - point1.x;
  const dy = point2.y - point1.y;
  return Math.sqrt(dx * dx + dy * dy);
}

// Call the function
const distance = calculateDistance({ x: 0, y: 0 }, { x: 3, y: 4 });
console.log(`Distance: ${distance}`);

// Define a union type
type Result = number | string;

// Define a function with a union type return
function divide(a: number, b: number): Result {
  if (b === 0) {
    return "Cannot divide by zero";
  }
  return a / b;
}

// Call the function
const result: Result = divide(10, 2);
console.log(`Result: ${result}`);
