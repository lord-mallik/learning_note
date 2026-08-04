# Mobile Developer Interview Preparation Guide

---

# Day 1: Android + Java (50% of Interview)

## Core Java (Highest Priority)

### OOPs
- What are the four pillars of OOP?
  
1. Encapsulation – Wrapping data and methods together into a single unit (class) and restricting direct access to internal data using access modifiers like private, protected, and public.
2. Abstraction – Hiding implementation details and exposing only the necessary functionality to the user.
3. Inheritance – Allowing one class to acquire properties and behaviors of another class, promoting code reusability.
4. Polymorphism – Allowing objects to take multiple forms, mainly through method overloading and method overriding.
  
- Difference between Abstraction and Encapsulation?
  
| Feature | Abstraction | Encapsulation |
|----------|-------------|---------------|
| **Definition** | Hiding implementation details and showing only functionality. | Wrapping data and methods together and restricting direct access. |
| **Focus** | What an object does. | How data is protected. |
| **Achieved Using** | Abstract classes and interfaces. | Access modifiers (`private`, `protected`, `public`). |
| **Purpose** | Simplify complexity. | Protect data integrity. |
| **Example** | ATM machine showing only deposit/withdraw options. | Bank account balance being private and accessed through methods. |

### In simple terms:
  -  Abstraction hides complexity.
  - Encapsulation hides data and controls access to it.
##  
- Difference between Interface and Abstract Class?

| Feature | Interface | Abstract Class |
|----------|-----------|---------------|
| **Methods** | Only abstract methods (Java 7); can have `default` and `static` methods (Java 8+). | Can have both abstract and concrete methods. |
| **Variables** | `public`, `static`, and `final` by default. | Can have instance variables with any access modifier. |
| **Inheritance** | A class can implement multiple interfaces. | A class can extend only one abstract class. |
| **Purpose** | Define a contract or capability. | Provide a common base with partial implementation. |
| **Constructor** | Cannot have constructors. | Can have constructors. |

### Use Interface when:
- You want multiple inheritance of behavior.
- You are defining capabilities like Drivable, Serializable.

### Use Abstract Class when:
- You want to share common code among related classes.
- You need constructors or state management.
##

- What is Polymorphism?

**Polymorphism** means **"many forms."** It allows the same method or object reference to behave differently based on the context.

## Types of Polymorphism

### 1. Compile-time Polymorphism (Method Overloading)

- The method is selected during **compilation**.
- Achieved by defining multiple methods with the same name but different parameters (number, type, or order of parameters).

### 2. Runtime Polymorphism (Method Overriding)

- The method is selected during **runtime**.
- Achieved when a subclass provides its own implementation of a method already defined in its parent class.

## Example: Runtime Polymorphism

```java
class Animal {
    void sound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal animal = new Dog();
        animal.sound();
    }
}
```

### Output

```text
Dog barks
```

### Explanation

- `animal` is a reference of type `Animal`.
- It refers to an object of type `Dog`.
- At runtime, Java determines that the actual object is `Dog`.
- Therefore, the overridden `sound()` method in `Dog` is executed.

This is called **runtime polymorphism** or **dynamic method dispatch**.

- Method Overloading vs Method Overriding?

| Feature | Method Overloading | Method Overriding |
|----------|-------------------|------------------|
| **Definition** | Same method name with different parameters. | Redefining a parent class method in a child class. |
| **Occurs In** | Same class. | Parent-child classes. |
| **Polymorphism Type** | Compile-time. | Runtime. |
| **Return Type** | Can differ if parameters differ. | Must be same or covariant. |
| **Access Modifier** | No specific rule. | Cannot reduce visibility of parent method. |
| **Example** | `add(int, int)`, `add(double, double)` | `Dog.sound()` overriding `Animal.sound()` |
| **Method Signature** | Must be different. | Must be the same. |
| **Binding** | Static Binding (Early Binding). | Dynamic Binding (Late Binding). |

## Key Difference

- **Method Overloading** = Same method name, **different parameters (signatures)**.
- **Method Overriding** = Same method signature, **different implementation** in the child class.
##
- What is Inheritance? **Inheritance** is an OOP concept where a child class acquires the properties and behaviors of a parent class. It promotes code reuse and establishes an **"is-a" relationship**.

## Example

```java
class Vehicle {
    void start() {
        System.out.println("Vehicle Started");
    }
}

class Car extends Vehicle {
    void drive() {
        System.out.println("Car is Driving");
    }
}

public class Main {
    public static void main(String[] args) {
        Car car = new Car();
        car.start();   // Inherited from Vehicle
        car.drive();
    }
}
```

### Output

```text
Vehicle Started
Car is Driving
```

**Explanation:**  
Here, `Car` inherits the `start()` method from `Vehicle`.

---

## Types of Inheritance in Java

| Type | Description |
|--------|-------------|
| **Single Inheritance** | One child class inherits from one parent class. |
| **Multilevel Inheritance** | A class inherits from another inherited class. |
| **Hierarchical Inheritance** | Multiple child classes inherit from the same parent class. |
| **Multiple Inheritance** | Not supported with classes; achieved through interfaces. |
| **Hybrid Inheritance** | Combination of inheritance types; achieved through interfaces. |

---

## Benefits of Inheritance

- **Code Reusability** – Reuse existing code without rewriting.
- **Reduced Redundancy** – Avoid duplicate code.
- **Easier Maintenance** – Changes in the parent class can be inherited by child classes.
- **Extensibility** – New features can be added by extending existing classes.
- **Improved Readability** – Creates a clear hierarchy between classes.

---

## Key Points

- Uses the `extends` keyword.
- Represents an **"is-a" relationship**.
- Supports method overriding.
- Constructors are not inherited.
- Private members cannot be accessed directly by child classes.

### Syntax

```java
class Parent {
    // properties and methods
}

class Child extends Parent {
    // additional properties and methods
}
```
##
- Why is Java Platform Independent?

Java is **platform independent** because Java code is compiled into **bytecode**, which can run on any operating system that has a **Java Virtual Machine (JVM)**.

## How It Works

1. Write Java source code (`.java`).
2. The Java compiler (`javac`) converts the source code into **bytecode** (`.class`).
3. The **JVM** interprets or compiles the bytecode into machine code specific to the operating system.
4. The same bytecode can run on different operating systems without modification.

### Principle

> **"Write Once, Run Anywhere (WORA)"**

---

## Java Architecture

```text
Java Source Code (.java)
            │
            ▼
      Java Compiler
         (javac)
            │
            ▼
      Bytecode (.class)
            │
            ▼
   Java Virtual Machine
          (JVM)
            │
            ▼
 OS-Specific Machine Code
```

---

## Key Components

| Component | Full Form | Purpose |
|-----------|------------|---------|
| **JDK** | Java Development Kit | Provides tools required for Java development, such as `javac`, debugger, and libraries. |
| **JRE** | Java Runtime Environment | Provides the environment required to run Java applications. |
| **JVM** | Java Virtual Machine | Executes Java bytecode and enables platform independence. |

---

## Relationship Between JDK, JRE, and JVM

```text
JDK
 └── JRE
      └── JVM
```

- **JDK = JRE + Development Tools**
- **JRE = JVM + Libraries**
- **JVM = Executes Bytecode**

---

## Example

A Java application compiled on **Windows** can run on **Linux** or **macOS** without recompilation, provided the target system has a compatible JVM.

---

## Interview Answer (Short)

**Java is platform independent because its source code is compiled into platform-neutral bytecode. This bytecode runs on the Java Virtual Machine (JVM), which is available for different operating systems. Therefore, the same Java program can run on Windows, Linux, and macOS without recompilation, following the principle "Write Once, Run Anywhere (WORA)."**

## Possible Follow-Up Questions
- ## Why is OOP important in large applications?
OOP is important in large applications because it helps organize code into reusable, maintainable, and modular components. As applications grow, managing code becomes complex, and OOP addresses this through encapsulation, inheritance, polymorphism, and abstraction.

### Key Benefits

- Code Reusability through inheritance.
- Maintainability through modular classes.
- Scalability by adding new features without impacting existing code.
- Testability because components are loosely coupled.
- Security through encapsulation.

### Practical Example

In an e-commerce application, classes like `User`, `Order`, `Product`, and `Payment` can be developed independently, making the system easier to manage and extend.

---

- ## Can you explain all four pillars with real-life examples?

### Encapsulation
Wrapping data and methods together while restricting direct access.

**Real-life Example:**  
A bank account balance cannot be modified directly. Users must use methods like `deposit()` or `withdraw()`.

### Abstraction
Showing only required functionality and hiding implementation details.

**Real-life Example:**  
When driving a car, you use the steering wheel and pedals without knowing how the engine internally works.

### Inheritance
A child class acquires properties and behavior from a parent class.

**Real-life Example:**  
A Car is a Vehicle. It inherits common vehicle properties like speed and fuel capacity.

### Polymorphism
One interface, multiple implementations.

**Real-life Example:**  
A payment method can be Credit Card, UPI, or Net Banking, but all implement a common `pay()` method differently.

---

- ## How does OOP improve maintainability and scalability?
OOP improves maintainability by dividing functionality into independent classes. Changes in one module have minimal impact on others.

It improves scalability because new functionality can be added through inheritance, interfaces, and composition without modifying existing code.

### Example

In a payment system, adding a new payment method like Apple Pay only requires implementing the `Payment` interface rather than changing existing code.

This follows the **Open-Closed Principle**:

> Software should be open for extension but closed for modification.

---

- ## Can abstraction exist without encapsulation?
Technically yes, but in practice abstraction and encapsulation usually work together.

Abstraction focuses on hiding implementation details, while encapsulation protects data.

