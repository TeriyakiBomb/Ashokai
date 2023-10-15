package main

import "fmt"

// Struct
type Person struct {
    Name string
    Age  int
}

// Function
func calculateSum(a, b int) int {
    return a + b
}

func main() {
    // Variables
    name := "John Doe"
    age := 25

    // Conditional statement
    if age >= 18 {
        fmt.Printf("Welcome, %s! You are eligible to vote.\n", name)
    } else {
        fmt.Printf("Sorry, %s! You are not eligible to vote yet.\n", name)
    }

    // Loop
    numbers := []int{1, 2, 3, 4, 5}
    for _, number := range numbers {
        fmt.Println(number)
    }

    // Function call
    result := calculateSum(10, 20)
    fmt.Printf("The sum of 10 and 20 is %d.\n", result)

    // Struct
    person := Person{
        Name: "Jane Smith",
        Age:  30,
    }
    fmt.Printf("Hello, my name is %s.\n", person.Name)
}