# Variables
name = "John Doe"
age = 25

# Conditional statement
if age >= 18:
    print(f"Welcome, {name}! You are eligible to vote.")
else:
    print(f"Sorry, {name}! You are not eligible to vote yet.")

# Loop
numbers = [1, 2, 3, 4, 5]
for number in numbers:
    print(number)

# Function
def calculate_sum(a, b):
    return a + b

result = calculate_sum(10, 20)
print(f"The sum of 10 and 20 is {result}.")

# Dictionary
person = {
    "name": "Jane Smith",
    "age": 30
}

print(f"Hello, my name is {person['name']}.")

# Class
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def calculate_area(self):
        return self.width * self.height

rectangle = Rectangle(5, 10)
area = rectangle.calculate_area()
print(f"The area of the rectangle is {area}.")