For example, an interface provides abstraction by defining behavior without implementation. However, the actual implementation often uses encapsulation to protect internal data.

> Abstraction tells what an object does, while encapsulation hides how it does it.

---

- ## Which is more important in security: abstraction or encapsulation?
Encapsulation is more important for security.

Because encapsulation protects data by restricting direct access using private variables and controlled access methods.

Abstraction improves usability and reduces complexity, but it does not inherently protect data.

### Example

```java
private double balance;
```

Only authorized methods can modify the balance, preventing accidental or unauthorized changes.

---

- ## Give a practical example from your project.
In one of my enterprise applications, we implemented a Payment Gateway module.

- Abstraction: Created a `PaymentProcessor` interface.
- Inheritance: Different payment processors inherited common functionality.
- Polymorphism: Runtime selected the appropriate processor based on payment type.
- Encapsulation: Sensitive credentials were stored privately and accessed through service methods.

This approach allowed us to onboard new payment providers with minimal code changes.

---

- ## How does Java achieve runtime polymorphism?
Java achieves runtime polymorphism through method overriding and parent class references.

```java
Animal animal = new Dog();
animal.sound();
```

At runtime, Java determines that the actual object is `Dog` and calls Dog's implementation.

This decision happens during execution, not compilation.

---

- ## What is Dynamic Method Dispatch?
Dynamic Method Dispatch is the mechanism through which Java resolves overridden methods at runtime.

The JVM determines which method to execute based on the actual object type rather than the reference type.

### Example

```java
Animal a = new Dog();
a.sound();
```

Even though the reference is `Animal`, `Dog`'s `sound()` method is executed.

This is the foundation of runtime polymorphism.

---

- ## Can constructors be polymorphic? => No.

Constructors cannot be inherited or overridden.

Since polymorphism depends on method overriding, constructors do not participate in polymorphism.

> Constructors initialize objects; they are not polymorphic because they cannot be overridden.

---

- ## Can static methods be overridden? => No.

Static methods belong to the class rather than the object.

When a subclass defines a static method with the same signature, it is called method hiding, not overriding.

### Example

```java
class Parent{
   static void show(){}
}

class Child extends Parent{
   static void show(){}
}
```

The method called depends on the reference type.

---

- ## Can private methods be overridden? => No.

Private methods are not visible to subclasses.

Since overriding requires inheritance visibility, private methods cannot be overridden.

### Example

```java
class Parent{
   private void display(){}
}
```

The child class cannot access or override `display()`.

---

- ## What is Covariant Return Type?
Covariant return type allows an overridden method to return a subclass type instead of the exact parent type.

### Example

```java
class Animal {}

class Dog extends Animal {}

class Parent{
   Animal getAnimal(){
      return new Animal();
   }
}

class Child extends Parent{
   Dog getAnimal(){
      return new Dog();
   }
}
```

This is allowed because `Dog` is a subtype of `Animal`.

---

- ## Why doesn’t Java support multiple inheritance with classes?
Java avoids multiple inheritance with classes to prevent the Diamond Problem.

### Diamond Problem

```text
      A
     / \
    B   C
     \ /
      D
```

If both `B` and `C` override a method from `A`, Java cannot determine which implementation `D` should inherit.

To avoid ambiguity, Java supports:

- Single inheritance with classes
- Multiple inheritance through interfaces

---

- ## What is the super keyword used for?
The `super` keyword refers to the immediate parent class object.

### Uses

#### Access Parent Variables

```java
super.name;
```

#### Call Parent Methods

```java
super.display();
```

#### Call Parent Constructor

```java
super();
```

> super is used to access parent class members and constructors.

---

- ## What is Constructor Chaining in Inheritance?
Constructor chaining is the process of invoking constructors across inheritance levels.

When a child object is created:

1. Parent constructor executes first.
2. Child constructor executes next.

### Example

```java
class Parent{
   Parent(){
      System.out.println("Parent");
   }
}

class Child extends Parent{
   Child(){
      System.out.println("Child");
   }
}
```

### Output

```text
Parent
Child
```

This ensures proper object initialization.

---

- ## Difference between JVM, JRE, and JDK?

| Component | Purpose |
|------------|----------|
| JVM | Executes Java bytecode |
| JRE | JVM + Libraries required to run Java applications |
| JDK | JRE + Development tools like javac, debugger |

### Flow

```text
JDK
 └── JRE
      └── JVM
```

> JDK is for development, JRE is for execution, JVM actually runs the bytecode.

---

- ## What is Bytecode?
Bytecode is the intermediate code generated by the Java compiler.

```text
.java
   ↓ javac
.class (Bytecode)
   ↓ JVM
Machine Code
```

The JVM interprets or compiles bytecode into machine-specific instructions.

Bytecode enables Java's platform independence.

---

- ## Is Java completely platform independent? => Not completely.

Java applications are platform independent because bytecode runs on any JVM.

However, the JVM itself is platform dependent because each operating system requires its own JVM implementation.

> Java code is platform independent, but JVM implementations are platform specific.

---

- ## How does JVM improve security and performance?

### Security Features

#### Class Loader
Loads trusted classes and isolates untrusted code.

#### Bytecode Verifier
Checks bytecode validity before execution.

#### Security Manager (Legacy Concept)
Controls access to system resources.

#### Memory Safety
No direct pointer manipulation unlike C/C++.

### Performance Features

#### JIT Compiler (Just-In-Time Compiler)
Frequently executed code is converted into native machine code.

#### Garbage Collection
Automatically manages memory and prevents memory leaks.

#### Runtime Optimization
JVM continuously optimizes execution based on application behavior.

> JVM improves security through class loading and bytecode verification, while performance is enhanced using JIT compilation, garbage collection, and runtime optimizations.

# STRINGS

- ## Difference between String, StringBuilder, and StringBuffer?
| Feature | String | StringBuilder | StringBuffer |
|----------|----------|----------|----------|
| Mutable | No | Yes | Yes |
| Thread Safe | Yes (Immutable) | No | Yes |
| Performance | Slow for modifications | Fastest | Slower than StringBuilder |
| Use Case | Fixed text | Single-threaded modifications | Multi-threaded modifications |

### Example

```java
String s = "Hello";
s = s + " World"; // New object created

StringBuilder sb = new StringBuilder("Hello");
sb.append(" World");

StringBuffer sf = new StringBuffer("Hello");
sf.append(" World");
```

### Follow-Up

**Why is StringBuilder faster?**

Because it doesn't use synchronization, reducing overhead.

---

- ## Why is String immutable?
String is immutable because once created, its value cannot be changed.

### Benefits

- Security
- Thread Safety
- String Pool Optimization
- HashMap Key Stability
- Performance

### Example

```java
String s = "Java";
s.concat("8");
```

Original string remains unchanged.

### Follow-Up

**Why is immutability important for HashMap keys?**

If String could change after insertion, `hashCode()` would change and retrieval would fail.

---

- ## What is String Pool?
String Pool is a special memory area in Heap where Java stores String literals.

### Example

```java
String s1 = "Java";
String s2 = "Java";
```

Both references point to the same object.

```java
s1 == s2 // true
```

### Follow-Up

Difference between:

```java
String s1 = "Java";
String s2 = new String("Java");
```

- `s1` uses pool.
- `s2` creates a new object in heap.

---

# COLLECTIONS

- ## Difference between ArrayList and LinkedList?
| Feature | ArrayList | LinkedList |
|----------|----------|----------|
| Structure | Dynamic Array | Doubly Linked List |
| Random Access | Fast O(1) | Slow O(n) |
| Insert/Delete Middle | Slow | Fast |
| Memory | Less | More |
| Search | Faster | Slower |

### Use Case

- Use ArrayList when reads are frequent.
- Use LinkedList when inserts/deletes are frequent.

### Follow-Up

**Why ArrayList access is O(1)?**

Because elements are stored in contiguous memory locations.

---

- ## Difference between HashMap and Hashtable?
| Feature | HashMap | Hashtable |
|----------|----------|----------|
| Thread Safe | No | Yes |
| Null Key | One allowed | Not allowed |
| Null Value | Multiple allowed | Not allowed |
| Performance | Faster | Slower |
| Legacy | No | Yes |

### Follow-Up

**Which should be used nowadays?**

HashMap or ConcurrentHashMap.

Hashtable is considered legacy.

---

- ## Difference between HashMap and ConcurrentHashMap?
| Feature | HashMap | ConcurrentHashMap |
|----------|----------|----------|
| Thread Safe | No | Yes |
| Locking | None | Segment/Bucket Level |
| Performance | High | High in concurrent environments |
| Null Keys | Allowed | Not Allowed |

### Follow-Up

**Why is ConcurrentHashMap faster than Hashtable?**

Hashtable locks the entire map.

ConcurrentHashMap locks only portions of the map.

---

- ## How does HashMap work internally?
HashMap uses:

- `hashCode()`
- Bucket Array
- `equals()`

### Steps

#### Step 1

Generate hashCode

```java
key.hashCode();
```

#### Step 2

Calculate bucket index

```java
hash % arraySize
```

#### Step 3

Store key-value pair

#### Step 4

On retrieval

- Find bucket
- Compare hash
- Compare equals()

Return matching value.

### Java 8 Optimization

When bucket size exceeds 8 entries:

```text
LinkedList → Red Black Tree
```

Improves complexity:

```text
O(n) → O(log n)
```

### Follow-Up

#### Internal Structure

```text
Bucket Array
     |
     +--> Node
     +--> Node
     +--> TreeNode
```

---

- ## What is hashCode() and equals()?
### hashCode()

Returns integer representation of object.

Used for bucket selection.

### equals()

Checks logical equality.

### Contract

If:

