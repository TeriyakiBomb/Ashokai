# Define a class
class Person
  attr_accessor :name, :age

  # Initialize the object
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Define an instance method
  def say_hello
    puts "Hello, my name is #{@name} and I am #{@age} years old."
  end
end

# Create an instance of the class
person = Person.new("John", 25)

# Access and modify object attributes
person.name = "Jane"
person.age = 30

# Call an instance method
person.say_hello

# Define a module
module Greeting
  def greet
    puts "Greetings from Ruby!"
  end
end

# Include the module in the class
class Person
  include Greeting
end

# Call the method from the included module
person.greet

# Define a block
3.times do |i|
  puts "Iteration #{i + 1}"
end

# Define a lambda
addition = ->(a, b) { a + b }

# Call the lambda
result = addition.call(5, 3)
puts "Result of addition: #{result}"