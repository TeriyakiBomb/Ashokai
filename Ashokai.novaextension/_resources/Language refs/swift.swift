// Define a class
class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    // Define a method
    func sayHello() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

// Create an instance of the class
let person = Person(name: "John", age: 25)

// Access and modify object properties
person.name = "Jane"
person.age = 30

// Call a method
person.sayHello()

// Define a protocol
protocol Greeting {
    func greet()
}

// Implement the protocol
class Greeter: Greeting {
    func greet() {
        print("Greetings from Swift!")
    }
}

// Create an instance of the class implementing the protocol
let greeter = Greeter()
greeter.greet()

// Define a struct
struct Point {
    var x: Double
    var y: Double
}

// Define a function with parameter labels
func calculateDistance(from point1: Point, to point2: Point) -> Double {
    let dx = point2.x - point1.x
    let dy = point2.y - point1.y
    return sqrt(dx * dx + dy * dy)
}

// Call the function
let distance = calculateDistance(from: Point(x: 0, y: 0), to: Point(x: 3, y: 4))
print("Distance: \(distance)")

// Define an enum
enum Result {
    case success(message: String)
    case failure(error: String)
}

// Define a function with a Result return type
func divide(_ a: Int, by b: Int) -> Result {
    guard b != 0 else {
        return .failure(error: "Cannot divide by zero")
    }
    return .success(message: "\(a / b)")
}

// Call the function
let result = divide(10, by: 2)
switch result {
case .success(let message):
    print("Result: \(message)")
case .failure(let error):
    print("Error: \(error)")
}