```java
obj1.equals(obj2)
```

returns true

Then:

```java
obj1.hashCode() == obj2.hashCode()
```

must also be true.

### Follow-Up

**Why override both together?**

Otherwise HashMap and HashSet behave incorrectly.

---

- ## What is Collision in HashMap?
Collision occurs when multiple keys map to the same bucket.

### Example

```java
hash(key1) = 5
hash(key2) = 5
```

Both stored in same bucket.

### Collision Handling

#### Java 7

Linked List

#### Java 8

Linked List + Red Black Tree

### Follow-Up

**Does collision mean duplicate keys?**

No.

Different keys can have same hash.

---

- ## Difference between HashSet and TreeSet?

| Feature | HashSet | TreeSet |
|----------|----------|----------|
| Ordering | No | Sorted |
| Data Structure | HashMap | Red Black Tree |
| Performance | O(1) | O(log n) |
| Null Allowed | One | Not allowed |

### Use Case

- HashSet → Fast lookup
- TreeSet → Sorted data

---

- ## Difference between List, Set, and Map?

| Feature | List | Set | Map |
|----------|----------|----------|----------|
| Duplicates | Allowed | Not Allowed | Keys Not Allowed |
| Ordering | Preserved | Depends | Depends |
| Access | Index | Value | Key |

### Example

```java
List<String>
Set<String>
Map<Integer,String>
```

### Follow-Up

**Which collection is fastest?**

Depends on operation.

HashMap/HashSet typically offer O(1) lookup.

---

# EXCEPTION HANDLING

- ## Checked vs Unchecked Exceptions?

### Checked Exception

Checked at compile time.

Examples:

- IOException
- SQLException

Must handle or declare.

### Unchecked Exception

Occurs at runtime.

Examples:

- NullPointerException
- ArithmeticException
- ArrayIndexOutOfBoundsException

### Follow-Up

**Why RuntimeException is unchecked?**

Because compiler cannot reliably predict such programming errors.

---

- ## throw vs throws?

| throw | throws |
|---------|---------|
| Used to explicitly throw exception | Declares exception |
| Inside method | Method signature |
| Single exception | Multiple exceptions |

### Example

```java
throw new Exception();
```

```java
public void test() throws IOException
```

---

- ## finally vs finalize vs final?

| Feature | Purpose |
|----------|----------|
| final | Restrict modification |
| finally | Cleanup block |
| finalize() | Garbage Collector callback |

### Examples

#### final Variable

```java
final int age = 25;
```

#### finally

```java
try{}
finally{}
```

#### finalize()

Called before object destruction.

### Follow-Up

**Is finalize used nowadays?**

No.

Deprecated because it's unreliable.

---

# JAVA 8

- ## What is Lambda Expression?

Lambda allows writing anonymous functions.

### Traditional

```java
Runnable r = new Runnable() {
   public void run() {
      System.out.println("Run");
   }
};
```

### Lambda

```java
Runnable r = () -> System.out.println("Run");
```

### Benefits

- Less code
- Better readability
- Functional Programming

---

- ## What is Functional Interface?

Functional Interface contains exactly one abstract method.

### Example

```java
@FunctionalInterface
interface Calculator{
   int add(int a,int b);
}
```

### Common Functional Interfaces

- Predicate
- Function
- Consumer
- Supplier

### Follow-Up

**Can Functional Interface have default methods?**

Yes.

Only one abstract method restriction exists.

---

- ## What is Stream API?

Stream API processes collections in a functional manner.

### Example

```java
list.stream()
    .filter(x -> x > 10)
    .map(x -> x * 2)
    .collect(Collectors.toList());
```

### Benefits

- Readability
- Parallel Processing
- Less Boilerplate Code

---

- ## Difference between map() and flatMap()?

### map()

Transforms each element.

```text
["Java","Spring"]
      ↓
     [4,6]
```

### flatMap()

Transforms and flattens nested structures.

```text
[[1,2],[3,4]]
      ↓
 [1,2,3,4]
```

### Follow-Up

**When is flatMap useful?**

Nested collections, API responses, hierarchical data.

---

- ## Difference between filter() and map()?

### filter()

Removes unwanted elements.

```java
stream.filter(age -> age > 18)
```

### map()

Transforms elements.

```java
stream.map(name -> name.toUpperCase())
```

> filter decides whether element stays, map decides how element changes.

---

- ## What is Optional?

Optional is a container object used to avoid NullPointerException.

### Example

```java
Optional<String> name =
Optional.ofNullable(getName());
```

### Benefits

- Null Safety
- Cleaner Code
- Explicit Handling

### Follow-Up

| Method | Null Allowed |
|----------|----------|
| of() | No |
| ofNullable() | Yes |
| empty() | No Value |

---

# MULTITHREADING

- ## What is Thread?

Thread is the smallest unit of execution within a process.

Multiple threads can execute concurrently.

### Example

```java
Thread t = new Thread();
t.start();
```

### Benefits

- Better CPU utilization
- Faster execution
- Parallel processing

---

- ## Runnable vs Callable?

| Feature | Runnable | Callable |
|----------|----------|----------|
| Return Value | No | Yes |
| Exception Handling | No | Yes |
| Method | run() | call() |

### Example

```java
Callable<Integer> task = () -> 100;
```

### Follow-Up

**How to get result from Callable?**

Using Future.

```java
Future<Integer> result;
```

---

- ## synchronized vs volatile?

| synchronized | volatile |
|-------------|----------|
| Provides Mutual Exclusion | Provides Visibility |
| Thread Safe | Not Fully Thread Safe |
| Locks Object | No Lock |

### Example

```java
volatile boolean running;
```

### Follow-Up

**Does volatile make increment operation safe?**

No.

```java
count++;
```

Still not atomic.

---

- ## What is Deadlock?
Deadlock occurs when two or more threads wait indefinitely for each other's resources.

### Example

```text
Thread1 -> Lock A -> Wait B
Thread2 -> Lock B -> Wait A
```

Neither proceeds.

### Prevention

- Consistent lock ordering
- Timeout locks
- Reduce nested locks

---

- ## What is Race Condition?
Race Condition occurs when multiple threads access and modify shared data simultaneously leading to unpredictable results.

### Example

```java
count++;
```

Two threads may update count incorrectly.

### Solution

- synchronized
- AtomicInteger
- Locks

---

- ## What is ExecutorService?
ExecutorService manages thread pools efficiently.

### Example

```java
ExecutorService executor =
Executors.newFixedThreadPool(10);
```

### Benefits

- Thread Reuse
- Better Performance
- Resource Management

### Follow-Up

**Why avoid creating threads manually?**

Thread creation is expensive and difficult to manage.

---

- ## What is CompletableFuture?
CompletableFuture is an advanced asynchronous programming API introduced in Java 8.

### Example

```java
CompletableFuture.supplyAsync(
   () -> getData()
);
```

### Benefits

- Non-blocking execution
- Chaining operations
- Parallel execution
- Better error handling

### Follow-Up

| Future | CompletableFuture |
|----------|----------|
| Blocking | Non-Blocking |
| No Chaining | Supports Chaining |
| Limited Features | Rich Async API |

---

# Senior-Level Follow-Up (Very Frequently Asked)

- ## Difference between synchronized collection and ConcurrentHashMap?

### Answer

Synchronized collections lock the entire collection during operations.

ConcurrentHashMap uses fine-grained locking and allows multiple threads to read/write concurrently, resulting in better performance.

---

- ## Why is HashMap not thread-safe?

### Answer

Multiple threads can simultaneously modify internal buckets, causing data inconsistency, race conditions, and even infinite loops during resizing in older Java versions.

---

- ## What is the difference between Parallel Stream and Sequential Stream?

### Answer

| Sequential Stream | Parallel Stream |
|------------------|----------------|
| Single Thread | Multiple Threads |
| Predictable | Better for CPU-intensive tasks |
| Lower Overhead | Higher Overhead |

### Example

```java
list.parallelStream();
```

