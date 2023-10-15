using System;

// Class
public class Person
{
    public string Name { get; set; }
    public int Age { get; set; }
}

class Program
{
    static void Main(string[] args)
    {
        // Variables
        string name = "John Doe";
        int age = 25;

        // Conditional statement
        if (age >= 18)
        {
            Console.WriteLine($"Welcome, {name}! You are eligible to vote.");
        }
        else
        {
            Console.WriteLine($"Sorry, {name}! You are not eligible to vote yet.");
        }

        // Loop
        int[] numbers = { 1, 2, 3, 4, 5 };
        foreach (int number in numbers)
        {
            Console.WriteLine(number);
        }

        // Function
        int result = CalculateSum(10, 20);
        Console.WriteLine($"The sum of 10 and 20 is {result}.");

        // Class
        Person person = new Person
        {
            Name = "Jane Smith",
            Age = 30
        };
        Console.WriteLine($"Hello, my name is {person.Name}.");
    }

    // Function
    static int CalculateSum(int a, int b)
    {
        return a + b;
    }
}