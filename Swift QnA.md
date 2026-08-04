# 1. What are optionals in Swift, and how do you unwrap them?
- Optionals in Swift represent the possibility of a variable having a value or being nil. They are used to handle missing data. You declare an optional by adding a question mark (?) to the type.

- Example:
var name: String? = "John" // Optional variable

// Unwrapping using if-let
if let unwrappedName = name {
    print("Name is \(unwrappedName)")
} else {.
    print("Name is nil")
}


// Force unwrapping (use only when you're certain the value is not nil)
print(name!)  // Output: "John" (if not nil)

- Other ways to unwrap:

Optional binding (if-let or guard-let)
Force unwrapping (!)
Nil coalescing (??)

# 2. What is the difference between class and struct in Swift?
- Class
    - Reference Type: Imagine a class like a shared document. When many people open the same document, they're all looking at the same thing. If someone makes changes, everyone sees those changes because they're looking at the same paper.
    - Inheritance: Classes can have children, like a family tree. A child can inherit traits from their parents. For example, a "Car" class can have a child class like "SportsCar" that inherits features from the parent class.
    - Mutable: You can change a class after you create it. It's like being able to erase and rewrite on a piece of paper.
- Structs
    - Value Type: Think of a struct like a personal notebook. When you copy it, you get your own new notebook. If you make notes in your notebook, it doesn't affect someone else's notebook because they each have their own separate pages.
    - No Inheritance: Structs can't have children or parents. Each struct is on its own; they can't inherit anything from other structs.
    - Immutable: Once you create a struct, you can't change it. It's like having a notebook with pages that can't be erased or rewritten.

Example:

struct PersonStruct {
    var name: String
}

class PersonClass {
    var name: String
}

var person1 = PersonStruct(name: "Alice")
var person2 = person1
person2.name = "Bob"
print(person1.name)  // Output: "Alice" (Value type)

var classPerson1 = PersonClass()
classPerson1.name = "Alice"
var classPerson2 = classPerson1
classPerson2.name = "Bob"
print(classPerson1.name)  // Output: "Bob" (Reference type)

# 3. Can you explain value types vs. reference types?
Value types: Data is copied when assigned or passed. Changes made in one instance do not affect the other. Examples: struct, enum, tuple.
Reference types: Data is shared when assigned or passed, and changes affect all references. Example: class.
- Example:

struct Point {
    var x: Int
    var y: Int
}

var pointA = Point(x: 5, y: 6)
var pointB = pointA // Copy of pointA
pointB.x = 10

print(pointA.x)  // Output: 5 (value type)

class Circle {
    var radius: Double
    init(radius: Double) { self.radius = radius }
}

let circleA = Circle(radius: 5)
let circleB = circleA // Reference to circleA
circleB.radius = 10

print(circleA.radius)  // Output: 10 (reference type)

# 4. What are closures in Swift? How do you handle memory management in closures (capturing list)?
A closure is a self-contained block of functionality that can be passed around and used in code. Closures can capture and store references to variables and constants from the surrounding context.

- Example:

let closureExample = { (name: String) in
    print("Hello, \(name)!")
}
closureExample("Alice") // Output: Hello, Alice!

- Memory Management in Closures (Capturing List): Closures can create strong reference cycles. To avoid this, use weak or unowned references inside a closure.
- Example with [weak self]:

class ExampleClass {
    var name = "Example"
    
    func createClosure() {
        let closure = { [weak self] in
            print(self?.name ?? "No name")
        }
        closure()
    }
}

let example = ExampleClass()
example.createClosure()  // Output: Example

# 5. What is the purpose of guard statements?
The guard statement is used to transfer program control out of a scope if one or more conditions aren't met. It's commonly used for early exits in functions.

- Example:

func checkAge(age: Int?) {
    guard let age = age, age >= 18 else {
        print("You are not allowed to enter.")
        return
    }
    print("Welcome!")
}

checkAge(age: 20)  // Output: Welcome!
checkAge(age: 15)  // Output: You are not allowed to enter.

# 6. What is defer in Swift, and when do you use it?
defer is used to execute a block of code just before execution leaves the current scope, regardless of how that happens (e.g., normal return or error).

Example:

func fileHandling() {
    print("Start reading file")
    defer {
        print("Close file")  // This will always run
    }
    print("Process file")
}

fileHandling()
// Output:
// Start reading file
// Process file
// Close file

# 7. What is a protocol in Swift, and how do you use it?
A protocol defines a blueprint of methods, properties, or other requirements that suit a particular task or piece of functionality. Classes, structs, or enums can adopt and conform to protocols.

- Example:

protocol Vehicle {
    var speed: Int { get }
    func describe()
}

struct Car: Vehicle {
    var speed: Int
    
    func describe() {
        print("Car is moving at \(speed) km/h")
    }
}

let myCar = Car(speed: 120)
myCar.describe()  // Output: Car is moving at 120 km/h

# 8. How does Swift manage memory (ARC)? What are strong, weak, and unowned references?
Swift uses Automatic Reference Counting (ARC) to manage memory for class instances. ARC automatically keeps track of the number of references to each instance and deallocates memory when references reach zero.

Strong reference: The default reference type. As long as there's a strong reference to an object, ARC keeps it alive.
Weak reference: Used to avoid reference cycles. It's optional and doesn't hold a strong reference, so ARC can deallocate the object.
Unowned reference: Similar to weak, but assumes the object will never be nil after it's been initialized.
- Example of Strong, Weak, and Unowned references:

class Person {
    var pet: Pet?
    deinit { print("Person deinitialized") }
}

class Pet {
    weak var owner: Person? // weak reference to avoid strong reference cycle
    deinit { print("Pet deinitialized") }
}

var john: Person? = Person()
var dog: Pet? = Pet()

john?.pet = dog
dog?.owner = john

john = nil  // Now both john and dog can be deallocated
dog = nil
// Output:
// Person deinitialized
// Pet deinitialized
In the above example, the weak reference ensures that Person and Pet don't hold each other in memory unnecessarily.