Use Parallel Streams only when processing large datasets and operations are independent.
```

---

## Android (Must Prepare)

### Lifecycle
- **Explain Activity Lifecycle.**
  - **Answer**: The Activity lifecycle consists of 6 core callbacks:
    - `onCreate()`: Called when the system first creates the Activity. Perform static setup here (e.g., call `setContentView()`, initialize ViewModels, setup dependency injection).
    - `onStart()`: Makes the Activity visible to the user. Good place to initialize UI-related resources and start observers.
    - `onResume()`: Puts the Activity in the foreground (interactive). The app starts interacting with the user. Good place to start animations or open camera/sensors.
    - `onPause()`: The Activity loses focus but remains partially visible (e.g., a split-screen or dialog is on top). Release resources that can block execution, commit unsaved data, or stop animations. Keep operations short, as it blocks the next activity from starting.
    - `onStop()`: The Activity is no longer visible. Stop heavy background tasks, disable sensors, and persist cache.
    - `onDestroy()`: Called before the Activity is destroyed. Release all remaining resources to prevent memory leaks (e.g., cancel coroutine scopes, clear references).
- **Explain Fragment Lifecycle.**
  - **Answer**: Fragments depend on their host Activity but have their own lifecycle, including additional UI-lifecycle callbacks:
    - `onAttach()`: Called when the fragment is associated with its host activity.
    - `onCreate()`: Called to initialize the fragment (non-UI related setup).
    - `onCreateView()`: Called to inflate the fragment's UI layout and return the view hierarchy.
    - `onViewCreated()`: Called immediately after `onCreateView()`. Perform view initialization, set up adapters, and bind observers here.
    - `onViewStateRestored()`: Called when all saved state has been restored to the fragment's views.
    - `onStart()`, `onResume()`, `onPause()`, `onStop()`: Track the Activity's corresponding lifecycle events.
    - `onDestroyView()`: Called when the view hierarchy is being detached. **Crucial**: Set view binding references to null here to prevent memory leaks.
    - `onDestroy()`: Called to do final cleanup of fragment state.
    - `onDetach()`: Called when the fragment is detached from the host Activity.
- **Difference between Activity and Fragment?**
  - **Answer**:
    - **Independence**: Activity is an independent OS component declared in `AndroidManifest.xml` that defines a window. Fragment is a modular, reusable UI sub-section that *must* reside inside a host Activity.
    - **Lifecycle**: Activity lifecycle is managed directly by the Android OS. Fragment lifecycle is managed by the host Activity's `FragmentManager` and is deeply coupled with the host lifecycle.
    - **Memory/UI**: Activities represent full screens with windows. Fragments represent parts of a screen, share the Activity's window, and can be added, replaced, or removed dynamically without restarting the Activity.
- **What happens during Screen Rotation?**
  - **Answer**: A screen rotation is a **Configuration Change**. By default:
    1. The OS destroys the active Activity (`onPause` -> `onStop` -> `onDestroy`) and recreates it (`onCreate` -> `onStart` -> `onResume`).
    2. Any temporary UI state (like input text) is lost unless saved via `onSaveInstanceState(Bundle)` or managed in a **ViewModel**.
    3. ViewModels survive configuration changes because their instance is retained in the `ViewModelStore`, which is managed by the `ViewModelProvider` tied to the Activity's non-configuration instance.

### Architecture
- **What is MVVM?**
  - **Answer**: MVVM (Model-View-ViewModel) is an architecture pattern that separates concerns:
    - **Model**: Represents the data layer (Room DB, Retrofit services, Firestore). It handles data retrieval, caching, and business logic.
    - **View**: The UI layer (Activity/Fragment). It only observes changes (via `LiveData`/`StateFlow`) emitted by the ViewModel and forwards user gestures to the ViewModel.
    - **ViewModel**: The state holder for the screen. It requests data from the Model (Repository) and exposes it as reactive states to the View. It does not reference any UI elements (`View`, `Context`) to avoid memory leaks.
- **Why MVVM over MVC?**
  - **Answer**:
    - **Decoupling**: In MVC, the Controller often acts as both the layout manager and event handler, resulting in tight coupling with UI components (e.g., holding view references). In MVVM, the ViewModel is completely decoupled from the View—it only exposes streams of data, unaware of who is observing them.
    - **Unit Testing**: ViewModels are 100% pure JUnit testable because they do not depend on the Android UI framework, whereas Controllers are highly coupled to Android view hierarchies and require complex mock frameworks.
    - **Lifecycle**: ViewModels are lifecycle-conscious and automatically survive screen rotations, preventing memory leaks and re-fetching operations, whereas a Controller would be destroyed and recreated.
- **What is Repository Pattern?**
  - **Answer**: The Repository pattern abstracts data access. It serves as the **Single Source of Truth** for the application. The ViewModel asks the Repository for data, and the Repository decides whether to fetch it from local persistence (Room Cache) or remote source (Firestore/API).
- **What is Clean Architecture?**
  - **Answer**: Clean Architecture divides the application into isolated, concentric layers:
    - **Domain Layer**: The core of the app. Contains Use Cases, Entities, and Repository Interfaces. It is pure Kotlin/Java code with zero framework dependencies (no Android, no React, no Firebase).
    - **Presentation Layer**: Contains UI controllers (Activities, Fragments, Custom Views) and ViewModels.
    - **Data Layer**: Contains actual database implementations (Room), Network integrations (Retrofit, Firebase SDK), and repository implementations.
    - **Dependency Flow**: Dependencies point inwards. Outer layers (Data, Presentation) depend on the Domain layer. The Domain layer remains completely agnostic of the databases, networking libraries, or UI frameworks used.
- **Explain SOLID Principles.**
  - **Answer**:
    - **S - Single Responsibility Principle**: A class should have only one reason to change. *Example*: `PlaceDao` handles Room database queries; it should not handle API requests or formatting logic.
    - **O - Open/Closed Principle**: Open for extension, closed for modification. *Example*: Using a `PaymentProcessor` interface. Adding Apple Pay requires writing a new class implementing the interface rather than modifying existing credit card processing code.
    - **L - Liskov Substitution Principle**: Derived classes must be substitutable for their base classes without altering program correctness. *Example*: Any subclass of `Fragment` must run correctly inside a container expecting a standard `Fragment` class.
    - **I - Interface Segregation Principle**: Avoid forcing classes to implement interfaces they don't use. *Example*: Instead of a single massive `UserListener` interface, break it into smaller listeners like `OnProfileUpdateListener` and `OnSessionExpiryListener`.
    - **D - Dependency Inversion Principle**: High-level modules should not depend on low-level modules; both should depend on abstractions. *Example*: ViewModels depend on the `PlacesRepository` interface, not the concrete `PlacesRepositoryImpl` database/network class.

### Jetpack Components
- **What is ViewModel?**
  - **Answer**: A Jetpack component that stores and manages UI-related data in a lifecycle-aware manner. It persists data across configuration changes (like screen rotations) and serves as the bridge between the repository and the view.
- **Why ViewModel survives rotation?**
  - **Answer**: When an Activity undergoes a configuration change, the system retains the Activity's `ViewModelStore`. The `ViewModelProvider` uses this store to retrieve the pre-existing ViewModel instance instead of creating a new one. The store is only cleared when the Activity finishes permanently (e.g., when clicking the back button or programmatically calling `finish()`).
- **LiveData vs StateFlow?**
  - **Answer**:
    | Feature | LiveData | StateFlow |
    |---|---|---|
    | **Framework** | Android Jetpack (Android-dependent) | Kotlin Coroutines (pure Kotlin) |
    | **Threading** | Runs on Main Thread | Runs on any Dispatcher (thread-safe) |
    | **Initial State** | Not required | Required (must have an initial value) |
    | **Hot/Cold** | Hot observable | Hot stream |
    | **Lifecycle Aware** | Yes, natively | No, requires `repeatOnLifecycle` or `flowWithLifecycle` in the UI layer |
- **StateFlow vs SharedFlow?**
  - **Answer**:
    - **StateFlow**: A state-holder. It stores the current value and immediately emits the latest state to new subscribers (similar to a state variable). It ignores duplicate values. Ideal for driving **UI state**.
    - **SharedFlow**: An event-emitter. It does not hold state (unless configured with replay cache) and only broadcasts events to active collectors. Ideal for **one-time events** like showing Snackbars, launching Toasts, or triggering Navigation.
- **Room Database?**
  - **Answer**: Room is an ORM abstraction over SQLite. It consists of:
    - **Entity**: An annotated class representing a database table (e.g. `@Entity(tableName = "places")`).
    - **DAO (Data Access Object)**: Interface declaring SQL queries annotated with `@Query`, `@Insert`, `@Delete`. Room compiles compile-time SQL verification here.
    - **Database**: The main access point extending `RoomDatabase` that binds entities to DAOs.
    - **Converters**: Annotation `@TypeConverters` used to convert custom types (e.g. converting a `List<String>` of image URLs into a pipe-delimited `"|"` string for SQLite storage and splitting it back).
- **WorkManager?**
  - **Answer**: WorkManager is the recommended solution for deferrable, guaranteed background work. It survives app restarts and system reboots. It allows scheduling work with constraints (e.g., network connectivity, charging status). *Example from SpotFinder*: A `ReviewSyncWorker` is enqueued with a constraint `NetworkType.CONNECTED`. If a review is written offline, Room holds it. Once the device reconnects, WorkManager executes the worker in the background to push the review to Firestore.
- **Navigation Component?**
  - **Answer**: A Jetpack library that manages app navigation flow. It uses a single-activity architecture where `MainActivity` hosts a `NavHostFragment`. It uses a **Navigation Graph (XML)** to define destinations and actions, and **SafeArgs** to pass parameters with compile-time type-safety.

### Coroutines
- **What are Coroutines?**
  - **Answer**: Coroutines are lightweight, cooperative threads. They allow writing asynchronous, non-blocking code sequentially. Since they run on top of actual threads, multiple coroutines can run on a single thread without blocking it (saving memory and threads).
- **launch vs async?**
  - **Answer**:
    - `launch`: Starts a new coroutine without blocking the current thread and returns a `Job` reference. It is a "fire-and-forget" builder used for tasks that don't return a result.
    - `async`: Starts a coroutine and returns a `Deferred<T>` (a light promise). You must call `.await()` on the returned reference to retrieve the final result. If an exception is thrown inside `async`, it propagates up immediately unless wrapped.
- **Dispatchers?**
  - **Answer**: Dispatchers dictate which thread pools the coroutine will execute on:
    - `Dispatchers.Main`: Confined to the main UI thread. Used for UI updates, layout changes, and observing LiveData.
    - `Dispatchers.IO`: Optimized for disk/network input-output (API calls, database transactions, file writing).
    - `Dispatchers.Default`: Optimized for CPU-intensive tasks (sorting lists, parsing complex JSON, rendering bitmaps).
- **CoroutineScope?**
  - **Answer**: A scope that manages the lifecycle of coroutines. Every coroutine builder must run inside a scope (e.g., `viewModelScope` inside ViewModels, `lifecycleScope` inside Fragments). If the parent scope is cancelled, all active child coroutines within it are cancelled automatically, preventing memory leaks.
- **SupervisorJob?**
  - **Answer**: A specialized `Job` where the failure of one child coroutine does not automatically cancel its sibling coroutines or its parent. This is essential when running multiple concurrent independent tasks (e.g. pulling 3 independent API widgets) so one network failure does not crash the entire screen.
- **suspend function?**
  - **Answer**: A function marked with the `suspend` keyword. It can pause execution without blocking the host thread and can be resumed later. Suspend functions can only be invoked from within a coroutine or another suspend function.

### Performance
- **What causes ANR?**
  - **Answer**: ANR (Application Not Responding) is triggered when the Android main (UI) thread is blocked for more than **5 seconds**. Common causes include performing disk read/writes (database queries), networking operations, complex graphics calculation, or infinite loops on the main thread.
- **How to optimize RecyclerView?**
  - **Answer**:
    1. **DiffUtil**: Use `DiffUtil` or `ListAdapter` to calculate the difference between old and new lists, updating only the modified rows instead of calling `notifyDataSetChanged()`.
    2. **ViewHolder Pattern**: Recycle views instead of repeatedly calling `findViewById()`.
    3. **Fixed Size**: Set `setHasFixedSize(true)` if element dimensions do not change dynamically.
    4. **Layout Flatness**: Keep item layouts flat (use `ConstraintLayout`) to avoid deep nested view hierarchies.
    5. **Image Loading**: Use libraries like Glide to downsample images and cache bitmaps off the main thread.
- **Memory Leak examples?**
  - **Answer**: A memory leak occurs when an object is no longer needed but remains referenced, preventing the Garbage Collector from freeing it.
    - *Example 1*: Storing an Activity `Context` inside a static variable or a singleton class.
    - *Example 2*: Non-static inner classes (like handler or AsyncTask) holding implicit references to their outer Activity.
    - *Example 3*: Not clearing references to ViewBinding in a Fragment's `onDestroyView()`.
    - *Example 4*: Uncancelled observers or registered receivers (like BroadcastReceivers) in `onDestroy()`.
- **How do you improve App Performance?**
  - **Answer**:
    - **Caching**: Implement an Offline-First approach (Room DB) so UI reads are fast and local, eliminating redundant API roundtrips.
    - **Image Optimization**: Load compressed images (WebP format), downscale bitmaps to fit the viewport, and cache them using Glide.
    - **Threading**: Run intensive computations and database/network logic entirely on background threads (RxJava schedulers or Coroutine dispatchers).
    - **Layout Optimizations**: Minimize layout nesting, replace heavy custom drawables, and reuse views.
    - **Code Shrinking**: Enable ProGuard/R8 in `build.gradle` (`minifyEnabled true` and `shrinkResources true`) to remove unused code and resources, reducing bundle size.

---

# Day 2: React Native + React JS + APIs

## React Native

- **React Native Architecture?**
  - **Answer**: 
    - **Bridge Architecture (Legacy)**: The app runs in three main parts: the JavaScript thread (executing React code), the Native thread (handling native UI, rendering, and device APIs), and the **JSON Bridge**. The JS thread communicates asynchronously by serializing JSON messages and queuing them over the bridge, which becomes a performance bottleneck for high-frequency operations like animations or continuous scrolls.
    - **New Architecture (JSI / Fabric / TurboModules)**: Replaces the bridge. Uses **JavaScript Interface (JSI)**, a C++ abstraction allowing the JS engine to directly execute synchronous native code. **Fabric** is the new rendering engine written in C++, which renders UI synchronously. **TurboModules** allow lazy loading of native modules directly into memory, dramatically speeding up startup times.
- **How React Native communicates with Native code?**
  - **Answer**: In the legacy architecture, communication is **asynchronous** and handled via serialized JSON messages sent over the Bridge. In the new architecture, JS communicates directly with Native code via **JSI** (JavaScript Interface) by executing host C++ methods that bind native platforms (Kotlin/Swift) directly to JS runtimes.
- **What are Hooks?**
  - **Answer**: Hooks are built-in functions introduced in React 16.8 that enable functional components to tap into React state and lifecycle features without writing class components.
- **useState?**
  - **Answer**: A hook that returns a stateful value and a setter function to update it. Modifying state triggers a re-render of the component.
- **useEffect?**
  - **Answer**: A hook used to execute side effects (API calls, subscriptions, event listeners) in functional components. It accepts a dependency array:
    - `[]` (Empty): Runs once after mounting (similar to `componentDidMount`).
    - `[param]`: Runs on mount and whenever the dependency changes (`componentDidUpdate`).
    - *Cleanup function return*: Executes before the component unmounts (`componentWillUnmount`).
- **useMemo?**
  - **Answer**: A hook that returns a memoized **value** of an expensive calculation. It only recalculates the value when one of the dependencies in the array changes, avoiding compute-heavy re-runs on every layout render.
- **useCallback?**
  - **Answer**: A hook that returns a memoized **callback function**. It prevents the function from being recreated on every render cycle, which is crucial when passing callbacks to optimized child components to avoid breaking their shallow comparison.
- **React.memo?**
  - **Answer**: A Higher-Order Component (HOC) used to optimize performance. It wraps a component and shallowly compares its props. If the props have not changed, React skips rendering the component and reuses the last rendered output.
- **Context API?**
  - **Answer**: A built-in React feature that allows passing data down the component tree without manually passing props at every level ("prop drilling"). It is best suited for low-frequency updates like application themes, authentication status, or user settings.
- **Redux?**
  - **Answer**: A predictable state container for JavaScript apps. It implements a unidirectional data flow: components dispatch **Actions**, which are intercepted by **Reducers** to update a single centralized global **Store**. It is highly optimized for complex state mutations and high-frequency state updates.
- **Redux Toolkit advantages?**
  - **Answer**: Redux Toolkit (RTK) is the official, opinionated way to write Redux logic. Advantages:
    - Reduces boilerplate code significantly.
    - Includes built-in middlewares like Redux Thunk and Immer (allowing mutative code syntax to write immutable updates safely).
    - Features `createSlice` which automatically generates action creators and action types.
- **React Navigation?**
  - **Answer**: The standard routing and navigation library for React Native. It provides stack navigators, tab bar menus, and drawer drawers to manage the application's navigation stack, transitions, and gesture physics.
- **Deep Linking?**
  - **Answer**: The process of configuring an app to open a specific screen when a custom URL is clicked (e.g. `spotfinder://places/12`). Handled via URI schemes or Universal/App Links (verified HTTPS domains).
