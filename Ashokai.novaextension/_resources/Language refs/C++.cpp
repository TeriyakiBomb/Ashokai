#include <iostream>
#include <vector>

using namespace std;

// Define a class
class Person {
private:
    string name;
    int age;

public:
    // Constructor
    Person(string name, int age) : name(name), age(age) {}

    // Member function
    void sayHello() {
        cout << "Hello, my name is " << name << " and I am " << age << " years old." << endl;
    }
};

int main() {
    // Create an instance of the class
    Person person("John", 25);

    // Call a member function
    person.sayHello();

    // Define a vector
    vector<int> numbers = {1, 2, 3, 4, 5};

    // Iterate over the vector using a range-based for loop
    for (int number : numbers) {
        cout << number << " ";
    }
    cout << endl;

    // Define a lambda function
    auto multiplyByTwo = [](int x) { return x * 2; };

    // Call the lambda function
    int result = multiplyByTwo(5);
    cout << "Result of multiplication: " << result << endl;

    // Define a template function
    template<typename T>
    T add(T a, T b) {
        return a + b;
    }

    // Call the template function
    int sum = add(3, 4);
    cout << "Sum: " << sum << endl;

    return 0;
}