- **Native Modules?**
  - **Answer**: Custom Java/Kotlin or Objective-C/Swift code written to expose platform-specific APIs (not available in React Native by default, e.g. custom Bluetooth or hardware security modules) to JavaScript. It requires register-mapping the module name and methods to make them callable via `NativeModules` in JS.
- **AsyncStorage?**
  - **Answer**: An unencrypted, asynchronous, key-value storage system. It is global and persistent across app sessions. Best used for simple configuration data or small authentication tokens, but should **never** be used for sensitive user details due to lack of encryption.
- **Push Notifications in React Native?**
  - **Answer**: Handled by integrating libraries like `react-native-firebase/messaging` or Expo Notifications. The app registers with FCM/APNS to obtain a device token. A background service listens to push payloads, and local handlers display or routing-inject them based on foreground or background states.
- **Performance Optimization techniques?**
  - **Answer**:
    - Use `FlatList` or `FlashList` (Shopify) instead of standard scrolls for large lists.
    - Memoize components using `React.memo` and callback pointers using `useCallback`.
    - Optimize images (compress size, load WebP, use caching libraries).
    - Avoid inline objects/arrays or anonymous arrow functions in render states.
    - Shrink JS bundles using minification and code splitting.

---

## React JS

- **Virtual DOM?**
  - **Answer**: A lightweight JavaScript representation of the Real DOM. React uses it to track UI updates off-screen in memory.
- **Real DOM vs Virtual DOM?**
  - **Answer**:
    - **Real DOM**: Directly updates HTML elements. Slow because updates trigger heavy layout recalculations and style reflows across the entire browser viewport.
    - **Virtual DOM**: React updates the lightweight Virtual DOM first, compares it with the previous version (a process called "diffing"), and batch-updates only the modified nodes in the Real DOM (a process called "reconciliation"), resulting in significantly faster rendering times.
- **Component Lifecycle?**
  - **Answer**: Class components use `componentDidMount`, `componentDidUpdate`, and `componentWillUnmount`. In functional components, these are consolidated using `useEffect`.
- **Functional vs Class Components?**
  - **Answer**:
    - **Class Components**: Legacy syntax extending `React.Component`. They require constructors, bind methods, and manage state/lifecycle via class members.
    - **Functional Components**: Modern, simpler JavaScript functions. They use React Hooks (`useState`, `useEffect`) to manage state and lifecycle. They have less code footprint and are easier to test.
- **useEffect Lifecycle?**
  - **Answer**: consolidated into `useEffect(fn, deps)`:
    - Mount: Runs `fn` after the initial render (when `deps` is `[]`).
    - Update: Runs `fn` whenever elements in the `deps` array change.
    - Unmount: If `fn` returns a cleanup function, React executes it when the component is unmounting.
- **useMemo vs useCallback?**
  - **Answer**:
    - `useMemo` caches the **returned result of a calculation** (e.g. `const double = useMemo(() => calculate(x), [x])`).
    - `useCallback` caches the **function instance itself** (e.g. `const callback = useCallback(() => doSomething(y), [y])`).
- **Controlled vs Uncontrolled Components?**
  - **Answer**:
    - **Controlled**: Form input elements whose values are bound to React state and updated via `onChange` events. React is the sole source of truth.
    - **Uncontrolled**: Input elements whose values are handled directly by the browser DOM. Values are read programmatically when needed using React `ref` markers.
- **Redux vs Context API?**
  - **Answer**:
    - **Context API**: Native feature, simple to set up. Re-renders all consumers whenever the context value changes, making it inefficient for high-frequency state updates.
    - **Redux**: Third-party state manager. Uses selector-level checks so components only re-render if their subscribed slice changes. Offers powerful debug tools (Redux DevTools) and middleware support.
- **React Router?**
  - **Answer**: The standard routing framework for React web applications. It enables client-side page routing (creating SPAs) without full browser reloads.
- **Lazy Loading?**
  - **Answer**: A design pattern where components or modules are only loaded when they enter the viewport or are actively requested by the user, reducing initial script bundle downloads.
- **Code Splitting?**
  - **Answer**: The process of dividing the unified production Javascript bundle into smaller chunk files (bundles) that can be loaded dynamically using dynamic `import()` and `React.lazy()`.
- **Reusable Components?**
  - **Answer**: Designing components to be isolated and highly modular by defining strict, customizable interfaces via `props` (e.g. generic buttons, form validation wrappers, layouts).

---

## API Integration

- **What is REST API?**
  - **Answer**: REST (Representational State Transfer) is an architectural style for designing networked applications. It operates over HTTP, utilizes standard HTTP methods, and represents resources via structured endpoints (e.g. `/api/v1/places`).
- **GET vs POST?**
  - **Answer**:
    - **GET**: Retrieves data. Parameters are sent in the URL query string. It is idempotent (multiple identical calls produce the same result) and should never modify server state.
    - **POST**: Submits data to create a resource. Payload is sent in the HTTP request body. It is non-idempotent and alters server database state.
- **PUT vs PATCH?**
  - **Answer**:
    - **PUT**: Replaces the entire resource payload. If a field is omitted in the request, it is removed or set to default on the server.
    - **PATCH**: Performs a partial update. Only updates the fields explicitly provided in the request body.
- **Authentication vs Authorization?**
  - **Answer**:
    - **Authentication**: Verifies *who you are* (e.g., Logging in via username/password or Firebase Auth).
    - **Authorization**: Verifies *what you are allowed to do* (e.g., verifying if the logged-in user has admin rights to delete a place).
- **JWT?**
  - **Answer**: JSON Web Token. A compact, URL-safe, stateless token format used to transmit claims between client and server. It consists of three parts: **Header** (algorithm), **Payload** (user claims/metadata), and **Signature** (verifiable security hash).
- **Access Token vs Refresh Token?**
  - **Answer**:
    - **Access Token**: Short-lived credential (e.g., expires in 15 mins) sent in the HTTP `Authorization` header to access protected APIs.
    - **Refresh Token**: Long-lived credential (e.g., expires in 7 days) stored securely (like `EncryptedSharedPreferences` or HTTP-only cookies). When the access token expires, the client uses the refresh token to request a new access token without forcing the user to log in again.
- **How do you handle API failures?**
  - **Answer**:
    - Implement network **Interceptors** (e.g., OkHttp Interceptors in Android or Axios Interceptors in JS) to trap global HTTP error codes (like 401 Unauthorized to trigger token refresh, or 503 Service Unavailable).
    - Map responses into structured states (e.g., SpotFinder's `Resource.ERROR` class).
    - Provide user-friendly feedback via Snackbars/Toasts instead of crashing.
- **HTTP Status Codes?**
  - **Answer**:
    - `2xx` (Success): `200 OK`, `201 Created`
    - `3xx` (Redirection): `301 Moved Permanently`, `304 Not Modified` (caching)
    - `4xx` (Client Errors): `400 Bad Request`, `401 Unauthorized` (auth needed), `403 Forbidden` (no permission), `404 Not Found`
    - `5xx` (Server Errors): `500 Internal Server Error`, `503 Service Unavailable`
- **Retry Mechanism?**
  - **Answer**: A strategy to handle transient network drops. Instead of failing immediately, the app retries the request using **Exponential Backoff** (waiting 1s, then 2s, then 4s...) up to a maximum threshold, preventing server overloading.
- **Pagination?**
  - **Answer**: Splitting massive datasets into pages.
    - **Offset-based**: `/api/places?limit=10&offset=20`. Simple but slow for large datasets and prone to duplicate records if items are added during scroll.
    - **Cursor-based (Keyset)**: `/api/places?limit=10&afterId=place_99`. Highly efficient for massive scales as it queries items after a specific identifier marker.
- **Caching?**
  - **Answer**: Storing API responses locally (e.g. in Room or AsyncStorage).
    - **Cache-First**: UI displays local data first. Fast, but can show stale info.
    - **Network-First**: Attempt to fetch fresh API data. If it fails, fallback to the local cache.

---

## Firebase (Very Likely)

- **Which Firebase services have you used?**
  - **Answer**:
    - **Firebase Authentication**: For user logins, registrations, and secure guest-mode session setup.
    - **Cloud Firestore**: Real-time NoSQL database to host and query places, reviews, and user profiles.
    - **Firebase Storage**: Cloud hosting for profile avatars and place photos.
    - **Firebase Cloud Messaging (FCM)**: Driving push notification events.
    - **Crashlytics / Analytics**: Crash tracking and monitoring user analytics.
- **Firebase Authentication?**
  - **Answer**: A fully managed auth service. SpotFinder integrates email/password flows and a custom "Guest Mode" configuration where user sessions are initialized anonymously via Firebase Anonymous Auth, limiting write capabilities.
- **Firebase Cloud Messaging?**
  - **Answer**: A cross-platform messaging service that lets you reliably send notification and data payloads to device clients.
- **Push Notification Flow?**
  - **Answer**:
    1. Client app registers with FCM and retrieves a unique **FCM Registration Token**.
    2. The token is sent and saved to the backend database (Firestore).
    3. When an event occurs (e.g., a review is posted), the backend server sends a request to the FCM server containing the target token and payload.
    4. FCM routes the message to the physical device. The device OS displays the alert or triggers background handlers.
- **Firebase Analytics?**
  - **Answer**: Integrated to log custom events (e.g., user swipes a card, clicks "Add Place", submits review) to analyze feature adoption and user interaction flows.
- **Firebase Crashlytics?**
  - **Answer**: A real-time crash reporter. Collects logs, device specifications, stack traces, and compiles them into a dashboard to identify, prioritize, and fix top stability issues.
- **Notification Payload vs Data Payload?**
  - **Answer**:
    - **Notification Payload**: Managed automatically by the device OS when the app is in the background. The system displays the alert in the tray without launching the app logic.
    - **Data Payload**: Delivered directly to the app's receiver (`onMessageReceived` inside Android's `FirebaseMessagingService`), regardless of whether the app is in the foreground, background, or killed, allowing the app to process custom payload values in the background.

---

# Day 3: Design Patterns + Leadership + System Design

## Design Patterns

- **Singleton Pattern?**
  - **Answer**: Restricts instantiation of a class to one single object instance.
    - *Example*: SpotFinder uses Hilt to inject Room database instances globally as singletons.
    - *Java Implementation (Thread-Safe Double-Checked Lock)*:
      ```java
      public class DatabaseClient {
          private static volatile DatabaseClient instance;
          private DatabaseClient() {}
          public static DatabaseClient getInstance() {
              if (instance == null) {
                  synchronized (DatabaseClient.class) {
                      if (instance == null) {
                          instance = new DatabaseClient();
                      }
                  }
              }
              return instance;
          }
      }
      ```
- **Factory Pattern?**
  - **Answer**: A creational pattern that defines an interface or class for creating objects, but lets subclasses decide which concrete class to instantiate. *Example*: A `PaymentFactory` returning either a `StripeProcessor` or `PaypalProcessor` class based on user selection.
- **Builder Pattern?**
  - **Answer**: Separates the construction of a complex object from its representation, allowing step-by-step assembly. *Example*: Configuring OkHttpClient or Retrofit builders:
    ```java
    Retrofit retrofit = new Retrofit.Builder()
        .baseUrl(BASE_URL)
        .addConverterFactory(GsonConverterFactory.create())
        .client(okHttpClient)
        .build();
    ```
- **Observer Pattern?**
  - **Answer**: Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified automatically. *Example*: LiveData observers in Fragments listening to ViewModel changes, or subscribing to RxJava `Flowable` streams.
- **Dependency Injection Pattern?**
  - **Answer**: A design pattern where class dependencies are supplied externally rather than being hardcoded inside the class itself. In SpotFinder, Dagger Hilt handles DI, which promotes loose coupling and clean unit testing.

---

## System Design (Senior Role)

### Design Questions
- **Design a Chat Application.**
  - **Answer**:
    - **Real-Time Layer**: Use WebSockets (for bi-directional low-latency messaging) or gRPC.
    - **Database**: Cassandra or DynamoDB for fast horizontal write scaling of chat logs. Room/SQLite for local message caching.
    - **Flow**: User sends message -> WebSocket Server -> Message Queue (RabbitMQ) -> Saved to DB -> Broadcasted to recipient's active socket (if offline, triggers FCM Push Notification).
    - **Offline Caching**: Sync messages locally to SQLite, load via paginated cursor to save device RAM.
- **Design an E-commerce App.**
  - **Answer**:
    - **Architecture**: MVVM with Repository. Local cart stored in Room.
    - **UX/Performance**: Virtual list scrolling (RecyclerView with Glide caching). Optimistic updates for cart adjustments.
    - **Checkout Flow**: Encrypt user tokens, interface with Payment Gateway (Stripe/PayPal SDKs). Sync cart state to backend API.
- **Design an Offline-First Mobile App.**
  - **Answer**:
    - **Local DB Source of Truth**: The UI *never* queries the network directly. It observes a local DB (Room/SQLite) stream.
    - **Data Operations**: Write operations write directly to local DB first (updating the UI instantly) and mark the entity with a flag `isSynced = false`.
    - **Sync Manager**: Queue an upload task with **WorkManager** (`SyncWorker`). If network is connected, Worker pushes updates to the cloud database. On success, worker updates local DB entity to `isSynced = true`.

### Scalability
- **How would you support 1 million users?**
  - **Answer**:
    - **App Layer**: Maximize local caching (Offline-First) to drastically decrease server API call volume.
    - **Media**: Distribute all static media assets (e.g., place images) through a Content Delivery Network (CDN) like Cloudflare.
    - **Backend**: Use horizontal scaling with load balancers, database indexing, and caching layers (Redis) for hot endpoints.
- **How would you reduce App Startup Time?**
  - **Answer**:
    - Use the Android **App Startup** library to initialize SDKs lazily.
    - Compile dependencies statically using Hilt/Dagger instead of runtime reflection.
    - Defer non-critical setup tasks to background threads.
    - Flat UI rendering (avoid deep nesting layout passes).
    - Enable code minification and Proguard resource shrinking.
- **How would you design Push Notifications?**
  - **Answer**:
    - Build a reliable backend worker queue (Celery/RabbitMQ) that batch-dispatches notification requests to the FCM server.
    - Group duplicate notifications on the client side using unique tag IDs to prevent user tray spamming.
- **How would you handle Offline Data Sync?**
  - **Answer**:
    - Use deterministic **Synthetic UUIDs** (e.g., name + Lat/Lng hash) to easily match records without relying on server-generated primary keys.
    - Resolve merge conflicts gracefully by tracking transaction timestamps (`updatedAt`), defaulting to a "Last-Write-Wins" policy or showing interactive merge dialogs to users.

---

## Git

- **Git Merge vs Rebase?**
  - **Answer**:
    - **Merge**: Combines target branches by creating a new "Merge Commit." It is non-destructive and preserves the complete history, but can clutter the git tree with branch cross-overs.
    - **Rebase**: Moves the entire base of the feature branch to the tip of the master branch. It flattens the commit history into a single linear line, but rewrites commit history (unsafe on shared public branches).
- **Cherry Pick?**
  - **Answer**: Applies the changes introduced by a specific existing commit from another branch onto your current active branch (e.g. applying a hotfix commit from release branch back onto developer branch).
- **Squash?**
  - **Answer**: Combines multiple intermediate commit histories (e.g., "fixed typo", "refactoring") into a single, clean commit before merging into the main branch, maintaining a clean commit history.
- **Resolving Merge Conflicts?**
  - **Answer**: Occurs when two branches modify the same line in a file. Resolved by pulling the target branch, opening conflicts inside an IDE editor, choosing the correct lines (incoming vs current), staging the file, and running `git commit`.
- **Git Flow?**
  - **Answer**: A branching model outlining release workflows. Uses `main` (production), `develop` (staging integration), `feature/*` (developing features), `release/*` (bugfixes for release staging), and `hotfix/*` (immediate production patches).

---

## CI/CD

- **What is CI/CD?**
  - **Answer**:
    - **Continuous Integration (CI)**: Automatically building and testing code integrations on every push or Pull Request to catch compilation failures and test breaks instantly.
    - **Continuous Delivery (CD)**: Automatically packaging, signing, and deploying successful builds to distribution environments (TestFlight, Google Play Console Beta) or production app stores.
- **Have you used Jenkins/GitLab CI?**
  - **Answer**: Yes. I have configured automated pipeline scripts (.yml files) to invoke Gradle tasks, run unit tests, and compile clean APKs/IPAs on every branch push.
- **Explain Mobile Deployment Pipeline.**
  - **Answer**: Commit pushed -> Webhook triggers runner pipeline -> Runner executes static lint analysis -> Runs unit test suite -> Compiles release build -> Invokes Fastlane script to sign binary using certificates -> Uploads build to TestFlight (iOS) / Play Console Internal Track (Android).
- **How do you automate builds?**
  - **Answer**: Using **Fastlane** scripts. Fastlane automates signing profiles management, gradle/xcode compilation builds, screenshot generation, and uploading final package bundles directly to App Stores.

---

## Agile/Scrum

- **What is Agile?**
  - **Answer**: A software development philosophy focused on iterative development, flexibility, collaboration, and delivering customer value in small, continuous releases.
- **Scrum vs Kanban?**
  - **Answer**:
    - **Scrum**: Structured. Employs fixed-length iterations called Sprints (e.g., 2 weeks) with specific roles (Product Owner, Scrum Master, Developers) and ceremonies.
    - **Kanban**: Continuous. Focuses on visualizing work on a board, limiting Work In Progress (WIP) limits, and continuous delivery rather than timeboxed iterations.
- **Sprint Planning?**
  - **Answer**: A ceremony at the start of a sprint where the team aligns on the sprint goal, estimates priority user stories from the product backlog, and commits to a specific scope of work for the sprint.
- **Story Points?**
  - **Answer**: A unit of estimation reflecting the effort, complexity, and risk involved in completing a user story (typically utilizing Fibonacci scale sequences like 1, 2, 3, 5, 8).
- **Retrospective?**
  - **Answer**: A meeting held at the end of a sprint to reflect on what went well, what didn't, and identify actionable improvements for the next sprint.
- **Daily Standup?**
  - **Answer**: A short, daily synchronization meeting (max 15 mins) where team members discuss what they completed yesterday, what they plan to work on today, and call out any blocks.

---

# Behavioral Questions (Senior Developer)

- **Tell me about yourself / Why should we hire you?**
  - **Answer**: "I am a Senior Digital Developer with over 5 years of experience building native Android applications (Kotlin/Java), React Native cross-platform apps, and React JS web frontends. Throughout my career, I've designed reactive, offline-first architectures using MVVM, Dagger Hilt DI, Room, RxJava3, and WorkManager. A core showcase of my work is **SpotFinder**, an offline-first location app featuring custom touch-physics card decks, background synchronization workers, and hardware-backed configuration encryption. You should hire me because my technical expertise spans the entire mobile and web stack, aligning perfectly with your requirements. I bring a strong focus on UI performance, clean code reviews, and collaborative team mentorship."

- **Describe a project you are proud of / Explain your current Android project.**
  - **Answer**: "I am extremely proud of my current project, **SpotFinder**. It is an offline-first location application that lets users discover, swipe, save, and review places. We designed it around a local Room database cache as our Single Source of Truth, RxJava3 for reactive data streams, and Dagger Hilt for DI. When a user is offline, reviews are written to Room with an `isSynced = false` flag. Once connectivity returns, a WorkManager `ReviewSyncWorker` automatically pushes them to Firestore, flipping the flag to `true`. This ensures a zero-latency user experience regardless of network state. It also features custom card-swipe gesture touch-physics, Google Places SDK autocomplete, anonymous guest-mode bypass, and AndroidX Security Crypto (MasterKey AES256) to encrypt configurations on rooted devices."

- **Describe a challenging bug or technical issue you solved.**
  - **Answer**: "In **SpotFinder**, we built a custom swipeable card deck component. Initially, swiping cards suffered from frame-drops and visual stuttering on mid-range devices. By profiling using Android Studio Profiler, I discovered that every touch movement was triggering continuous view layout passes (`requestLayout`), which forced parent frame redraws. To solve this, I decoupled the card touch-physics from layout passes. I used hardware acceleration, cached views, and overrode `onInterceptTouchEvent` to apply raw pixel matrix translations dynamically. This stabilized the UI frame rate to a smooth 60fps."

- **Tell me about a production issue.**
  - **Answer**: "In a previous project, we deployed an update that caused users to see duplicate listings on their screens. I quickly isolated the root cause: concurrent background API updates were inserting identical records because we lacked unique constraints on server-side and client-side tables. I immediately implemented synthetic local keys (combining identifier name + location hashes) to deduplicate records locally, and pushed a patch that resolved the visual duplicates. We then set up database constraints and CI check-guards to catch duplicate data patterns."

- **How do you mentor junior developers?**
  - **Answer**: "I mentor juniors by encouraging self-reliance while providing clear safety nets. I do this through structured code reviews (explaining the *why* behind suggestions, not just the *how*), hosting weekly lunch-and-learns on architecture topics, and pair programming on complex bugs. I believe in giving juniors ownership of modular features to boost their confidence while ensuring their code is surrounded by thorough automated unit tests."

- **How do you handle conflicts?**
  - **Answer**: "I handle conflicts by focusing entirely on technical merits and data rather than opinions. For instance, when choosing between RxJava3 and Kotlin Coroutines for a new module, there was a disagreement within the team. I resolved the conflict by setting up a lightweight sandbox, presenting code examples, comparing testing overhead and compilation metrics, and highlighting team familiarity. By keeping discussions objective and centered on the project's goals, we agreed on Coroutines for new code and RxJava for maintaining legacy code."

- **How do you manage tight deadlines?**
  - **Answer**: "I manage tight deadlines by defining a strict MVP scope, communicating transparently, and minimizing development bottlenecks. In a previous release, we had a tight deadline to ship our guest bypass flow. I worked with the product owner to prioritize critical features, mocked backend APIs to develop the UI concurrently, and scheduled short daily checkpoints to address blocks. We shipped the core flows on time without compromising app stability."

- **How do you perform code reviews?**
  - **Answer**: "I treat code reviews as educational opportunities. I check for architecture alignment (e.g. ensuring no business logic slips into fragments), edge-case handling (null safety, try-catch blocks), performance issues (like database queries in main thread), and readability. I frame my feedback as suggestions or questions rather than demands, keeping comments constructive and positive."

- **Tell me about a failure and what you learned.**
  - **Answer**: "Early in my career, I rushed a feature to production without writing comprehensive integration tests. A specific edgecase caused the app to crash for users in low-connectivity areas. I learned the hard way that user-facing code must always be accompanied by unit and UI tests. Since then, I have been a strong advocate of test-driven development (TDD) and CI/CD automated test checks."

---

# Top 25 Most Likely Questions

If the interviewer has only 45–60 minutes, these are the highest-probability questions you should focus on. Click any question to jump directly to its detailed, interview-tailored answer:

1. [Tell me about yourself / Why should we hire you?](#behavioral-questions-senior-developer)
2. [Explain your current Android project / Describe a project you are proud of.](#behavioral-questions-senior-developer)
3. [Explain MVVM Architecture.](#architecture)
4. [Explain Activity Lifecycle.](#lifecycle)
5. [Explain Fragment Lifecycle.](#lifecycle)
6. [What are Coroutines?](#coroutines)
7. [What is the difference between launch and async in Coroutines?](#coroutines)
8. [LiveData vs StateFlow?](#jetpack-components)
9. [Explain Room Database.](#jetpack-components)
10. [Explain WorkManager.](#jetpack-components)
11. [Which Firebase services have you used?](#firebase-very-likely)
12. [How to optimize RecyclerView?](#performance)
13. [Explain Memory Leak examples in Android.](#performance)
14. [What causes ANR?](#performance)
15. [Explain SOLID Principles.](#architecture)
16. [What Design Patterns have you used?](#design-patterns)
17. [Explain HashMap Internal Working.](#collections)
18. [ArrayList vs LinkedList.](#collections)
19. [synchronized vs volatile.](#multithreading)
20. [React Native Hooks?](#react-native)
21. [Redux vs Context API.](#react-js)
22. [What is REST API?](#api-integration)
23. [What is your Git workflow?](#git)
24. [Explain your Agile methodology.](#agilescrum)
25. [Describe a challenging bug or technical issue you solved.](#behavioral-questions-senior-developer)

---

# Tricky Senior-Level Technical Follow-Up Questions

## Android Follow-Up Questions

- **How does `repeatOnLifecycle` differ from older scoping functions like `launchWhenStarted`?**
  - **Answer**: `launchWhenStarted` (and `launchWhenResumed`) pauses execution of the coroutine when the lifecycle drops below the target state (e.g. goes into background), but it **does not cancel** the coroutine nor does it stop collecting flow emissions in the background. The flow keeps emitting, consuming active CPU cycles and memory. `repeatOnLifecycle` completely **cancels** the executing coroutine when the state drops below the target (e.g. `onStop`) and automatically restarts/re-collects it when the state is re-entered (e.g. `onStart`), making it memory-safe and highly efficient.

- **How do you identify, trace, and resolve a memory leak in a running Android app?**
  - **Answer**: 
    - **Identification**: Integrate **LeakCanary** in debug builds. It automatically monitors destroyed activities/fragments and prints a leak trace when a leak is detected.
    - **Tracing**: Use the **Android Studio Profiler (Memory Profiler)**. Take a heap snapshot, filter by the package name, find classes that should have been garbage collected (e.g., destroyed Activities with instance count > 0), and inspect the **Referrers** tree to find the GC root holding the reference.
    - **Resolution**: Clear static references, nullify Fragment view bindings in `onDestroyView()`, cancel coroutines/disposable flows in `onCleared()`, and pass `WeakReference` if context must be held.

- **What is the difference between `@Transaction` in Room and normal queries? When is it mandatory?**
  - **Answer**: In Room, `@Transaction` ensures that multiple DAO operations execute as a single atomic unit. If any operation fails, the database rolls back to its previous state. It is mandatory:
    - When performing multiple write operations sequentially (like bulk inserts).
    - When using `@Relation` annotations to query entities with nested relationships (since Room executes multiple select statements under the hood, a transaction prevents inconsistencies if the DB is modified between selects).

- **How does RxJava's `Schedulers.io()` differ from `Schedulers.computation()`?**
  - **Answer**:
    - `Schedulers.io()` is backed by an unbounded, caching thread pool. It dynamically grows as tasks are submitted. Used for network calls, database queries, and disk I/O where threads spend most of their time waiting (blocking).
    - `Schedulers.computation()` is backed by a bounded, fixed-size thread pool (usually size = number of CPU cores). It is optimized for CPU-bound computation (image processing, sorting large lists). Running blocking operations here will starve other computation tasks, causing UI stutter.

## React Native Follow-Up Questions

- **Why are inline objects, arrays, and arrow functions inside JSX renders bad for React Native performance?**
  - **Answer**: Every time the parent component renders, inline definitions (e.g., `style={{ margin: 10 }}` or `onPress={() => doSomething()}`) recreate a brand new reference in memory. When passed to child components, a shallow comparison of props (like in `React.memo`) will always see a "new" prop reference, forcing the child component to unnecessarily re-render, degrading UI performance.

- **How does Hermes improve React Native app startup time compared to JavaScriptCore (JSC)?**
  - **Answer**: 
    - Under JSC, the JavaScript source code is downloaded and parsed/compiled into bytecode at app runtime on the device, delaying startup.
    - Under **Hermes**, bytecode compilation is done **ahead-of-time (AOT)** during the production build process. The APK contains pre-compiled bytecode, allowing the engine to execute the JS instructions immediately upon launch. Hermes also uses virtual memory paging, reducing RAM overhead.

- **What is the "Bridge Bottleneck" and how does the Javascript Interface (JSI) resolve it?**
  - **Answer**: The legacy Bridge forces all communication between JS and Native to serialize messages into JSON strings, place them in a message queue, and send them asynchronously. If you drag/swipe quickly, hundreds of events fill the queue, causing latency (stutter). **JSI** eliminates serialization by allowing the JS engine to directly access native C++ functions and objects, allowing **synchronous** execution and zero queuing overhead.

## React JS Follow-Up Questions

- **What is React Fiber and how does it support Concurrent Rendering?**
  - **Answer**: React Fiber is a complete rewrite of React's core reconciliation algorithm. The old reconciler updated the DOM synchronously in a single blocking call. Fiber breaks the rendering work into small incremental chunks. It can pause, abort, or resume rendering work based on priority (e.g., prioritizing user keyboard inputs over offscreen list rendering), enabling smoother, non-blocking UI rendering.

- **What happens if you use `Math.random()` or array indexes as key props in React lists?**
  - **Answer**:
    - **Math.random()**: Generates a new key on every single render. React sees every single list item as brand new, forcing the entire list to be destroyed and recreated from scratch in the DOM (very slow, breaks animations).
    - **Array Index**: If the list order changes (e.g. sorting, inserting at top, deleting), the index shifts. React maps the old component state to the new index, causing UI state bugs (e.g., checkbox inputs staying checked for the wrong item).

## API & Security Follow-Up Questions

- **What is SSL Pinning, and how does it prevent Man-in-the-Middle (MitM) attacks?**
  - **Answer**: Standard TLS relies on trusting CA (Certificate Authority) certificates stored in the device OS. A malicious proxy (like Charles Proxy or a compromised network) can issue a fake certificate to intercept HTTPS traffic. **SSL Pinning** hardcodes the server's public key or certificate hash inside the app client (e.g., via OkHttpClient network configs). If the network certificate does not match the pinned hash, the connection is instantly aborted, preventing interception.

- **How do you secure JWT access tokens on mobile devices?**
  - **Answer**: 
    - **Never** store them in plain-text SharedPreferences, AsyncStorage, or local state variables.
    - On **Android**: Store tokens in `EncryptedSharedPreferences` backed by the Android Keystore system (AES256 encryption with a hardware-backed MasterKey).
    - On **iOS**: Store tokens in the secure system **Keychain**, which is encrypted by hardware keys.

## System Design Follow-Up Questions

- **How does the CAP Theorem apply to an Offline-First mobile application?**
  - **Answer**: CAP states a system can only guarantee two of **Consistency**, **Availability**, and **Partition Tolerance**. For a mobile app, network drops are inevitable (network partitions). An offline-first app prioritizes **Availability** (the app remains fully operational using local Room/AsyncStorage caches) over strict global **Consistency** (local data updates are not immediately visible to other users until sync occurs). Upon reconnecting, consistency is eventually restored (Eventual Consistency).

---

# Final 3-Day Strategy

## Day 1 (8–10 Hours)

### Java
- Core Java
- Collections
- Multithreading

### Android
- Activity Lifecycle
- Fragment Lifecycle
- MVVM
- Coroutines

---

## Day 2 (8–10 Hours)

### Android Advanced
- Room Database
- WorkManager
- Firebase

### Frontend
- React Native
- React JS
- REST APIs

---

## Day 3 (8–10 Hours)

### Architecture
- SOLID Principles
- Design Patterns
- System Design

### Process
- Git
- Agile/Scrum

### Interview Preparation
- Behavioral Questions
- Mock Interview Practice

---

# Interview Success Checklist

## Android
- [ ] MVVM
- [ ] Coroutines
- [ ] ViewModel
- [ ] LiveData / StateFlow
- [ ] Room
- [ ] WorkManager
- [ ] RecyclerView Optimization
- [ ] ANR
- [ ] Memory Leaks

## Java
- [ ] OOPs
- [ ] Collections
- [ ] Java 8 Features
- [ ] Multithreading
- [ ] Exception Handling

## React Native
- [ ] Hooks
- [ ] Redux
- [ ] Navigation
- [ ] Native Modules
- [ ] Performance Optimization

## APIs
- [ ] REST APIs
- [ ] JWT
- [ ] Authentication
- [ ] Pagination
- [ ] Error Handling

## Leadership
- [ ] System Design
- [ ] Design Patterns
- [ ] Git
- [ ] Agile
- [ ] Behavioral Questions