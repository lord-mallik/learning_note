# Mobile Developer Interview Preparation Guide

---

# Table of Contents
- [Mobile Developer Interview Preparation Guide](#mobile-developer-interview-preparation-guide)
- [Table of Contents](#table-of-contents)
- [1. Core Java](#1-core-java)
  - [OOPs (Object-Oriented Programming)](#oops-object-oriented-programming)
  - [Java Architecture \& JVM](#java-architecture--jvm)
  - [Strings](#strings)
  - [Collections](#collections)
  - [Exception Handling](#exception-handling)
  - [Java 8 Features](#java-8-features)
  - [Multithreading](#multithreading)
- [](#)
- [Kotlin Interview Questions](#kotlin-interview-questions)
- [Core Kotlin](#core-kotlin)
  - [Kotlin vs Java?](#kotlin-vs-java)
    - [Senior Developer Perspective:](#senior-developer-perspective)
  - [val vs var?](#val-vs-var)
    - [Interview Tip:](#interview-tip)
  - [const val vs val?](#const-val-vs-val)
  - [lateinit vs lazy?](#lateinit-vs-lazy)
    - [Example:](#example)
    - [Senior Developer Perspective:](#senior-developer-perspective-1)
  - [Null Safety?](#null-safety)
  - [Safe Call Operator (?.)](#safe-call-operator-)
  - [Elvis Operator (?:)](#elvis-operator-)
  - [Not Null Assertion (!!)](#not-null-assertion-)
    - [Senior Developer Perspective:](#senior-developer-perspective-2)
- [Scope Functions](#scope-functions)
  - [let()](#let)
  - [run()](#run)
  - [with()](#with)
  - [apply()](#apply)
  - [also()](#also)
  - [Scope Function Summary](#scope-function-summary)
- [OOP \& Classes](#oop--classes)
  - [Data Class?](#data-class)
  - [Sealed Class?](#sealed-class)
  - [Enum Class vs Sealed Class?](#enum-class-vs-sealed-class)
    - [Senior Developer Perspective:](#senior-developer-perspective-3)
  - [Object Declaration?](#object-declaration)
  - [Companion Object?](#companion-object)
  - [Nested vs Inner Class?](#nested-vs-inner-class)
- [Functions](#functions)
  - [Higher Order Functions?](#higher-order-functions)
  - [Lambda Expressions?](#lambda-expressions)
  - [Inline Functions?](#inline-functions)
  - [noinline vs crossinline?](#noinline-vs-crossinline)
  - [Extension Functions?](#extension-functions)
  - [Infix Functions?](#infix-functions)
  - [Tail Recursion?](#tail-recursion)
- [Coroutines](#coroutines)
  - [What are Coroutines?](#what-are-coroutines)
  - [suspend Function?](#suspend-function)
  - [launch vs async?](#launch-vs-async)
  - [Job vs Deferred?](#job-vs-deferred)
  - [CoroutineScope?](#coroutinescope)
    - [Senior Developer Perspective:](#senior-developer-perspective-4)
  - [Why avoid GlobalScope?](#why-avoid-globalscope)
  - [Dispatchers.Main vs IO vs Default?](#dispatchersmain-vs-io-vs-default)
  - [SupervisorJob?](#supervisorjob)
  - [coroutineScope vs supervisorScope?](#coroutinescope-vs-supervisorscope)
  - [Structured Concurrency?](#structured-concurrency)
  - [Coroutine Exception Handling?](#coroutine-exception-handling)
- [Advanced Kotlin](#advanced-kotlin)
  - [Generics?](#generics)
  - [Reified Types?](#reified-types)
  - [Type Erasure?](#type-erasure)
  - [Covariance (out)?](#covariance-out)
  - [Contravariance (in)?](#contravariance-in)
  - [Delegation Pattern?](#delegation-pattern)
  - [Property Delegation?](#property-delegation)
    - [Senior Developer Perspective:](#senior-developer-perspective-5)
- [2. Android Development](#2-android-development)
  - [Lifecycle (Activity \& Fragment)](#lifecycle-activity--fragment)
  - [Architecture (MVVM, Clean, SOLID)](#architecture-mvvm-clean-solid)
  - [Jetpack Components](#jetpack-components)
  - [Coroutines](#coroutines-1)
  - [Performance (ANR, RecyclerView, Memory Leaks)](#performance-anr-recyclerview-memory-leaks)
- [3. React Native \& React JS](#3-react-native--react-js)
  - [React Native](#react-native)
  - [React Native Architecture?](#react-native-architecture)
    - [Legacy Architecture (Bridge Architecture)](#legacy-architecture-bridge-architecture)
    - [New Architecture (JSI + Fabric + TurboModules)](#new-architecture-jsi--fabric--turbomodules)
    - [Senior Developer Perspective:](#senior-developer-perspective-6)
  - [How React Native Communicates with Native Code?](#how-react-native-communicates-with-native-code)
    - [New Architecture:](#new-architecture)
    - [Senior Developer Perspective:](#senior-developer-perspective-7)
  - [What are Native Modules?](#what-are-native-modules)
    - [Senior Developer Perspective:](#senior-developer-perspective-8)
  - [What is the Bridge Bottleneck?](#what-is-the-bridge-bottleneck)
    - [Solution:](#solution)
  - [What is JSI (JavaScript Interface)?](#what-is-jsi-javascript-interface)
    - [Interview Answer:](#interview-answer)
    - [Senior Developer Perspective:](#senior-developer-perspective-9)
  - [What are TurboModules?](#what-are-turbomodules)
    - [Interview Answer:](#interview-answer-1)
    - [Example:](#example-1)
    - [Senior Developer Perspective:](#senior-developer-perspective-10)
  - [What is Fabric Renderer?](#what-is-fabric-renderer)
    - [Interview Answer:](#interview-answer-2)
    - [Senior Developer Perspective:](#senior-developer-perspective-11)
  - [What is Hermes Engine?](#what-is-hermes-engine)
    - [Interview Answer:](#interview-answer-3)
    - [How Hermes improves startup time?](#how-hermes-improves-startup-time)
    - [Experience-Based Answer:](#experience-based-answer)
  - [What is Metro Bundler?](#what-is-metro-bundler)
    - [Interview Answer:](#interview-answer-4)
- [React Hooks](#react-hooks)
  - [What are Hooks?](#what-are-hooks)
    - [Interview Answer:](#interview-answer-5)
  - [What is useState and how does it trigger updates?](#what-is-usestate-and-how-does-it-trigger-updates)
    - [Interview Answer:](#interview-answer-6)
    - [Senior Developer Perspective:](#senior-developer-perspective-12)
  - [What is React.memo?](#what-is-reactmemo)
    - [Interview Answer:](#interview-answer-7)
    - [Senior Developer Perspective:](#senior-developer-perspective-13)
- [Navigation](#navigation)
  - [What is React Navigation?](#what-is-react-navigation)
    - [Interview Answer:](#interview-answer-8)
  - [Stack Navigator vs Tab Navigator?](#stack-navigator-vs-tab-navigator)
  - [Deep Linking?](#deep-linking)
    - [Interview Answer:](#interview-answer-9)
  - [Passing Data Between Screens?](#passing-data-between-screens)
    - [Interview Answer:](#interview-answer-10)
  - [Navigation Lifecycle?](#navigation-lifecycle)
    - [Interview Answer:](#interview-answer-11)
- [Performance Optimization](#performance-optimization)
  - [React Native Performance Optimization Techniques?](#react-native-performance-optimization-techniques)
    - [Interview Answer:](#interview-answer-12)
    - [Senior Developer Perspective:](#senior-developer-perspective-14)
  - [Why are inline objects, arrays, and arrow functions inside JSX bad for performance?](#why-are-inline-objects-arrays-and-arrow-functions-inside-jsx-bad-for-performance)
    - [Interview Answer:](#interview-answer-13)
    - [Solution:](#solution-1)
  - [ScrollView vs FlatList?](#scrollview-vs-flatlist)
    - [Rule:](#rule)
  - [What is Virtualization?](#what-is-virtualization)
    - [Interview Answer:](#interview-answer-14)
  - [What is keyExtractor in FlatList?](#what-is-keyextractor-in-flatlist)
    - [Interview Answer:](#interview-answer-15)
  - [What is getItemLayout()?](#what-is-getitemlayout)
    - [Interview Answer:](#interview-answer-16)
  - [What is removeClippedSubviews?](#what-is-removeclippedsubviews)
- [Storage](#storage)
  - [AsyncStorage?](#asyncstorage)
  - [MMKV?](#mmkv)
    - [Use Cases:](#use-cases)
  - [Secure Storage?](#secure-storage)
  - [Realm Database?](#realm-database)
    - [Senior Developer Perspective:](#senior-developer-perspective-15)
- [Push Notifications in React Native?](#push-notifications-in-react-native)
    - [Senior Developer Perspective:](#senior-developer-perspective-16)
  - [React JS](#react-js)
- [Additional Questions to Merge into Existing React JS Notes](#additional-questions-to-merge-into-existing-react-js-notes)
  - [Real DOM vs Virtual DOM?](#real-dom-vs-virtual-dom)
    - [Senior Developer Perspective:](#senior-developer-perspective-17)
  - [React Fiber?](#react-fiber)
    - [Senior Developer Perspective:](#senior-developer-perspective-18)
  - [React Router?](#react-router)
    - [Senior Developer Perspective:](#senior-developer-perspective-19)
  - [Reusable Components?](#reusable-components)
    - [Example:](#example-2)
  - [What is Context API?](#what-is-context-api)
    - [Senior Developer Perspective:](#senior-developer-perspective-20)
  - [What is Redux?](#what-is-redux)
  - [useMemo vs useCallback?](#usememo-vs-usecallback)
    - [Key Difference:](#key-difference)
  - [Component Lifecycle?](#component-lifecycle)
    - [Class Component Lifecycle:](#class-component-lifecycle)
    - [Functional Component Equivalent:](#functional-component-equivalent)
  - [What happens if you use Math.random() or index as keys?](#what-happens-if-you-use-mathrandom-or-index-as-keys)
    - [Using Math.random():](#using-mathrandom)
    - [Using Array Index:](#using-array-index)
    - [Senior Developer Perspective:](#senior-developer-perspective-21)
  - [Context API vs Redux?](#context-api-vs-redux)
    - [Senior Developer Perspective:](#senior-developer-perspective-22)
  - [Updated Virtual DOM Answer](#updated-virtual-dom-answer)
  - [Updated Functional vs Class Components](#updated-functional-vs-class-components)
    - [Senior Developer Perspective:](#senior-developer-perspective-23)
  - [Updated useEffect Lifecycle](#updated-useeffect-lifecycle)
    - [Senior Developer Perspective:](#senior-developer-perspective-24)
- [4. API Integration \& Firebase](#4-api-integration--firebase)
  - [API Integration](#api-integration)
  - [Firebase Services](#firebase-services)
- [5. System Design \& Security](#5-system-design--security)
  - [System Design](#system-design)
  - [Design Patterns](#design-patterns)
- [6. Development Process \& Leadership](#6-development-process--leadership)
  - [Git Workflow](#git-workflow)
  - [CI/CD Pipelines](#cicd-pipelines)
  - [Agile \& Scrum Methodology](#agile--scrum-methodology)
- [7. Behavioral Questions (Senior/Lead Developer)](#7-behavioral-questions-seniorlead-developer)
- [8. Top 25 Most Likely Questions Checklist](#8-top-25-most-likely-questions-checklist)
- [9. Final 3-Day Strategy \& Success Checklist](#9-final-3-day-strategy--success-checklist)
  - [Final 3-Day Strategy](#final-3-day-strategy)
    - [Day 1 (8–10 Hours)](#day-1-810-hours)
      - [Java](#java)
      - [Android](#android)
    - [Day 2 (8–10 Hours)](#day-2-810-hours)
      - [Android Advanced](#android-advanced)
      - [Frontend](#frontend)
    - [Day 3 (8–10 Hours)](#day-3-810-hours)
      - [Architecture](#architecture)
      - [Process](#process)
      - [Interview Preparation](#interview-preparation)
  - [Interview Success Checklist](#interview-success-checklist)
    - [Android](#android-1)
    - [Java](#java-1)
    - [React Native](#react-native-1)
    - [APIs](#apis)
    - [Leadership](#leadership)

---

# 1. Core Java

## OOPs (Object-Oriented Programming)

- **What are the four pillars of OOP?**
  1. **Encapsulation**: Wrapping data (variables) and methods (functions) together into a single unit (class) and restricting direct access using modifiers (`private`, `protected`, `public`).
  2. **Abstraction**: Hiding complex implementation details and exposing only essential functionality.
  3. **Inheritance**: Allowing a child class to acquire properties and behaviors of a parent class to promote reusability.
  4. **Polymorphism**: Allowing the same method or object to take multiple forms (overloading and overriding).

- **Difference between Abstraction and Encapsulation?**
  | Feature | Abstraction | Encapsulation |
  |---|---|---|
  | **Definition** | Hiding implementation details and showing only functionality. | Wrapping data and methods together and restricting direct access. |
  | **Focus** | What an object does. | How data is protected. |
  | **Achieved Using** | Abstract classes and interfaces. | Access modifiers (`private`, `protected`, `public`). |
  | **Purpose** | Simplify complexity. | Protect data integrity. |
  | **Example** | ATM machine showing only deposit/withdraw options. | Bank account balance being private and accessed through methods. |

  *In simple terms*: Abstraction hides complexity. Encapsulation hides data and controls access to it.

- **Difference between Interface and Abstract Class?**
  | Feature | Interface | Abstract Class |
  |---|---|---|
  | **Methods** | Only abstract methods (Java 7); can have `default` and `static` methods (Java 8+). | Can have both abstract and concrete methods. |
  | **Variables** | `public`, `static`, and `final` by default. | Can have instance variables with any access modifier. |
  | **Inheritance** | A class can implement multiple interfaces. | A class can extend only one abstract class. |
  | **Purpose** | Define a contract or capability. | Provide a common base with partial implementation. |
  | **Constructor** | Cannot have constructors. | Can have constructors. |

  *Use Interface when*: You want multiple inheritance of behavior, or you are defining capabilities (e.g. `Drivable`, `Serializable`).  
  *Use Abstract Class when*: You want to share common code among related classes, or you need constructors/state management.

- **What is Polymorphism?**
  Polymorphism means "many forms." It allows the same method or object reference to behave differently based on the context.
  1. **Compile-time Polymorphism (Method Overloading)**: The method is selected during compilation. Achieved by defining multiple methods with the same name but different parameters (number, type, or order).
  2. **Runtime Polymorphism (Method Overriding)**: The method is selected during runtime. Achieved when a subclass provides its own implementation of a method already defined in its parent class.

- **Example: Runtime Polymorphism**
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
          animal.sound(); // Output: Dog barks
      }
  }
  ```
  *Explanation*: `animal` is a reference of type `Animal` pointing to a `Dog` object. At runtime, the JVM resolves the actual object type (`Dog`) and calls its overridden method. This is also called **Dynamic Method Dispatch**.

- **Method Overloading vs Method Overriding?**
  | Feature | Method Overloading | Method Overriding |
  |---|---|---|
  | **Definition** | Same method name with different parameters. | Redefining a parent class method in a child class. |
  | **Occurs In** | Same class. | Parent-child classes. |
  | **Polymorphism** | Compile-time. | Runtime. |
  | **Return Type** | Can differ if parameters differ. | Must be same or covariant. |
  | **Method Signature** | Must be different. | Must be the same. |
  | **Binding** | Static Binding (Early Binding). | Dynamic Binding (Late Binding). |

- **What is Inheritance?**
  An OOP concept where a child class acquires the properties and behaviors of a parent class using the `extends` keyword. It promotes code reuse and establishes an **"is-a" relationship**.
  - **Single Inheritance**: One child inherits from one parent. (A -> B)
  - **Multilevel Inheritance**: A class inherits from another inherited class. (A -> B -> C)
  - **Hierarchical Inheritance**: Multiple child classes inherit from the same parent. (A -> B, A -> C)
  - **Multiple Inheritance**: Not supported with classes (to avoid the **Diamond Problem**); achieved through interfaces.
  *Benefits*: Code reusability, reduced redundancy, easier maintenance, extensibility.

- **Why is OOP important in large applications?**
  It helps organize code into reusable, maintainable, and modular components. As systems grow, managing code becomes complex, and OOP addresses this through encapsulation, inheritance, polymorphism, and abstraction, making it easier to test and scale.

- **Can you explain all four pillars with real-life examples?**
  - **Encapsulation**: A bank account balance cannot be modified directly; it requires using `deposit()` or `withdraw()` methods.
  - **Abstraction**: Driving a car requires using the steering wheel and pedals without knowing the inner mechanical details of the engine.
  - **Inheritance**: A `Car` is a `Vehicle`. It inherits common vehicle properties like `speed` and `fuelCapacity`.
  - **Polymorphism**: A payment method can be a Credit Card, UPI, or Net Banking, but all implement a common `pay()` method differently.

- **How does OOP improve maintainability and scalability?**
  - **Maintainability**: Dividing functionality into independent classes means changes in one module have minimal impact on others.
  - **Scalability**: New functionality can be added through inheritance, interfaces, and composition without modifying existing code, adhering to the **Open-Closed Principle** (open for extension, closed for modification).

- **Can abstraction exist without encapsulation?**
  Technically yes, but they practically work together. Abstraction focuses on *what* an object does (e.g. defined via an interface), while encapsulation protects *how* it does it by hiding the state.

- **Which is more important in security: abstraction or encapsulation?**
  **Encapsulation** is more important because it actively protects data by restricting direct access using private variables and controlled access methods, preventing unauthorized manipulation.

- **Can constructors be polymorphic?**
  **No**. Constructors cannot be inherited or overridden. Since polymorphism relies on method overriding, constructors do not participate in polymorphism.

- **Can static methods be overridden?**
  **No**. Static methods belong to the class rather than the instance. Defining a static method with the same signature in a subclass is called **Method Hiding**, not overriding. The method called depends on the reference type, not the runtime object.

- **Can private methods be overridden?**
  **No**. Private methods are not visible to subclasses. Since overriding requires inheritance visibility, private methods cannot be overridden.

- **What is Covariant Return Type?**
  It allows an overridden method in a subclass to return a subtype of the return type declared in the parent class method.
  ```java
  class Animal {}
  class Dog extends Animal {}
  class Parent {
      Animal getAnimal() { return new Animal(); }
  }
  class Child extends Parent {
      @Override
      Dog getAnimal() { return new Dog(); } // Allowed
  }
  ```

- **Why doesn’t Java support multiple inheritance with classes?**
  To prevent ambiguity caused by the **Diamond Problem**. If class D extends both class B and C, and both override a method from class A, Java cannot determine which parent's implementation D should inherit.
  ```text
        A (draw)
       / \
      B   C (both override draw)
       \ /
        D (ambiguous: B's draw or C's draw?)
  ```
  Java resolves this in interfaces by forcing the implementing class to explicitly override the conflicting default method.

- **What is the `super` keyword used for?**
  It refers to the immediate parent class object. It is used to:
  1. Access parent variables: `super.varName;`
  2. Call parent methods: `super.methodName();`
  3. Call parent constructor: `super();` (must be the first statement in child constructor).

- **What is Constructor Chaining in Inheritance?**
  The process of invoking constructors across inheritance levels. When a child object is created, the parent class constructor is executed first, followed by the child constructor, ensuring the entire object hierarchy is initialized correctly.

- **How does Java achieve runtime polymorphism?**
  Java achieves runtime polymorphism through **method overriding** and **dynamic method dispatch**. When a parent class reference refers to a subclass object, the determination of which overridden method to execute is made at runtime by the JVM based on the actual object type, not the reference type.
  ```java
  Animal animal = new Dog();
  animal.sound(); // resolved at runtime to Dog's sound()
  ```

- **What is Dynamic Method Dispatch?**
  The mechanism by which a call to an overridden method is resolved at runtime rather than compile-time. The JVM uses the actual object type at runtime to dispatch the method call.

- **Give a practical example of OOP from your project.**
  In the **SpotFinder** project:
  - **Abstraction**: We created a `PlacesRepository` interface defining data retrieval contracts.
  - **Encapsulation**: We wrapped local Room database and remote Firestore instances inside private fields inside repositories, exposing data stream resources safely.
  - **Inheritance**: We created modular view wrappers by extending native Android components (like `FrameLayout` for custom `CardStackView`).
  - **Polymorphism**: In our dependency injection modules, we can easily swap our local mock data provider with the production Firestore backend because both implement the same repository interfaces.


---

## Java Architecture & JVM

- **Why is Java Platform Independent?**
  Because Java source code is compiled into platform-neutral **bytecode** (`.class` files) rather than native machine code. Any operating system with a **Java Virtual Machine (JVM)** can interpret or compile (via JIT) this bytecode into its own OS-specific machine instructions, following the principle: **"Write Once, Run Anywhere (WORA)."**

- **Java Compilation and Execution Flow**
  ```text
  Java Source Code (.java) -> [javac Compiler] -> Bytecode (.class) -> [JVM (ART in Android)] -> Native OS Machine Code
  ```

- **Relationship Between JDK, JRE, and JVM**
  - **JVM (Java Virtual Machine)**: Executes Java bytecode. It is platform-dependent.
  - **JRE (Java Runtime Environment)**: JVM + Libraries required to run Java applications.
  - **JDK (Java Development Kit)**: JRE + Development Tools (e.g. `javac`, debugger).
  ```text
  JDK [ JRE [ JVM + Core Libraries ] + Dev Tools ]
  ```

- **Is Java completely platform independent?**
  Java *applications* are platform independent, but the *JVM itself* is platform dependent because each operating system requires its own specific JVM implementation to translate bytecode to local machine code.

- **How does JVM improve security and performance?**
  - **Security**: 
    - **Class Loader**: Isolates untrusted code namespaces.
    - **Bytecode Verifier**: Checks bytecode validity before execution.
    - **Memory Safety**: No direct pointer manipulation (prevents memory corruption).
  - **Performance**:
    - **JIT Compiler (Just-In-Time)**: Compiles frequently executed bytecode (hotspots) into native machine code at runtime.
    - **Garbage Collection**: Automatically manages and reclaims memory to prevent memory leaks.

- **What is Bytecode?**
  Bytecode is the intermediate, platform-neutral instruction set compiled from Java source code (`.class` files). It is designed to be executed by the JVM (either interpreted or compiled into native machine code at runtime by the JIT compiler).

---

## Strings

- **Difference between String, StringBuilder, and StringBuffer?**
  | Feature | String | StringBuilder | StringBuffer |
  |---|---|---|---|
  | **Mutable** | No (Immutable) | Yes | Yes |
  | **Thread Safe** | Yes (due to immutability) | No | Yes (methods are synchronized) |
  | **Performance** | Slow for modifications | Fastest | Slower than StringBuilder |
  | **Use Case** | Read-only text, keys | Single-threaded updates | Multi-threaded updates |

- **Why is String immutable?**
  1. **String Pool**: Saves heap memory by allowing multiple references to point to the same string literal.
  2. **Security**: Strings are widely used for database URLs, network connections, and file paths; immutability prevents alteration.
  3. **Thread Safety**: Multiple threads can access a string concurrently without synchronization.
  4. **HashMap Key Stability**: Ensures the `hashCode()` remains constant, so objects are retrieved reliably.

- **What is String Pool?**
  A special memory area in the Heap where Java stores String literals.
  ```java
  String s1 = "Java";
  String s2 = "Java"; // Points to the same object in the String Pool
  String s3 = new String("Java"); // Creates a new object in the general heap

  System.out.println(s1 == s2); // true
  System.out.println(s1 == s3); // false
  ```

---

## Collections

- **Difference between ArrayList and LinkedList?**
  | Feature | ArrayList | LinkedList |
  |---|---|---|
  | **Data Structure** | Dynamic Array | Doubly Linked List |
  | **Random Access** | Fast O(1) | Slow O(n) |
  | **Insert/Delete (Middle)**| Slow O(n) (requires elements shifting) | Fast O(1) (once node is located) |
  | **Memory Overhead** | Low | High (stores node pointers) |
  | **Use Case** | Frequent reads, rare updates | Frequent writes, rare reads |

- **Difference between HashMap and Hashtable?**
  | Feature | HashMap | Hashtable |
  |---|---|---|
  | **Thread Safe** | No | Yes |
  | **Null Keys/Values** | One null key, multiple null values | No null keys or values allowed |
  | **Performance** | Fast | Slow (synchronized overhead) |
  | **Legacy** | No | Yes (deprecated in favor of ConcurrentHashMap) |

  - **ArrayList** uses a dynamic array and provides fast random access, making it suitable for read-heavy operations.
  - **LinkedList** uses a doubly linked list and is better when frequent insertions and deletions are required.

- **Difference between HashMap and ConcurrentHashMap?**
  | Feature | HashMap | ConcurrentHashMap |
  |---|---|---|
  | **Thread Safe** | No | Yes |
  | **Locking Mechanism** | None | Segment-level locking / Bucket-level CAS |
  | **Null Keys/Values** | Allowed | Not allowed |
  | **Performance** | High | High (optimized for multi-threaded read/write) |

  - HashMap is not thread-safe and is best suited for single-threaded applications, whereas ConcurrentHashMap is thread-safe, supports concurrent read/write operations, and is preferred in multithreaded environments due to its better performance and scalability.

- **Why is HashMap not thread-safe?**
  Because it has no internal synchronization. If multiple threads modify the map concurrently (e.g. putting keys), it can cause race conditions, data corruption (overwriting entries), and infinite loops during bucket resizing in older Java versions.

- **How does HashMap work internally?**
  HashMap uses **Hashing** to store and retrieve data:
  1. **Put Operation**: Calls `hashCode()` on the key to calculate the bucket index. If no collision occurs, it inserts the Entry. If a collision occurs (same index), it appends the entry to a Linked List or a Red-Black Tree.
  2. **Collision Resolution**: Java 8+ optimizes buckets. If a bucket's Linked List size exceeds **8** and total capacity is >= 64, the list is converted into a balanced **Red-Black Tree**, improving search complexity from O(n) to O(log n).
  3. **Get Operation**: Computes the key's hash, finds the bucket, and uses the `equals()` method to match the exact key.

- **What is the contract between hashCode() and equals()?**
  - If two objects are equal according to the `equals(Object)` method, then calling `hashCode()` on each of the two objects must produce the same integer result.
  - If two objects are unequal, they do not have to produce different hashCodes, though doing so improves performance in hash tables.
  - *Why override both?* If you override `equals()` but not `hashCode()`, equal objects will hash to different buckets in a `HashMap` or `HashSet`, violating the collection rules and failing retrieval.

- **What is Collision in HashMap and how is it handled?**
  A collision occurs when two distinct keys return the same hash code and map to the same bucket index.
  - **Java 7**: Handled via a Linked List (separate chaining).
  - **Java 8+**: If a bucket's size exceeds **8** and total capacity is >= 64, the list is converted to a balanced **Red-Black Tree**, reducing search complexity from $O(n)$ to $O(\log n)$.

- **Difference between HashSet and TreeSet?**
  | Feature | HashSet | TreeSet |
  |---|---|---|
  | **Ordering** | Unordered. | Sorted (natural order or custom Comparator). |
  | **Data Structure** | Backed by `HashMap`. | Backed by `TreeMap` (Red-Black Tree). |
  | **Performance** | $O(1)$ for basic operations. | $O(\log n)$ for basic operations. |
  | **Nulls** | Allows one null. | No nulls allowed. |

- **Difference between List, Set, and Map?**
  | Feature | List | Set | Map |
  |---|---|---|---|
  | **Duplicates** | Allowed. | Not allowed. | Unique keys, duplicate values allowed. |
  | **Order** | Insertion order. | Unordered (mostly). | Depends on implementation. |
  | **Access** | Index-based. | Value-based. | Key-based. |

- **Difference between Synchronized Collection and ConcurrentHashMap?**
  - **Synchronized Collection** (e.g. `Collections.synchronizedMap`): Locks the entire map for every read/write operation, creating a concurrency bottleneck.
  - **ConcurrentHashMap**: Uses bucket-level locking (Lock Striping / CAS operations) so threads can write concurrently to different buckets without blocking.

---

## Exception Handling

- **Checked vs Unchecked Exceptions?**
  - **Checked Exceptions**: Checked at compile-time. The compiler forces the developer to handle them via try-catch or declare them using `throws`. *Examples*: `IOException`, `SQLException`.
  - **Unchecked Exceptions (Runtime)**: Occur at runtime. Not checked by the compiler. *Examples*: `NullPointerException`, `ArithmeticException`, `ArrayIndexOutOfBoundsException`.
  *Why RuntimeException is unchecked*: Because they are usually due to programming errors that can be avoided with proper logic guards.

- **throw vs throws?**
  | throw | throws |
  |---|---|
  | Used to explicitly throw an exception | Declares that a method may throw exceptions |
  | Used inside a method | Used in the method signature |
  | Followed by an instance (e.g. `throw new Exception()`) | Followed by class names (e.g. `throws IOException`) |
  | Throws a single exception | Can declare multiple exceptions |

- **finally vs finalize vs final?**
  - **final**: Keyword used to restrict modification. Classes cannot be inherited, methods cannot be overridden, and variables cannot be reassigned.
  - **finally**: A block used with try-catch that **always executes** (even if an exception is thrown or a return statement is reached), making it ideal for cleanup code.
  - **finalize()**: A deprecated callback method on `Object` called by the Garbage Collector before destroying an object. It is unreliable and should not be used.

---

## Java 8 Features

- **What is Lambda Expression?**
  An anonymous function (a function without a name, return type, or class association) that provides a concise implementation of a Functional Interface.
  Traditional:
  ```java
  Runnable r = new Runnable() {
      public void run() { System.out.println("Run"); }
  };
  ```
  Lambda:
  ```java
  Runnable r = () -> System.out.println("Run");
  ```

- **What is Functional Interface?**
  An interface that contains **exactly one abstract method**. It can contain any number of default or static methods. Annotated with `@FunctionalInterface`. Common types: `Predicate<T>`, `Function<T, R>`, `Consumer<T>`, `Supplier<T>`.

- **What is Stream API?**
  A pipeline of functions used to process collections of objects declaratively.
  ```java
  list.stream()
      .filter(x -> x > 10)
      .map(x -> x * 2)
      .collect(Collectors.toList());
  ```

- **Difference between map() and flatMap()?**
  - `map()`: Transforms each element into another element (1-to-1 mapping). e.g. `["Java", "Spring"]` -> `[4, 6]`.
  - `flatMap()`: Transforms each element into a stream of elements and flattens multiple nested streams into a single stream (1-to-many mapping). e.g. `[[1, 2], [3, 4]]` -> `[1, 2, 3, 4]`.

- **Difference between filter() and map()?**
  - `filter()`: Evaluates a boolean condition and retains only elements matching the condition (does not transform the elements).
  - `map()`: Applies a function to transform each element into a new value.

- **What is Optional?**
  A container object used to represent the presence or absence of a value, helping to avoid `NullPointerException`.
  - `Optional.of(value)`: Returns Optional containing a non-null value (throws NPE if null).
  - `Optional.ofNullable(value)`: Returns Optional containing value if non-null, else empty.
  - `Optional.empty()`: Returns an empty Optional.

---

## Multithreading

- **What is Thread?**
  The smallest unit of execution within a process. Multiple threads share the process's memory space but have their own call stack and program counter, enabling concurrent execution.

- **Runnable vs Callable?**
  | Feature | Runnable | Callable |
  |---|---|---|
  | **Return Value** | No (returns `void`) | Yes (returns `V`) |
  | **Exceptions** | Cannot throw checked exceptions | Can throw checked exceptions |
  | **Method** | `run()` | `call()` |
  | **Execution** | Passed to `Thread` or `ExecutorService` | Passed to `ExecutorService` (returns `Future<V>`) |

- **synchronized vs volatile?**
  - `synchronized`: A locking mechanism that provides **mutual exclusion** (only one thread can access the synchronized block/method) and visibility. Blocks other threads and is heavier.
  - `volatile`: A light synchronization keyword guaranteeing **visibility** (reads/writes bypass cache and go directly to main memory). It does **not** provide mutual exclusion or atomicity (e.g. `count++` is not safe).

- **What is Deadlock?**
  A state where two or more threads are blocked forever, each waiting for a lock held by the other.
  ```text
  Thread 1 (holds Lock A, waiting for Lock B)
  Thread 2 (holds Lock B, waiting for Lock A)
  ```
  *Prevention*: Establish consistent lock ordering, use timed locks (`tryLock()`), and minimize nested lock scopes.

- **What is Race Condition?**
  Occurs when multiple threads concurrently read and write a shared memory location, leading to unpredictable results. Resolved by using `synchronized` blocks, atomic classes (`AtomicInteger`), or explicit `Lock` objects.

- **What is ExecutorService?**
  An asynchronous execution framework that manages a pool of threads, eliminating the overhead of manually creating and destroying threads for every task.
  ```java
  ExecutorService executor = Executors.newFixedThreadPool(10);
  executor.submit(() -> doWork());
  ```

- **What is CompletableFuture?**
  An extension of Java's `Future` introduced in Java 8. It supports non-blocking asynchronous programming, task chaining (e.g. `thenApply()`), combining multiple async calls, and functional error handling.

- **Difference between Parallel Stream and Sequential Stream?**
  - **Sequential Stream**: Runs on a single thread, processing elements sequentially (predictable, low overhead).
  - **Parallel Stream**: Splits work across multiple threads using the ForkJoinPool (excellent for CPU-heavy operations on huge collections, but carries thread-management overhead).

- **How does RxJava's `Schedulers.io()` differ from `Schedulers.computation()`?**
  - **`Schedulers.io()`**: Backed by an unbounded, caching thread pool. Used for network calls, database queries, and disk read/writes where threads spend most of their time waiting (blocking).
  - **`Schedulers.computation()`**: Backed by a bounded, fixed-size thread pool (usually equal to the number of CPU cores). Optimized for CPU-intensive work (image processing, sorting). Running blocking operations here will starve the pool and freeze concurrent tasks.

---
# 
# Kotlin Interview Questions  

# Core Kotlin

## Kotlin vs Java?

| Kotlin | Java |
|--------|------|
| Concise syntax | More boilerplate |
| Null Safety built-in | NullPointerException common |
| Coroutines support | Uses Threads/RxJava |
| Extension Functions | Not supported |
| Data Classes | Manual implementation |
| Smart Casts | Explicit casting |

### Senior Developer Perspective:
- Kotlin improves developer productivity, reduces boilerplate code, and provides safer APIs through null safety and coroutines.

---

## val vs var?
- `val` → Immutable (read-only reference)
- `var` → Mutable (can be reassigned)

Example:

```kotlin
val name = "Nikhil"
var age = 25

age = 26
```

### Interview Tip:
- Prefer `val` by default and use `var` only when mutation is required.

---

## const val vs val?

| const val | val |
|-----------|-----|
| Compile-time constant | Runtime constant |
| Top-level or object only | Anywhere |
| Primitive/String only | Any type |

Example:

```kotlin
const val API_URL = "baseUrl"
val currentTime = System.currentTimeMillis()
```

---

## lateinit vs lazy?

| lateinit | lazy |
|----------|------|
| Mutable (`var`) | Immutable (`val`) |
| Initialized later | Initialized on first access |
| No primitive types | Works with any type |

### Example:

```kotlin
lateinit var repository: UserRepository

val database by lazy {
    createDatabase()
}
```

### Senior Developer Perspective:
- Use `lateinit` for Dependency Injection and `lazy` for expensive object creation.

---

## Null Safety?
- Kotlin's type system differentiates nullable and non-nullable types.

```kotlin
var name: String = "John"
var city: String? = null
```

Benefits:

- Reduces NullPointerException
- Safer code

---

## Safe Call Operator (?.)
```kotlin
val length = name?.length
```

- Executes only if object is not null.
- Returns `null` otherwise.

---

## Elvis Operator (?:)
```kotlin
val username = name ?: "Guest"
```

- Returns default value when left side is null.

---

## Not Null Assertion (!!)
```kotlin
val length = name!!.length
```

- Forces non-null conversion.
- Throws `NullPointerException` if value is null.

### Senior Developer Perspective:
- Avoid using `!!` in production code.

---

# Scope Functions

## let()
- Executes block only if object is not null.
- Returns lambda result.

```kotlin
user?.let {
    print(it.name)
}
```

Use cases:

- Null checks
- Variable scoping

---

## run()
- Executes block and returns result.

```kotlin
val result = user.run {
    name.uppercase()
}
```

Use for:

- Object configuration
- Computing values

---

## with()
- Operates on object without extension.

```kotlin
with(user) {
    print(name)
}
```

Use when working with same object multiple times.

---

## apply()
- Returns object itself.

```kotlin
val user = User().apply {
    name = "Nikhil"
}
```

Commonly used for object initialization.

---

## also()
- Returns original object.
- Uses `it`.

```kotlin
user.also {
    log(it)
}
```

Use for:

- Logging
- Side effects

---

## Scope Function Summary

| Function | Receiver | Return |
|----------|----------|--------|
| let | it | Lambda Result |
| run | this | Lambda Result |
| with | this | Lambda Result |
| apply | this | Object |
| also | it | Object |

---

# OOP & Classes

## Data Class?
- Data classes automatically generate:

- `equals()`
- `hashCode()`
- `toString()`
- `copy()`

Example:

```kotlin
data class User(
    val id: Int,
    val name: String
)
```

---

## Sealed Class?
- Restricts class hierarchy to predefined subclasses.

Example:

```kotlin
sealed class Result {
    data class Success(val data: String): Result()
    object Error: Result()
}
```

Use cases:

- API responses
- UI states

---

## Enum Class vs Sealed Class?

| Enum | Sealed |
|------|--------|
| Fixed constants | Different object types |
| Cannot hold hierarchy | Supports hierarchy |
| Limited flexibility | More powerful |

### Senior Developer Perspective:
- Use Enum for fixed values and Sealed Class for state management.

---

## Object Declaration?
```kotlin
object DatabaseManager
```

Features:

- Singleton pattern
- Thread safe
- Lazily initialized

---

## Companion Object?
```kotlin
class User {
    companion object {
        const val TYPE = "Admin"
    }
}
```

Access:

```kotlin
User.TYPE
```

Equivalent to Java static members.

---

## Nested vs Inner Class?

| Nested Class | Inner Class |
|-------------|-------------|
| Static by default | Holds outer reference |
| Cannot access outer members | Can access outer members |

Example:

```kotlin
class Outer {
    class Nested
    inner class Inner
}
```

---

# Functions

## Higher Order Functions?
- Functions that accept functions as parameters or return functions.

Example:

```kotlin
fun calculate(
    operation: (Int, Int) -> Int
)
```

---

## Lambda Expressions?
```kotlin
val sum = { a: Int, b: Int ->
    a + b
}
```

Benefits:

- Concise syntax
- Functional programming support

---

## Inline Functions?
- The compiler replaces function calls with actual code.

Benefits:

- Reduces object creation
- Improves performance

```kotlin
inline fun execute(block: () -> Unit) {
    block()
}
```

---

## noinline vs crossinline?

| noinline | crossinline |
|----------|-------------|
| Prevents inlining | Prevents non-local returns |

Use when passing lambdas around.

---

## Extension Functions?
```kotlin
fun String.isEmail(): Boolean {
    return contains("@")
}
```

- Adds functionality without modifying class.

---

## Infix Functions?

```kotlin
infix fun Int.add(x: Int) = this + x

5 add 10
```

Improves readability.

---

## Tail Recursion?
```kotlin
tailrec fun factorial(
    n: Int,
    result: Int = 1
): Int
```

- Compiler converts recursion into loops.
- Prevents StackOverflowError.

---

# Coroutines

## What are Coroutines?
- Coroutines are lightweight threads for asynchronous programming.

Benefits:

- Non-blocking
- Structured concurrency
- Easier than callbacks

---

## suspend Function?
```kotlin
suspend fun fetchUsers() {}
```

- Can suspend execution without blocking thread.
- Can only be called from coroutine or another suspend function.

---

## launch vs async?

| launch | async |
|--------|-------|
| Returns Job | Returns Deferred |
| No result | Returns result |

Example:

```kotlin
launch { }

val data = async {
    fetchUsers()
}.await()
```

---

## Job vs Deferred?

| Job | Deferred |
|-----|----------|
| No return value | Returns value |
| Fire and forget | Async result |

---

## CoroutineScope?
- Defines lifecycle of coroutines.

Examples:

- viewModelScope
- lifecycleScope

### Senior Developer Perspective:
- Always launch coroutines within proper scope to avoid leaks.

---

## Why avoid GlobalScope?

Problems:

- Memory leaks
- Not lifecycle aware
- Difficult cancellation

Use:

```kotlin
viewModelScope.launch { }
```

instead of:

```kotlin
GlobalScope.launch { }
```

---

## Dispatchers.Main vs IO vs Default?

| Dispatcher | Usage |
|-----------|-------|
| Main | UI updates |
| IO | Network/Database |
| Default | CPU-intensive work |

---

## SupervisorJob?
- Child failure does not cancel siblings.

Useful for:

- Parallel API calls
- Independent tasks

---

## coroutineScope vs supervisorScope?

| coroutineScope | supervisorScope |
|----------------|----------------|
| Failure cancels all children | Failure isolated |
| Strict hierarchy | Independent tasks |

---

## Structured Concurrency?
- Coroutines follow parent-child relationships.

Benefits:

- Automatic cancellation
- Better lifecycle management
- Prevents leaks

---

## Coroutine Exception Handling?

```kotlin
CoroutineExceptionHandler {
    _, exception ->
}
```

Use:

- Logging
- Error reporting
- Recovery

---

# Advanced Kotlin

## Generics?

```kotlin
class Box<T>(val value: T)
```

Benefits:

- Type safety
- Reusable code

---

## Reified Types?
- Reified types preserve generic type information at runtime.

```kotlin
inline fun <reified T> parse() {}
```

Allows:

```kotlin
T::class
```

---

## Type Erasure?
- Generic type information is removed at runtime.

Example:

```kotlin
List<String>
List<Int>
```

Both become:

```kotlin
List<*>
```

Reified types help overcome this limitation.

---

## Covariance (out)?

```kotlin
interface Producer<out T>
```

- Produces values only.
- Read-only.

Mnemonic:

```text
Producer → out
```

---

## Contravariance (in)?

```kotlin
interface Consumer<in T>
```

- Consumes values only.

Mnemonic:

```text
Consumer → in
```

---

## Delegation Pattern?
- Delegation allows one object to delegate work to another.

```kotlin
class UserRepository(
    private val api: Api
)
```

Kotlin support:

```kotlin
class Car(engine: Engine)
    : Engine by engine
```

---

## Property Delegation?

Built-in delegates:

- lazy
- observable
- vetoable

Example:

```kotlin
val db by lazy {
    createDatabase()
}
```

Benefits:

- Cleaner code
- Reusable behavior

### Senior Developer Perspective:
- Property delegation is widely used in Android for ViewBinding, lazy initialization, and state observation.

---

# 2. Android Development

## Lifecycle (Activity & Fragment)

- **Explain Activity Lifecycle.**
  The Activity lifecycle consists of 6 core callbacks managed by the OS:
  - `onCreate()`: Called when the Activity is first created. Perform static setup here (set layout, bind ViewModels, inject dependencies).
  - `onStart()`: Makes the Activity visible to the user. Good place to register observers.
  - `onResume()`: Puts the Activity in the foreground (interactive). The user can now interact with it. Start animations or open camera/sensors.
  - `onPause()`: The Activity loses focus but remains partially visible (e.g. split-screen, or dialog on top). Release resources blocking execution or commit unsaved UI changes. Keep it short.
  - `onStop()`: The Activity is no longer visible. Stop heavy background tasks, save state, and disable updates.
  - `onDestroy()`: Called before the Activity is destroyed. Release all remaining resources to prevent memory leaks (cancel coroutine scopes, clear references).

- **Explain Fragment Lifecycle.**
  Fragments have a two-part lifecycle (Fragment instance vs Fragment View):
  - `onAttach()`: Associated with host activity.
  - `onCreate()`: Initialize fragment state (non-UI).
  - `onCreateView()`: Inflate the fragment's UI layout and return the view hierarchy.
  - `onViewCreated()`: Called after `onCreateView()`. Perform view setup, adapter bindings, and live observations here.
  - `onViewStateRestored()`: Restores saved view state.
  - `onStart()` / `onResume()` / `onPause()` / `onStop()`: Sync with the host Activity states.
  - `onDestroyView()`: Called when the view hierarchy is detached. **Crucial**: Set view binding references to null here to prevent memory leaks.
  - `onDestroy()` / `onDetach()`: Clean up fragment state and detach from activity.

- **Difference between Activity and Fragment?**
  - **Independence**: Activity is an independent OS entry point declared in `AndroidManifest.xml` containing a window. Fragment is a modular, reusable UI sub-section that *must* reside inside a host Activity.
  - **Lifecycle**: Activity lifecycle is managed directly by the Android OS. Fragment lifecycle is managed by the host Activity's `FragmentManager` and is deeply coupled with the host.
  - **Layout**: Activities represent full screens. Fragments represent portions of screens, share the Activity window, and can be swapped dynamically.

- **What happens during Screen Rotation?**
  A screen rotation is a **Configuration Change**. By default:
  1. The OS destroys the active Activity (`onPause` -> `onStop` -> `onDestroy`) and recreates it (`onCreate` -> `onStart` -> `onResume`).
  2. Any temporary UI state is lost unless saved via `onSaveInstanceState(Bundle)` or managed in a **ViewModel**.
  3. ViewModels survive because their instance is retained in the `ViewModelStore`, which is managed by the `ViewModelProvider` tied to the Activity's non-configuration instance.

- **What is BroadcastReceiver?**
  BroadcastReceiver listens for system-wide events.
  - *Examples*: Battery Low, Internet Connectivity, Boot Completed, SMS Received.
  ```java
  public class NetworkReceiver extends BroadcastReceiver {
     @Override
     public void onReceive(Context context, Intent intent) {
        // handle event
     }
  }
  ```

- **What is PendingIntent?**
  A PendingIntent allows another application or Android system to execute your app's predefined Intent later.
  - *Used in*: Notifications, AlarmManager, Widgets.
  - *Example*:
    ```java
    PendingIntent pendingIntent = PendingIntent.getActivity(
        this,
        0,
        intent,
        PendingIntent.FLAG_IMMUTABLE
    );
    ```

- **Difference between Deep Link and App Link?**
  | Feature | Deep Link | App Link |
  |---|---|---|
  | **Format** | `myapp://profile/123` | `https://myapp.com/profile/123` |
  | **Behavior** | May show app chooser dialog. | Verified domain; opens directly inside the app. |

---

## Architecture (MVVM, Clean, SOLID)

- **What is MVVM?**
  An architecture pattern separating concerns:
  - **Model**: Represents the data layer (Room DB, Retrofit, Firestore). Handles data access and business logic.
  - **View**: The UI layer (Activity/Fragment). Observes changes (via LiveData/Flow) and forwards user inputs to the ViewModel.
  - **ViewModel**: The state holder for the screen. It requests data from the Model (Repository) and exposes reactive states to the View, remaining completely agnostic of any UI references.

- **Why MVVM over MVC?**
  - **Decoupling**: In MVC, the Controller often acts as both the layout manager and event handler, resulting in tight coupling with UI components (e.g., holding view references). In MVVM, the ViewModel is completely decoupled from the View—it only exposes streams of data, unaware of who is observing them.
  - **Unit Testing**: ViewModels are 100% pure JUnit testable because they do not depend on the Android UI framework, whereas Controllers are highly coupled to Android view hierarchies.
  - **Lifecycle**: ViewModels are lifecycle-conscious and automatically survive screen rotations, preventing memory leaks and re-fetching operations.

- **What is Repository Pattern?**
  Repository Pattern acts as a single source of truth between the ViewModel and data sources like APIs and databases. It abstracts data operations, improves separation of concerns, makes code more maintainable, and simplifies testing

- **What is Clean Architecture?**
  Clean Architecture divides the application into isolated, concentric layers:
  - **Domain Layer**: The core of the app. Contains Use Cases, Entities, and Repository Interfaces. It is pure Kotlin/Java code with zero framework dependencies (no Android, no React, no Firebase).
  - **Presentation Layer**: Contains UI controllers (Activities, Fragments, Custom Views) and ViewModels.
  - **Data Layer**: Contains actual database implementations (Room), Network integrations (Retrofit, Firebase SDK), and repository implementations.
  - **Dependency Flow**: Dependencies point inwards. Outer layers (Data, Presentation) depend on the Domain layer. The Domain layer remains completely agnostic of the databases, networking libraries, or UI frameworks used.

- **Explain SOLID Principles.**
  - **S - Single Responsibility Principle**: A class should have only one reason to change. *Example*: `PlaceDao` handles Room database queries; it should not handle API requests or formatting logic.
  - **O - Open/Closed Principle**: Open for extension, closed for modification. *Example*: Using a `PaymentProcessor` interface. Adding Apple Pay requires writing a new class implementing the interface rather than modifying existing credit card processing code.
  - **L - Liskov Substitution Principle**: Derived classes must be substitutable for their base classes without altering program correctness. *Example*: Any subclass of `Fragment` must run correctly inside a container expecting a standard `Fragment` class.
  - **I - Interface Segregation Principle**: Avoid forcing classes to implement interfaces they don't use. *Example*: Instead of a single massive `UserListener` interface, break it into smaller listeners like `OnProfileUpdateListener` and `OnSessionExpiryListener`.
  - **D - Dependency Inversion Principle**: High-level modules should not depend on low-level modules; both should depend on abstractions. *Example*: ViewModels depend on the `PlacesRepository` interface, not the concrete `PlacesRepositoryImpl` database/network class.

- **What is Dependency Injection?**
  DI is a design pattern where dependencies are provided from outside rather than created inside a class.
  - *Bad (Tight Coupling)*: `ApiService api = new ApiService();`
  - *Good (Loose Coupling)*:
    ```java
    @Inject
    ApiService api;
    ```
  - *Benefits*: Loose Coupling, Easy Testing, and Reusable Code.

- **What is Hilt?**
  Hilt is Google's dependency injection framework built on Dagger.
  - *Key Annotations*: `@HiltAndroidApp`, `@AndroidEntryPoint`, `@Module`, `@Provides`, `@Inject`, `@Singleton`.

---

## Jetpack Components

- **What is ViewModel?**
  A component designed to store and manage UI-related data in a lifecycle-aware manner. It persists data across configuration changes (like screen rotations) and serves as the state machine of the screen.

- **Why ViewModel survives rotation?**
  When an Activity undergoes a configuration change, the system retains the Activity's `ViewModelStore`. The `ViewModelProvider` uses this store to retrieve the pre-existing ViewModel instance instead of creating a new one. The store is only cleared when the Activity finishes permanently (e.g., when clicking the back button or programmatically calling `finish()`).

- **LiveData vs StateFlow?**
  | Feature | LiveData | StateFlow |
  |---|---|---|
  | **Framework** | Android Jetpack (Android-dependent) | Kotlin Coroutines (pure Kotlin) |
  | **Threading** | Runs on Main Thread | Runs on any Dispatcher (thread-safe) |
  | **Initial State** | Not required | Required (must have an initial value) |
  | **Hot/Cold** | Hot observable | Hot stream |
  | **Lifecycle Aware** | Yes, natively | No, requires `repeatOnLifecycle` or `flowWithLifecycle` in the UI layer |

- **StateFlow vs SharedFlow?**
  - **StateFlow**: A state-holder. It stores the current value and immediately emits the latest state to new subscribers. It ignores duplicate values. Ideal for driving **UI state**.
  - **SharedFlow**: An event-emitter. It does not hold state (unless configured with replay cache) and only broadcasts events to active collectors. Ideal for **one-time events** like showing Snackbars, launching Toasts, or triggering Navigation.

- **Room Database?**
  Room is an ORM abstraction over SQLite. It consists of:
  - **Entity**: An annotated class representing a database table (e.g. `@Entity(tableName = "places")`).
  - **DAO (Data Access Object)**: Interface declaring SQL queries annotated with `@Query`, `@Insert`, `@Delete`. Room compiles compile-time SQL verification here.
  - **Database**: The main access point extending `RoomDatabase` that binds entities to DAOs.
  - **Converters**: Annotation `@TypeConverters` used to convert custom types (e.g. converting a `List<String>` of image URLs into a pipe-delimited `"|"` string for SQLite storage and splitting it back).

- **What is the difference between `@Transaction` in Room and normal queries? When is it mandatory?**
  In Room, `@Transaction` ensures that multiple DAO operations execute as a single atomic unit. If any operation fails, the database rolls back to its previous state. It is mandatory:
  - When performing multiple write operations sequentially (like bulk inserts).
  - When using `@Relation` annotations to query entities with nested relationships (since Room executes multiple select statements under the hood, a transaction prevents inconsistencies if the DB is modified between selects).

- **WorkManager?**
  WorkManager is the recommended solution for deferrable, guaranteed background work. It survives app restarts and system reboots. It allows scheduling work with constraints (e.g., network connectivity, charging status). *Example from SpotFinder*: A `ReviewSyncWorker` is enqueued with a constraint `NetworkType.CONNECTED`. If a review is written offline, Room holds it. Once the device reconnects, WorkManager executes the worker in the background to push the review to Firestore.

- **Navigation Component?**
  A Jetpack library that manages app navigation flow. It uses a single-activity architecture where `MainActivity` hosts a `NavHostFragment`. It uses a **Navigation Graph (XML)** to define destinations and actions, and **SafeArgs** to pass parameters with compile-time type-safety.

- **What is the difference between Service, IntentService and WorkManager?**
  | Feature | Service | IntentService | WorkManager |
  |---|---|---|---|
  | **Execution** | Runs immediately | Background worker | Guaranteed execution |
  | **Duration** | Can run indefinitely | Executes one task | Scheduled tasks |
  | **System Kill** | Can be killed by system | Stops automatically | Survives restart |
  | **Recommendation** | Not recommended for long background tasks | Deprecated | Recommended |

  *Use WorkManager for*: Sync, Uploads, Notifications, and Background processing.

- **What is View Binding?**
  View Binding generates binding classes for layouts.
  - *Instead of*: `findViewById(R.id.textView)`
  - *Use*: `binding.textView`
  - *Benefits*: Type Safe, Null Safe, and Faster Development.

- **Difference between View Binding and Data Binding?**
  | Feature | View Binding | Data Binding |
  |---|---|---|
  | **Binding Target** | View reference only | Data + UI Binding |
  | **Speed** | Faster | More features |
  | **Expression Support** | No expression support | Supports expressions |

---

## Coroutines

- **What are Coroutines?**
  Coroutines are a Kotlin feature used for asynchronous and concurrent programming. They allow long-running tasks such as API calls, database operations, and file processing to run in the background without blocking the Main(UI) Thread.

- **launch vs async?**
  
  launch is used when no result is required and returns a Job, whereas async is used when a result is expected and returns a Deferred object. The result from async is obtained using await().

- **Dispatchers?**
  Dispatchers dictate which thread pools the coroutine will execute on:
  - `Dispatchers.Main`: Confined to the main UI thread. Used for UI updates, layout changes, and observing LiveData.
  - `Dispatchers.IO`: Optimized for disk/network input-output (API calls, database transactions, file writing).
  - `Dispatchers.Default`: Optimized for CPU-intensive tasks (sorting lists, parsing complex JSON, rendering bitmaps).

- **CoroutineScope?**
  A scope that manages the lifecycle of coroutines. Every coroutine builder must run inside a scope (e.g., `viewModelScope` inside ViewModels, `lifecycleScope` inside Fragments). If the parent scope is cancelled, all active child coroutines within it are cancelled automatically, preventing memory leaks.

- **SupervisorJob?**
  A specialized `Job` where the failure of one child coroutine does not automatically cancel its sibling coroutines or its parent. This is essential when running multiple concurrent independent tasks (e.g. pulling 3 independent API widgets) so one network failure does not crash the entire screen.

- **suspend function?**
  A function marked with the `suspend` keyword. It can pause execution without blocking the host thread and can be resumed later. Suspend functions can only be invoked from within a coroutine or another suspend function.

- **How does `repeatOnLifecycle` differ from older scoping functions like `launchWhenStarted`?**
  `launchWhenStarted` (and `launchWhenResumed`) pauses execution of the coroutine when the lifecycle drops below the target state (e.g. goes into background), but it **does not cancel** the coroutine nor does it stop collecting flow emissions in the background. The flow keeps emitting, consuming active CPU cycles and memory. `repeatOnLifecycle` completely **cancels** the executing coroutine when the state drops below the target (e.g. `onStop`) and automatically restarts/re-collects it when the state is re-entered (e.g. `onStart`), making it memory-safe and highly efficient.

---

## Performance (ANR, RecyclerView, Memory Leaks)

- **What causes ANR?**
  ANR (Application Not Responding) is triggered when the Android main (UI) thread is blocked for more than **5 seconds**. Common causes include performing disk read/writes (database queries), networking operations, complex graphics calculation, or infinite loops on the main thread.

- **How to optimize RecyclerView?**
  1. **DiffUtil**: Use `DiffUtil` or `ListAdapter` to calculate the difference between old and new lists, updating only the modified rows instead of calling `notifyDataSetChanged()`.
  2. **ViewHolder Pattern**: Recycle views instead of repeatedly calling `findViewById()`.
  3. **Fixed Size**: Set `setHasFixedSize(true)` if element dimensions do not change dynamically.
  4. **Layout Flatness**: Keep item layouts flat (use `ConstraintLayout`) to avoid deep nested view hierarchies.
  5. **Image Loading**: Use libraries like Glide to downsample images and cache bitmaps off the main thread.

- **Memory Leak examples?**
  A memory leak occurs when an object is no longer needed but remains referenced, preventing the Garbage Collector from freeing it.
  - *Example 1*: Storing an Activity `Context` inside a static variable or a singleton class.
  - *Example 2*: Non-static inner classes (like handler or AsyncTask) holding implicit references to their outer Activity.
  - *Example 3*: Not clearing references to ViewBinding in a Fragment's `onDestroyView()`.
  - *Example 4*: Uncancelled observers or registered receivers (like BroadcastReceivers) in `onDestroy()`.

- **How do you identify, trace, and resolve a memory leak in a running Android app?**
  - **Identification**: Integrate **LeakCanary** in debug builds. It automatically monitors destroyed activities/fragments and prints a leak trace when a leak is detected.
  - **Tracing**: Use the **Android Studio Profiler (Memory Profiler)**. Take a heap snapshot, filter by the package name, find classes that should have been garbage collected (e.g., destroyed Activities with instance count > 0), and inspect the **Referrers** tree to find the GC root holding the reference.
  - **Resolution**: Clear static references, nullify Fragment view bindings in `onDestroyView()`, cancel coroutines/disposable flows in `onCleared()`, and pass `WeakReference` if context must be held.

- **How do you improve App Performance?**
  - **Caching**: Implement an Offline-First approach (Room DB) so UI reads are fast and local, eliminating redundant API roundtrips.
  - **Image Optimization**: Load compressed images (WebP format), downscale bitmaps to fit the viewport, and cache them using Glide.
  - **Threading**: Run intensive computations and database/network logic entirely on background threads (RxJava schedulers or Coroutine dispatchers).
  - **Layout Optimizations**: Minimize layout nesting, replace heavy custom drawables, and reuse views.
  - **Code Shrinking**: Enable ProGuard/R8 in `build.gradle` (`minifyEnabled true` and `shrinkResources true`) to remove unused code and resources, reducing bundle size.

- **What is Proguard/R8?**
  It is a tool used in Android to:
  - Minify Code (removes unused code and resources)
  - Obfuscate Code (renames classes, methods, and fields to make reverse engineering difficult)
  - Reduce APK Size
  - *Configuration*: `minifyEnabled true` and `shrinkResources true`

---

# 3. React Native & React JS
## React Native

## React Native Architecture?
- React Native follows a JavaScript-driven architecture where UI is rendered using native platform components.

### Legacy Architecture (Bridge Architecture)

The old architecture consists of three major parts:

- **JavaScript Thread**
  - Executes React code and business logic.

- **Native Thread (UI Thread)**
  - Handles rendering, animations, and native APIs.

- **Bridge**
  - Enables communication between JavaScript and Native code.

```text
JavaScript Thread
        ↓
    JSON Bridge
        ↓
 Native Modules/UI
```

- Communication is asynchronous and requires JSON serialization/deserialization.
- This introduces overhead and can become a performance bottleneck during high-frequency operations like animations, scrolling, and gesture handling.

### New Architecture (JSI + Fabric + TurboModules)

The new architecture removes the Bridge and introduces:

- **JSI (JavaScript Interface)**
  - Enables direct communication between JS and Native code.

- **Fabric Renderer**
  - New C++ rendering system for faster UI updates.

- **TurboModules**
  - Lazy loads native modules only when needed.

### Senior Developer Perspective:
- The new architecture significantly improves startup time, memory usage, and runtime performance by eliminating bridge overhead.

---

## How React Native Communicates with Native Code?
- In the legacy architecture, React Native communicates through the Bridge.

```text
JavaScript → Bridge → Native Module
Native → Bridge → JavaScript
```

- Communication is asynchronous.
- Data is serialized into JSON.

### New Architecture:

- JSI allows direct access to native objects without serialization.
- TurboModules provide faster module loading.
- Fabric enables synchronous rendering.

### Senior Developer Perspective:
- JSI-based communication greatly reduces latency and improves performance for complex applications.

---

## What are Native Modules?
- Native Modules are custom Android (Java/Kotlin) or iOS (Objective-C/Swift) code exposed to JavaScript.

They are used when React Native does not provide direct access to platform-specific APIs.

Examples:

- Biometric Authentication
- Bluetooth
- Camera SDK
- Payment SDK
- NFC
- Background Services

Android Example:

```java
@ReactMethod
public void showToast(String message) {
    Toast.makeText(context, message, Toast.LENGTH_SHORT).show();
}
```

JavaScript:

```javascript
NativeModules.ToastModule.showToast("Hello");
```

### Senior Developer Perspective:
- Native Modules are commonly used for integrating third-party SDKs and hardware-specific features.

---

## What is the Bridge Bottleneck?
- The Bridge Bottleneck occurs because all communication between JavaScript and Native code passes through the asynchronous bridge.

Problems:

- JSON serialization overhead
- Increased latency
- Frame drops
- UI lag

Example:

- Continuously sending thousands of map coordinates through the bridge can overload it.

### Solution:

- JSI
- TurboModules
- Fabric Renderer
- Reduce bridge calls

---

## What is JSI (JavaScript Interface)?

### Interview Answer:
- JSI is a C++ abstraction layer that allows JavaScript to directly call Native code.

Benefits:

- No bridge dependency
- No JSON serialization
- Supports synchronous calls
- Lower latency

| Legacy Bridge | JSI |
|--------------|-----|
| Asynchronous | Sync/Async |
| JSON Serialization | Direct Memory Access |
| Slower | Faster |

### Senior Developer Perspective:
- JSI is the foundation of React Native's new architecture and significantly improves performance.

---

## What are TurboModules?

### Interview Answer:
- TurboModules are next-generation Native Modules built on top of JSI.

Features:

- Lazy loading
- Faster startup time
- Type safety
- Direct Native access

### Example:

- A biometric SDK loads only when the login screen is opened.

### Senior Developer Perspective:
- TurboModules reduce application startup time and memory consumption.

---

## What is Fabric Renderer?

### Interview Answer:
- Fabric is React Native's new rendering system built in C++.

Benefits:

- Faster rendering
- Better synchronization with React
- Concurrent rendering support
- Improved scrolling performance

### Senior Developer Perspective:
- Fabric provides smoother UI interactions, especially in complex applications like chat and social media apps.

---

## What is Hermes Engine?

### Interview Answer:
- Hermes is React Native's optimized JavaScript engine that precompiles JavaScript into bytecode, improving startup time, reducing memory usage, and enhancing overall app performance.

Benefits:

- Faster startup
- Reduced memory usage
- Smaller APK size
- Better performance on low-end devices

### How Hermes improves startup time?

- JavaScriptCore (JSC) compiles JavaScript at runtime.
- Hermes performs **Ahead-of-Time (AOT)** compilation during build time.
- The APK contains precompiled bytecode.

```text
JSC:
JS Source → Runtime Compilation → Execute

Hermes:
JS Source → Build Time Compilation → Bytecode → Execute
```

- Hermes also uses virtual memory paging to reduce RAM consumption.

### Experience-Based Answer:
- In production applications, enabling Hermes noticeably improved app startup time and memory efficiency.

---

## What is Metro Bundler?

### Interview Answer:
- Metro Bundler is the JavaScript bundler used by React Native. It takes all JavaScript code, dependencies, and assets, then bundles them into a single file that can run on Android and iOS.

Responsibilities:

- Bundles JavaScript files
- Resolves dependencies
- Handles Fast Refresh
- Manages static assets

Command:

```bash
npx react-native start
```

---

# React Hooks

## What are Hooks?

### Interview Answer:
- Hooks are functions introduced in React 16.8 that allow functional components to use state and lifecycle features without class components.

Common Hooks:

- **useState**
  - Manages component state.

- **useEffect**
  - Handles side effects such as API calls and subscriptions.

- **useMemo**
  - Memoizes expensive calculations.

- **useCallback**
  - Memoizes function references.

- **React.memo**
  - Prevents unnecessary re-renders.

---

## What is useState and how does it trigger updates?

### Interview Answer:
- `useState` creates a state variable and a setter function.

Example:

```javascript
const [count, setCount] = useState(0);
```

- Calling `setCount()` schedules a component re-render.

### Senior Developer Perspective:
- React batches state updates to optimize rendering performance.

---

## What is React.memo?

### Interview Answer:
- `React.memo` is a Higher Order Component (HOC) that shallowly compares props.

- If props do not change, React skips rendering.

Example:

```javascript
export default React.memo(UserCard);
```

### Senior Developer Perspective:
- It is especially useful for expensive child components inside large lists.

---

# Navigation

## What is React Navigation?

### Interview Answer:
- React Navigation is the standard navigation library for React Native.

Supports:

- Stack Navigator
- Tab Navigator
- Drawer Navigator

Responsibilities:

- Navigation stack management
- Screen transitions
- Deep linking
- Gesture handling

---

## Stack Navigator vs Tab Navigator?

| Stack Navigator | Tab Navigator |
|----------------|--------------|
| Push/Pop navigation | Switch between tabs |
| Maintains history | Quick navigation |
| Used for flows | Used for major modules |

Examples:

- Stack: Login → Home → Details
- Tabs: Home, Search, Profile

---

## Deep Linking?

### Interview Answer:
- Deep Linking allows opening a specific screen directly from a URL.

Example:

```text
myapp://profile/123
```

Types:

- URI Schemes
- Universal Links (iOS)
- App Links (Android)

Use Cases:

- Password reset
- Referral programs
- Marketing campaigns

---

## Passing Data Between Screens?

### Interview Answer:

Passing data:

```javascript
navigation.navigate('Profile', {
  userId: 1
});
```

Receiving:

```javascript
route.params.userId
```

For global state:

- Redux
- Context API
- Zustand

---

## Navigation Lifecycle?

### Interview Answer:

Useful hooks:

```javascript
useFocusEffect()
```

Navigation events:

- focus
- blur
- beforeRemove

Example:

```javascript
useFocusEffect(() => {
  fetchData();
});
```

---

# Performance Optimization

## React Native Performance Optimization Techniques?

### Interview Answer:

- Use `FlatList` or `FlashList` for large datasets.
- Use `React.memo`.
- Use `useMemo` and `useCallback`.
- Optimize images (WebP, compression, caching).
- Avoid unnecessary re-renders.
- Enable Hermes.
- Use Fabric and TurboModules.
- Lazy load screens.
- Minify JavaScript bundles.

### Senior Developer Perspective:
- I typically use Flipper and React DevTools to identify re-render issues, memory leaks, and FPS drops.

---

## Why are inline objects, arrays, and arrow functions inside JSX bad for performance?

### Interview Answer:
- Inline objects and functions create new references on every render.

Example:

```javascript
<View style={{ margin: 10 }} />

<Button onPress={() => doSomething()} />
```

- Even if values are identical, React sees them as new references.
- This breaks memoization and forces child components to re-render.

### Solution:

```javascript
const styles = StyleSheet.create({
  container: {
    margin: 10,
  },
});

const handlePress = useCallback(() => {
  doSomething();
}, []);
```

---

## ScrollView vs FlatList?

| Feature | ScrollView | FlatList |
|---------|------------|----------|
| Rendering | Renders all items | Virtualized rendering |
| Performance | Slower | Optimized |
| Memory | High memory usage | Low memory usage |

### Rule:
- Use ScrollView for small lists.
- Use FlatList for large datasets.

---

## What is Virtualization?

### Interview Answer:
- Virtualization means rendering only visible items on screen.

Benefits:

- Lower memory usage
- Smooth scrolling
- Better performance

- FlatList uses virtualization internally.

---

## What is keyExtractor in FlatList?

### Interview Answer:
- `keyExtractor` provides unique identifiers for list items.

Example:

```javascript
keyExtractor={(item) => item.id.toString()}
```

Benefits:

- Efficient reconciliation
- Better re-render performance

Avoid:

```javascript
keyExtractor={(item, index) => index.toString()}
```

---

## What is getItemLayout()?

### Interview Answer:
- `getItemLayout` pre-calculates item dimensions.

Example:

```javascript
getItemLayout={(data, index) => ({
  length: 80,
  offset: 80 * index,
  index,
})}
```

Benefits:

- Faster scrolling
- Efficient `scrollToIndex()`
- Reduced layout calculations

---

## What is removeClippedSubviews?

- Removes off-screen components from the native hierarchy.

```javascript
removeClippedSubviews={true}
```

Benefits:

- Lower memory usage
- Improved scrolling performance

---

# Storage

## AsyncStorage?
- AsyncStorage is an unencrypted key-value storage system.

Suitable for:

- Theme preferences
- Feature flags
- Small cache data

Not suitable for:

- Passwords
- JWT tokens
- Sensitive information

---

## MMKV?
- MMKV is a high-performance JSI-based storage library developed by Tencent.

Features:

- Synchronous API
- Faster than AsyncStorage
- Encryption support
- JSI-based

### Use Cases:

- Session tokens
- Cached API responses
- Frequently accessed data

---

## Secure Storage?
- Secure Storage is used for storing sensitive information.

Android:

- Keystore

iOS:

- Keychain

Libraries:

- react-native-keychain
- expo-secure-store

---

## Realm Database?
- Realm is an object-oriented database designed for offline-first applications.

Features:

- Real-time updates
- Reactive queries
- Encryption support
- Offline sync capabilities

| Realm | SQLite |
|-------|--------|
| Object Database | Relational Database |
| No SQL | SQL Queries |
| Reactive | Manual Updates |
| Less Boilerplate | More Boilerplate |

### Senior Developer Perspective:
- I have used Realm in offline-first applications requiring local persistence and synchronization.

---

# Push Notifications in React Native?
- Push notifications are commonly implemented using:

- `@react-native-firebase/messaging`
- Expo Notifications

Flow:

```text
App → FCM/APNS → Device Token
                    ↓
             Notification Service
                    ↓
               Display UI
```

States:

- Foreground
- Background
- Terminated

### Senior Developer Perspective:
- In production apps, I handle deep linking from notifications, token refresh mechanisms, and background notification processing.

- **React Native Architecture?**
  - **Bridge Architecture (Legacy)**: The app runs in three main parts: the JavaScript thread (executing React code), the Native thread (handling native UI, rendering, and device APIs), and the **JSON Bridge**. The JS thread communicates asynchronously by serializing JSON messages and queuing them over the bridge, which becomes a performance bottleneck for high-frequency operations like animations or continuous scrolls.
  - **New Architecture (JSI / Fabric / TurboModules)**: Replaces the bridge. Uses **JavaScript Interface (JSI)**, a C++ abstraction allowing the JS engine to directly execute synchronous native code. **Fabric** is the new rendering engine written in C++, which renders UI synchronously. **TurboModules** allow lazy loading of native modules directly into memory, dramatically speeding up startup times.

- **How React Native communicates with Native code?**
  React Native communicates with native Android and iOS code through the Bridge, which passes messages asynchronously between the JavaScript thread and Native Modules. In the new React Native architecture, JSI and TurboModules enable more direct communication, reducing bridge overhead and improving performance.

- **What are Hooks?**
  Hooks are built-in functions introduced in React 16.8 that enable functional components to tap into React state and lifecycle features without writing class components.
  - `useState`: Declares state variables.
  - `useEffect`: Manages side effects (API calls, subscriptions, event listeners) and cleanup.
  - `useMemo`: Memoizes expensive value computations.
  - `useCallback`: Memoizes function references to prevent recreation on re-renders.
  - `React.memo`: Shallowly compares props and skips rendering if unchanged.

- **React Navigation?**
  The standard routing and navigation library for React Native. It provides stack navigators, tab bar menus, and drawer drawers to manage the application's navigation stack, transitions, and gesture physics.

- **Deep Linking?**
  The process of configuring an app to open a specific screen when a custom URL is clicked (e.g. `spotfinder://places/12`). Handled via URI schemes or Universal/App Links (verified HTTPS domains).

- **What are Native Modules?**
  Custom Java/Kotlin or Objective-C/Swift code written to expose platform-specific APIs (not available in React Native by default) to JavaScript. It requires register-mapping the module name and methods to make them callable via `NativeModules` in JS.
  - *Examples*: Biometric Authentication, Bluetooth, Camera SDK, Payment SDK.

- **AsyncStorage?**
  An unencrypted, asynchronous, key-value storage system. It is global and persistent across app sessions. Best used for simple configuration data or small authentication tokens, but should **never** be used for sensitive user details due to lack of encryption.

- **Push Notifications in React Native?**
  Handled by integrating libraries like `react-native-firebase/messaging` or Expo Notifications. The app registers with FCM/APNS to obtain a device token. A background service listens to push payloads, and local handlers display or routing-inject them based on foreground or background states.

- **Performance Optimization techniques?**
  - Use `FlatList` or `FlashList` (Shopify) instead of standard scrolls for large lists.
  - Memoize components using `React.memo` and callback pointers using `useCallback`.
  - Optimize images (compress size, load WebP, use caching libraries).
  - Avoid inline objects/arrays or anonymous arrow functions in render states.
  - Shrink JS bundles using minification and code splitting.

- **Why are inline objects, arrays, and arrow functions inside JSX renders bad for React Native performance?**
  Every time the parent component renders, inline definitions (e.g., `style={{ margin: 10 }}` or `onPress={() => doSomething()}`) recreate a brand new reference in memory. When passed to child components, a shallow comparison of props (like in `React.memo`) will always see a "new" prop reference, forcing the child component to unnecessarily re-render, degrading UI performance.

- **How does Hermes improve React Native app startup time compared to JavaScriptCore (JSC)?**
  - Under JSC, the JavaScript source code is downloaded and parsed/compiled into bytecode at app runtime on the device, delaying startup.
  - Under **Hermes**, bytecode compilation is done **ahead-of-time (AOT)** during the production build process. The APK contains pre-compiled bytecode, allowing the engine to execute the JS instructions immediately upon launch. Hermes also uses virtual memory paging, reducing RAM overhead.

- **What is the "Bridge Bottleneck" and how does the Javascript Interface (JSI) resolve it?**
  The Bridge Bottleneck occurs because React Native's old architecture requires all communication between JavaScript and Native code to be serialized and passed through an asynchronous bridge, which can cause performance issues. JSI removes the bridge and enables direct communication between JavaScript and Native code, resulting in faster execution, lower latency, and improved overall performance.

- **What is useState and how does it trigger updates?**
  `useState` is a React hook that declares a state variable and its setter function. Calling the setter schedules a re-render for that component and all its nested children.

- **What is React.memo?**
  It is a higher-order component that optimizes functional components by shallowly comparing their props. If the props haven't changed, React skips rendering the component and reuses the previous render output.

- **Difference between ScrollView and FlatList?**
  | Feature | ScrollView | FlatList |
  |---|---|---|
  | **Rendering** | Renders all items at once. | Renders only visible items (lazy rendering). |
  | **Performance** | Slow for large datasets. | Optimized. |
  | **Memory** | Uses more memory. | Uses less memory. |

  *Use FlatList for large lists.*

- **What is keyExtractor in FlatList?**
  Provides unique keys for list items.
  ```javascript
  keyExtractor={(item) => item.id}
  ```
  Helps React efficiently identify changed, added, or removed items during list updates.

---

## React JS

# Additional Questions to Merge into Existing React JS Notes

## Real DOM vs Virtual DOM?

| Real DOM | Virtual DOM |
|----------|-------------|
| Directly updates browser DOM | Updates Virtual DOM first |
| Slower for frequent updates | Faster due to diffing |
| Causes reflow and repaint | Updates only changed nodes |
| Expensive operations | Optimized rendering |

### Senior Developer Perspective:
- React updates the Virtual DOM in memory, performs diffing, and applies minimal changes to the Real DOM using reconciliation.

---

## React Fiber?
- React Fiber is the new reconciliation engine introduced in React 16.

Features:

- Incremental rendering
- Task prioritization
- Better UI responsiveness
- Concurrent rendering support

### Senior Developer Perspective:
- Fiber allows React to pause, resume, and prioritize rendering tasks, resulting in smoother user experiences.

---

## React Router?
- React Router is the standard routing library for React web applications.

Features:

- Client-side routing
- Dynamic routes
- Nested routes
- Route guards

Example:

```javascript
<Route path="/users/:id" element={<User />} />
```

### Senior Developer Perspective:
- React Router enables Single Page Applications (SPAs) without full page reloads.

---

## Reusable Components?
- Reusable components are generic components designed to work across multiple screens.

Examples:

- Button
- Input
- Modal
- Card
- Table

Benefits:

- Code reusability
- Easy maintenance
- Better scalability

### Example:

```javascript
<Button
  title="Save"
  onClick={handleSave}
/>
```

---

## What is Context API?
- Context API is React's built-in state management solution used to share data across components without prop drilling.

Common use cases:

- Authentication
- Theme switching
- Localization
- User preferences

Example:

```javascript
const UserContext = createContext();
```

### Senior Developer Perspective:
- Context API works well for lightweight global state but is not ideal for frequently changing large application states.

---

## What is Redux?
- Redux is a predictable state management library that stores application state in a centralized store.

Flow:

```text
Action → Reducer → Store → UI
```

Benefits:

- Predictable state updates
- Centralized data management
- Better debugging

---

## useMemo vs useCallback?
- `useMemo` memoizes the result of an expensive computation.

```javascript
const filteredUsers = useMemo(
  () => filterUsers(users),
  [users]
);
```

- `useCallback` memoizes the function reference.

```javascript
const handleClick = useCallback(() => {
  fetchData();
}, []);
```

### Key Difference:

| useMemo | useCallback |
|---------|-------------|
| Caches value | Caches function |
| Returns computed result | Returns function reference |

---

## Component Lifecycle?

### Class Component Lifecycle:

Mounting:

- constructor()
- render()
- componentDidMount()

Updating:

- shouldComponentUpdate()
- componentDidUpdate()

Unmounting:

- componentWillUnmount()

### Functional Component Equivalent:

- `useEffect()` handles mounting, updating, and cleanup.

---

## What happens if you use Math.random() or index as keys?

### Using Math.random():

- Generates new keys on every render.
- React recreates all components.
- Breaks animations and component state.

### Using Array Index:

- Causes incorrect UI behavior when items are added, removed, or reordered.

Bad Example:

```javascript
items.map((item, index) => (
  <Item key={index} />
))
```

Good Example:

```javascript
items.map((item) => (
  <Item key={item.id} />
))
```

### Senior Developer Perspective:
- Always use stable and unique IDs as keys.

---

## Context API vs Redux?

| Feature | Context API | Redux |
|---------|-------------|-------|
| Setup | Simple | More setup |
| Middleware | No | Yes |
| Debugging | Limited | Excellent |
| Large Apps | Not ideal | Preferred |
| Performance | Can re-render often | Better optimized |

### Senior Developer Perspective:
- Context API is suitable for themes and authentication, while Redux is preferred for enterprise applications.

---

## Updated Virtual DOM Answer
- Virtual DOM is a lightweight JavaScript representation of the Real DOM.

React flow:

```text
State Change
      ↓
New Virtual DOM
      ↓
Diffing
      ↓
Reconciliation
      ↓
Real DOM Update
```

Benefits:

- Faster rendering
- Reduced DOM manipulation
- Better performance

---

## Updated Functional vs Class Components

| Functional Components | Class Components |
|----------------------|-----------------|
| Uses Hooks | Uses Lifecycle Methods |
| Less boilerplate | More code |
| Easier testing | Harder testing |
| Modern approach | Legacy approach |

### Senior Developer Perspective:
- Modern React development is entirely Hook-based and functional components are the recommended approach.

---

## Updated useEffect Lifecycle

```javascript
useEffect(() => {
   fetchData();

   return () => {
      cleanup();
   };
}, []);
```

Behavior:

- Mount → executes effect
- Update → executes when dependencies change
- Unmount → executes cleanup function

### Senior Developer Perspective:
- Always clean up subscriptions, timers, and event listeners to avoid memory leaks.

---

# 4. API Integration & Firebase

## API Integration

- **What is REST API?**
  REST (Representational State Transfer) is an architectural style for designing networked applications. It operates over HTTP, utilizes standard HTTP methods (GET, POST, PUT, DELETE, PATCH), and represents resources via structured endpoints (e.g. `/api/v1/places`).
  - **GET**: Retrieves data. It is idempotent (multiple identical calls produce the same result) and should never modify server state.
  - **POST**: Submits data to create a resource. It is non-idempotent and alters server database state.
  - **PUT**: Replaces the entire resource payload.
  - **PATCH**: Performs a partial update. Only updates the fields explicitly provided.

- **Authentication vs Authorization?**
  - **Authentication**: Verifies *who you are* (e.g., Logging in via username/password or Firebase Auth).
  - **Authorization**: Verifies *what you are allowed to do* (e.g., verifying if the logged-in user has admin rights to delete a place).

- **JWT?**
  JSON Web Token. A compact, URL-safe, stateless token format used to transmit claims between client and server. It consists of three parts: **Header** (algorithm), **Payload** (user claims/metadata), and **Signature** (verifiable security hash).

- **Access Token vs Refresh Token?**
  - **Access Token**: Short-lived credential (e.g., expires in 15 mins) sent in the HTTP `Authorization` header to access protected APIs.
  - **Refresh Token**: Long-lived credential (e.g., expires in 7 days) stored securely (like `EncryptedSharedPreferences` or HTTP-only cookies). When the access token expires, the client uses the refresh token to request a new access token without forcing the user to log in again.

- **How do you handle API failures?**
  - Implement network **Interceptors** (e.g., OkHttp Interceptors in Android or Axios Interceptors in JS) to trap global HTTP error codes (like 401 Unauthorized to trigger token refresh, or 503 Service Unavailable).
  - Map responses into structured states (e.g., SpotFinder's `Resource.ERROR` class).
  - Provide user-friendly feedback via Snackbars/Toasts instead of crashing.

- **HTTP Status Codes?**
  - `2xx` (Success): `200 OK`, `201 Created`
  - `3xx` (Redirection): `301 Moved Permanently`, `304 Not Modified` (caching)
  - `4xx` (Client Errors): `400 Bad Request`, `401 Unauthorized` (auth needed), `403 Forbidden` (no permission), `404 Not Found`
  - `5xx` (Server Errors): `500 Internal Server Error`, `503 Service Unavailable`

- **Retry Mechanism?**
  A strategy to handle transient network drops. Instead of failing immediately, the app retries the request using **Exponential Backoff** (waiting 1s, then 2s, then 4s...) up to a maximum threshold, preventing server overloading.

- **Pagination?**
  Splitting massive datasets into pages.
  - **Offset-based**: `/api/places?limit=10&offset=20`. Simple but slow for large datasets and prone to duplicate records if items are added during scroll.
  - **Cursor-based (Keyset)**: `/api/places?limit=10&afterId=place_99`. Highly efficient for massive scales as it queries items after a specific identifier marker.

- **Caching?**
  Storing API responses locally (e.g. in Room or AsyncStorage).
  - **Cache-First**: UI displays local data first. Fast, but can show stale info.
  - **Network-First**: Attempt to fetch fresh API data. If it fails, fallback to the local cache.

- **What is SSL Pinning, and how does it prevent Man-in-the-Middle (MitM) attacks?**
  Standard TLS relies on trusting CA (Certificate Authority) certificates stored in the device OS. A malicious proxy (like Charles Proxy or a compromised network) can issue a fake certificate to intercept HTTPS traffic. **SSL Pinning** hardcodes the server's public key or certificate hash inside the app client (e.g., via OkHttpClient network configs). If the network certificate does not match the pinned hash, the connection is instantly aborted, preventing interception.

- **How do you secure JWT access tokens on mobile devices?**
  - **Never** store them in plain-text SharedPreferences, AsyncStorage, or local state variables.
  - On **Android**: Store tokens in `EncryptedSharedPreferences` backed by the Android Keystore system (AES256 encryption with a hardware-backed MasterKey).
  - On **iOS**: Store tokens in the secure system **Keychain**, which is encrypted by hardware keys.

- **GET vs POST?**
  - **GET**: Retrieves data. Query parameters are appended to the URL string. Safe and idempotent.
  - **POST**: Submits data to create resources. Payload is sent inside the HTTP request body. Non-idempotent and modifies database state.

- **PUT vs PATCH?**
  - **PUT**: Replaces the target resource entirely with the request payload. Omitted fields are overwritten or set to null/default.
  - **PATCH**: Partially updates a resource. Only fields present in the payload are updated.


---

## Firebase Services

- **Which Firebase services have you used?**
  - **Firebase Authentication**: For user logins, registrations, and secure guest-mode anonymous session setup.
  - **Cloud Firestore**: Real-time NoSQL database to host and query places, reviews, and user profiles.
  - **Firebase Storage**: Cloud hosting for profile avatars and place photos.
  - **Firebase Cloud Messaging (FCM)**: Driving push notification events.
  - **Crashlytics / Analytics**: Crash tracking and monitoring user analytics.

- **Firebase Authentication?**
  A fully managed auth service. SpotFinder integrates email/password flows and a custom "Guest Mode" configuration where user sessions are initialized anonymously via Firebase Anonymous Auth, limiting write capabilities.

- **Firebase Cloud Messaging?**
  A cross-platform messaging service that lets you reliably send notification and data payloads to device clients.

- **Push Notification Flow?**
  1. Client app registers with FCM and retrieves a unique **FCM Registration Token**.
  2. The token is sent and saved to the backend database (Firestore).
  3. When an event occurs (e.g., a review is posted), the backend server sends a request to the FCM server containing the target token and payload.
  4. FCM routes the message to the physical device. The device OS displays the alert or triggers background handlers.

- **Firebase Analytics?**
  Integrated to log custom events (e.g., user swipes a card, clicks "Add Place", submits review) to analyze feature adoption and user interaction flows.

- **Firebase Crashlytics?**
  A real-time crash reporter. Collects logs, device specifications, stack traces, and compiles them into a dashboard to identify, prioritize, and fix top stability issues.

- **Notification Payload vs Data Payload?**
  - **Notification Payload**: Managed automatically by the device OS when the app is in the background. The system displays the alert in the tray without launching the app logic.
  - **Data Payload**: Delivered directly to the app's receiver (`onMessageReceived` inside Android's `FirebaseMessagingService`), regardless of whether the app is in the foreground, background, or killed, allowing the app to process custom payload values in the background.

- **How does Firebase Crashlytics work?**
  Crashlytics collects: Crash Logs, Stack Traces, Device Info, and OS Details. It is used for real-time production error and stability monitoring.

- **How do you log custom events in Firebase Analytics?**
  ```java
  Bundle bundle = new Bundle();
  bundle.putString("screen", "home");

  FirebaseAnalytics.getInstance(this)
      .logEvent("screen_opened", bundle);
  ```

- **Difference between Firebase Realtime Database and Firestore?**
  | Feature | Realtime DB | Firestore |
  |---|---|---|
  | **Structure** | JSON Tree | Collections/Documents |
  | **Scalability** | Less scalable | More scalable |
  | **Querying** | Basic queries | Advanced queries |

  *Note*: Firestore is preferred for most modern app developments.

---

# 5. System Design & Security

## System Design

- **Design a Chat Application.**
  - **Real-Time Layer**: Use WebSockets (for bi-directional low-latency messaging) or gRPC.
  - **Database**: Cassandra or DynamoDB for fast horizontal write scaling of chat logs. Room/SQLite for local message caching.
  - **Flow**: User sends message -> WebSocket Server -> Message Queue (RabbitMQ) -> Saved to DB -> Broadcasted to recipient's active socket (if offline, triggers FCM Push Notification).
  - **Offline Caching**: Sync messages locally to SQLite, load via paginated cursor to save device RAM.

- **Design an E-commerce App.**
  - **Architecture**: MVVM with Repository. Local cart stored in Room.
  - **UX/Performance**: Virtual list scrolling (RecyclerView with Glide caching). Optimistic updates for cart adjustments.
  - **Checkout Flow**: Encrypt user tokens, interface with Payment Gateway (Stripe/PayPal SDKs). Sync cart state to backend API.

- **Design an Offline-First Mobile App.**
  - **Local DB Source of Truth**: The UI *never* queries the network directly. It observes a local DB (Room/SQLite) stream.
  - **Data Operations**: Write operations write directly to local DB first (updating the UI instantly) and mark the entity with a flag `isSynced = false`.
  - **Sync Manager**: Queue an upload task with **WorkManager** (`SyncWorker`). If network is connected, Worker pushes updates to the cloud database. On success, worker updates local DB entity to `isSynced = true`.

- **How would you support 1 million users?**
  - **App Layer**: Maximize local caching (Offline-First) to drastically decrease server API call volume.
  - **Media**: Distribute all static media assets (e.g., place images) through a Content Delivery Network (CDN) like Cloudflare.
  - **Backend**: Use horizontal scaling with load balancers, database indexing, and caching layers (Redis) for hot endpoints.

- **How would you reduce App Startup Time?**
  - Use the Android **App Startup** library to initialize SDKs lazily.
  - Compile dependencies statically using Hilt/Dagger instead of runtime reflection.
  - Defer non-critical setup tasks to background threads.
  - Flat UI rendering (avoid deep nesting layout passes).
  - Enable code minification and Proguard resource shrinking.

- **How would you design Push Notifications?**
  - Build a reliable backend worker queue (Celery/RabbitMQ) that batch-dispatches notification requests to the FCM server.
  - Group duplicate notifications on the client side using unique tag IDs to prevent user tray spamming.

- **How would you handle Offline Data Sync?**
  - Use deterministic **Synthetic UUIDs** (e.g., name + Lat/Lng hash) to easily match records without relying on server-generated primary keys.
  - Resolve merge conflicts gracefully by tracking transaction timestamps (`updatedAt`), defaulting to a "Last-Write-Wins" policy or showing interactive merge dialogs to users.

- **How does the CAP Theorem apply to an Offline-First mobile application?**
  CAP states a system can only guarantee two of **Consistency**, **Availability**, and **Partition Tolerance**. For a mobile app, network drops are inevitable (network partitions). An offline-first app prioritizes **Availability** (the app remains fully operational using local Room/AsyncStorage caches) over strict global **Consistency** (local data updates are not immediately visible to other users until sync occurs). Upon reconnecting, consistency is eventually restored (Eventual Consistency).

---

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

# 6. Development Process & Leadership

## Git Workflow

- **Git Merge vs Rebase?**
  - **Merge**: Combines target branches by creating a new "Merge Commit." It is non-destructive and preserves the complete history, but can clutter the git tree with branch cross-overs.
  - **Rebase**: Moves the entire base of the feature branch to the tip of the master branch. It flattens the commit history into a single linear line, but rewrites commit history (unsafe on shared public branches).

- **Cherry Pick?**
  Applies the changes introduced by a specific existing commit from another branch onto your current active branch (e.g. applying a hotfix commit from release branch back onto developer branch).

- **Squash?**
  Combines multiple intermediate commit histories (e.g., "fixed typo", "refactoring") into a single, clean commit before merging into the main branch, maintaining a clean commit history.

- **Resolving Merge Conflicts?**
  Occurs when two branches modify the same line in a file. Resolved by pulling the target branch, opening conflicts inside an IDE editor, choosing the correct lines (incoming vs current), staging the file, and running `git commit`.

- **Git Flow?**
  A branching model outlining release workflows. Uses `main` (production), `develop` (staging integration), `feature/*` (developing features), `release/*` (bugfixes for release staging), and `hotfix/*` (immediate production patches).

- **What is Git Rebase?**
  Moves feature branch commits on top of the latest target branch.
  - *Benefits*: Cleaner, linear history with no merge commits.

---

## CI/CD Pipelines

- **What is CI/CD?**
  - **Continuous Integration (CI)**: Automatically building and testing code integrations on every push or Pull Request to catch compilation failures and test breaks instantly.
  - **Continuous Delivery (CD)**: Automatically packaging, signing, and deploying successful builds to distribution environments (TestFlight, Google Play Console Beta) or production app stores.

- **Have you used Jenkins/GitLab CI?**
  Yes. I have configured automated pipeline scripts (.yml files) to invoke Gradle tasks, run unit tests, and compile clean APKs/IPAs on every branch push.

- **Explain Mobile Deployment Pipeline.**
  Commit pushed -> Webhook triggers runner pipeline -> Runner executes static lint analysis -> Runs unit test suite -> Compiles release build -> Invokes Fastlane script to sign binary using certificates -> Uploads build to TestFlight (iOS) / Play Console Internal Track (Android).

- **How do you automate builds?**
  Using **Fastlane** scripts. Fastlane automates signing profiles management, gradle/xcode compilation builds, screenshot generation, and uploading final package bundles directly to App Stores.

- **What is Fastlane?**
  Automates build, signing, testing, and deployment.
  - *Android*: Gradle Build -> Sign APK -> Upload Play Store.
  - *iOS*: Build -> TestFlight -> App Store.

- **What is Jenkins?**
  An automation server used for CI/CD pipelines.
  - *Pipeline*: Git Push -> Build -> Test -> Deploy.

- **What is APK vs AAB?**
  - **APK**: (Android Package) The final installable file on the user's device.
  - **AAB**: (Android App Bundle) Recommended by Google Play. It contains pre-compiled code and resources, allowing Google Play to dynamically generate optimized, smaller APKs tailored to specific device configurations.

---

## Agile & Scrum Methodology

- **What is Agile?**
  A software development philosophy focused on iterative development, flexibility, collaboration, and delivering customer value in small, continuous releases.

- **Scrum vs Kanban?**
  - **Scrum**: Structured. Employs fixed-length iterations called Sprints (e.g., 2 weeks) with specific roles (Product Owner, Scrum Master, Developers) and ceremonies.
  - **Kanban**: Continuous. Focuses on visualizing work on a board, limiting Work In Progress (WIP) limits, and continuous delivery rather than timeboxed iterations.

- **Sprint Planning?**
  A ceremony at the start of a sprint where the team aligns on the sprint goal, estimates priority user stories from the product backlog, and commits to a specific scope of work for the sprint.

- **Story Points?**
  A unit of estimation reflecting the effort, complexity, and risk involved in completing a user story (typically utilizing Fibonacci scale sequences like 1, 2, 3, 5, 8).

- **Retrospective?**
  A meeting held at the end of a sprint to reflect on what went well, what didn't, and identify actionable improvements for the next sprint.

- **Daily Standup?**
  A short, daily synchronization meeting (max 15 mins) where team members discuss what they completed yesterday, what they plan to work on today, and call out any blocks.

- **How do you estimate a task?**
  I estimate tasks using: Complexity, Dependencies, Risks, and Unknowns. Usually assign Story Points utilizing Fibonacci sequences.

- **How do you ensure code quality?**
  Through: Code Reviews, SOLID Principles, Unit Testing, and Static Analysis (like SonarQube or lint checks).

---

# 7. Behavioral Questions (Senior/Lead Developer)

- **Tell me about yourself / Why should we hire you?**
  - **Answer**: "I am a Senior Digital Developer with over 5 years of experience building native Android applications (Kotlin/Java), React Native cross-platform apps, and React JS web frontends. Throughout my career, I've designed reactive, offline-first architectures using MVVM, Dagger Hilt DI, Room, RxJava3, and WorkManager. A core showcase of my work is **SpotFinder**, an offline-first location app featuring custom touch-physics card decks, background synchronization workers, and hardware-backed configuration encryption. You should hire me because my technical expertise spans the entire mobile and web stack, aligning perfectly with your requirements. I bring a strong focus on UI performance, clean code reviews, and collaborative team mentorship."

- **Describe a project you are proud of / Explain your current Android project.**
  - **Answer**: "I am extremely proud of my current project, **SpotFinder**. It is an offline-first location application that lets users discover, swipe, save, and review places. We designed it around a local Room database cache as our Single Source of Truth, RxJava3 for reactive data streams, and Dagger Hilt for DI. When a user is offline, reviews are written to Room with an `isSynced = false` flag. Once connectivity returns, a WorkManager `ReviewSyncWorker` automatically pushes them to Firestore, flipping the flag to `true`. This ensures a zero-latency user experience regardless of network state. It also features custom card-swipe gesture touch-physics, Google Places SDK autocomplete, anonymous guest-mode bypass, and AndroidX Security Crypto (MasterKey AES256) to encrypt configurations on rooted devices."

- **Describe a challenging bug or technical issue you solved.**
  - **Answer**: "In **SpotFinder**, we built a custom swipeable card deck component. Initially, swiping cards suffered from frame-drops and visual stuttering on mid-range devices. By profiling using Android Studio Profiler, I discovered that every touch movement was triggering continuous view layout passes (`requestLayout`), which forced parent frame redraws. To solve this, I decoupled the card touch-physics from layout passes. I used hardware acceleration, cached views, and overrode `onInterceptTouchEvent` to apply raw pixel matrix translations dynamically. This stabilized the UI frame rate to a smooth 60fps."

- **Tell me about a production issue.**
  - **Answer**: "In a previous project, we deployed an update that caused users to see duplicate listings on their screens. I quickly isolated the root cause: concurrent background API updates were inserting identical records because we lacked unique constraints on server-side and client-side tables. I immediately implemented synthetic local keys (combining identifier name + location hashes) to deduplicate records locally, and pushed a patch that resolved the visual duplicates. We then set up database constraints and CI check-guards to catch duplicate data patterns."

- **How do you mentor junior developers?**
  - **Answer**: I mentor junior developers through:
    - **Pair Programming**: Working together on complex problems.
    - **Code Reviews**: Giving constructive feedback on design and standards.
    - **Architecture Discussions**: Explaining the rationale behind structure.
    - **Knowledge Sharing Sessions**: Leading lunch-and-learns on new technologies.

- **How do you handle conflicts?**
  - **Answer**: "I handle conflicts by focusing entirely on technical merits and data rather than opinions. For instance, when choosing between RxJava3 and Kotlin Coroutines for a new module, there was a disagreement within the team. I resolved the conflict by setting up a lightweight sandbox, presenting code examples, comparing testing overhead and compilation metrics, and highlighting team familiarity. By keeping discussions objective and centered on the project's goals, we agreed on Coroutines for new code and RxJava for maintaining legacy code."

- **How do you manage tight deadlines?**
  - **Answer**: "I manage tight deadlines by defining a strict MVP scope, communicating transparently, and minimizing development bottlenecks. In a previous release, we had a tight deadline to ship our guest bypass flow. I worked with the product owner to prioritize critical features, mocked backend APIs to develop the UI concurrently, and scheduled short daily checkpoints to address blocks. We shipped the core flows on time without compromising app stability."

- **How do you perform code reviews?**
  - **Answer**: "I treat code reviews as educational opportunities. I check for architecture alignment (e.g. ensuring no business logic slips into fragments), edge-case handling (null safety, try-catch blocks), performance issues (like database queries in main thread), and readability. I frame my feedback as suggestions or questions rather than demands, keeping comments constructive and positive."

- **Tell me about a failure and what you learned.**
  - **Answer**: "Early in my career, I rushed a feature to production without writing comprehensive integration tests. A specific edgecase caused the app to crash for users in low-connectivity areas. I learned the hard way that user-facing code must always be accompanied by unit and UI tests. Since then, I have been a strong advocate of test-driven development (TDD) and CI/CD automated test checks."

- **How do you handle production crashes?**
  My process involves:
  1. Identify the crash via **Crashlytics** and analyze stack traces.
  2. Reproduce the bug in a local sandbox environment.
  3. Implement and test the fix.
  4. Pass the fix through QA Testing.
  5. Release the hotfix patch.
  6. Monitor Crashlytics real-time dashboard to verify stability.

---

# 8. Top 25 Most Likely Questions Checklist

If the interviewer has only 45–60 minutes, these are the highest-probability questions you should focus on. Click any question to jump directly to its detailed, interview-tailored answer:

- [Mobile Developer Interview Preparation Guide](#mobile-developer-interview-preparation-guide)
- [Table of Contents](#table-of-contents)
- [1. Core Java](#1-core-java)
  - [OOPs (Object-Oriented Programming)](#oops-object-oriented-programming)
  - [Java Architecture \& JVM](#java-architecture--jvm)
  - [Strings](#strings)
  - [Collections](#collections)
  - [Exception Handling](#exception-handling)
  - [Java 8 Features](#java-8-features)
  - [Multithreading](#multithreading)
- [](#)
- [Kotlin Interview Questions](#kotlin-interview-questions)
- [Core Kotlin](#core-kotlin)
  - [Kotlin vs Java?](#kotlin-vs-java)
    - [Senior Developer Perspective:](#senior-developer-perspective)
  - [val vs var?](#val-vs-var)
    - [Interview Tip:](#interview-tip)
  - [const val vs val?](#const-val-vs-val)
  - [lateinit vs lazy?](#lateinit-vs-lazy)
    - [Example:](#example)
    - [Senior Developer Perspective:](#senior-developer-perspective-1)
  - [Null Safety?](#null-safety)
  - [Safe Call Operator (?.)](#safe-call-operator-)
  - [Elvis Operator (?:)](#elvis-operator-)
  - [Not Null Assertion (!!)](#not-null-assertion-)
    - [Senior Developer Perspective:](#senior-developer-perspective-2)
- [Scope Functions](#scope-functions)
  - [let()](#let)
  - [run()](#run)
  - [with()](#with)
  - [apply()](#apply)
  - [also()](#also)
  - [Scope Function Summary](#scope-function-summary)
- [OOP \& Classes](#oop--classes)
  - [Data Class?](#data-class)
  - [Sealed Class?](#sealed-class)
  - [Enum Class vs Sealed Class?](#enum-class-vs-sealed-class)
    - [Senior Developer Perspective:](#senior-developer-perspective-3)
  - [Object Declaration?](#object-declaration)
  - [Companion Object?](#companion-object)
  - [Nested vs Inner Class?](#nested-vs-inner-class)
- [Functions](#functions)
  - [Higher Order Functions?](#higher-order-functions)
  - [Lambda Expressions?](#lambda-expressions)
  - [Inline Functions?](#inline-functions)
  - [noinline vs crossinline?](#noinline-vs-crossinline)
  - [Extension Functions?](#extension-functions)
  - [Infix Functions?](#infix-functions)
  - [Tail Recursion?](#tail-recursion)
- [Coroutines](#coroutines)
  - [What are Coroutines?](#what-are-coroutines)
  - [suspend Function?](#suspend-function)
  - [launch vs async?](#launch-vs-async)
  - [Job vs Deferred?](#job-vs-deferred)
  - [CoroutineScope?](#coroutinescope)
    - [Senior Developer Perspective:](#senior-developer-perspective-4)
  - [Why avoid GlobalScope?](#why-avoid-globalscope)
  - [Dispatchers.Main vs IO vs Default?](#dispatchersmain-vs-io-vs-default)
  - [SupervisorJob?](#supervisorjob)
  - [coroutineScope vs supervisorScope?](#coroutinescope-vs-supervisorscope)
  - [Structured Concurrency?](#structured-concurrency)
  - [Coroutine Exception Handling?](#coroutine-exception-handling)
- [Advanced Kotlin](#advanced-kotlin)
  - [Generics?](#generics)
  - [Reified Types?](#reified-types)
  - [Type Erasure?](#type-erasure)
  - [Covariance (out)?](#covariance-out)
  - [Contravariance (in)?](#contravariance-in)
  - [Delegation Pattern?](#delegation-pattern)
  - [Property Delegation?](#property-delegation)
    - [Senior Developer Perspective:](#senior-developer-perspective-5)
- [2. Android Development](#2-android-development)
  - [Lifecycle (Activity \& Fragment)](#lifecycle-activity--fragment)
  - [Architecture (MVVM, Clean, SOLID)](#architecture-mvvm-clean-solid)
  - [Jetpack Components](#jetpack-components)
  - [Coroutines](#coroutines-1)
  - [Performance (ANR, RecyclerView, Memory Leaks)](#performance-anr-recyclerview-memory-leaks)
- [3. React Native \& React JS](#3-react-native--react-js)
  - [React Native](#react-native)
  - [React Native Architecture?](#react-native-architecture)
    - [Legacy Architecture (Bridge Architecture)](#legacy-architecture-bridge-architecture)
    - [New Architecture (JSI + Fabric + TurboModules)](#new-architecture-jsi--fabric--turbomodules)
    - [Senior Developer Perspective:](#senior-developer-perspective-6)
  - [How React Native Communicates with Native Code?](#how-react-native-communicates-with-native-code)
    - [New Architecture:](#new-architecture)
    - [Senior Developer Perspective:](#senior-developer-perspective-7)
  - [What are Native Modules?](#what-are-native-modules)
    - [Senior Developer Perspective:](#senior-developer-perspective-8)
  - [What is the Bridge Bottleneck?](#what-is-the-bridge-bottleneck)
    - [Solution:](#solution)
  - [What is JSI (JavaScript Interface)?](#what-is-jsi-javascript-interface)
    - [Interview Answer:](#interview-answer)
    - [Senior Developer Perspective:](#senior-developer-perspective-9)
  - [What are TurboModules?](#what-are-turbomodules)
    - [Interview Answer:](#interview-answer-1)
    - [Example:](#example-1)
    - [Senior Developer Perspective:](#senior-developer-perspective-10)
  - [What is Fabric Renderer?](#what-is-fabric-renderer)
    - [Interview Answer:](#interview-answer-2)
    - [Senior Developer Perspective:](#senior-developer-perspective-11)
  - [What is Hermes Engine?](#what-is-hermes-engine)
    - [Interview Answer:](#interview-answer-3)
    - [How Hermes improves startup time?](#how-hermes-improves-startup-time)
    - [Experience-Based Answer:](#experience-based-answer)
  - [What is Metro Bundler?](#what-is-metro-bundler)
    - [Interview Answer:](#interview-answer-4)
- [React Hooks](#react-hooks)
  - [What are Hooks?](#what-are-hooks)
    - [Interview Answer:](#interview-answer-5)
  - [What is useState and how does it trigger updates?](#what-is-usestate-and-how-does-it-trigger-updates)
    - [Interview Answer:](#interview-answer-6)
    - [Senior Developer Perspective:](#senior-developer-perspective-12)
  - [What is React.memo?](#what-is-reactmemo)
    - [Interview Answer:](#interview-answer-7)
    - [Senior Developer Perspective:](#senior-developer-perspective-13)
- [Navigation](#navigation)
  - [What is React Navigation?](#what-is-react-navigation)
    - [Interview Answer:](#interview-answer-8)
  - [Stack Navigator vs Tab Navigator?](#stack-navigator-vs-tab-navigator)
  - [Deep Linking?](#deep-linking)
    - [Interview Answer:](#interview-answer-9)
  - [Passing Data Between Screens?](#passing-data-between-screens)
    - [Interview Answer:](#interview-answer-10)
  - [Navigation Lifecycle?](#navigation-lifecycle)
    - [Interview Answer:](#interview-answer-11)
- [Performance Optimization](#performance-optimization)
  - [React Native Performance Optimization Techniques?](#react-native-performance-optimization-techniques)
    - [Interview Answer:](#interview-answer-12)
    - [Senior Developer Perspective:](#senior-developer-perspective-14)
  - [Why are inline objects, arrays, and arrow functions inside JSX bad for performance?](#why-are-inline-objects-arrays-and-arrow-functions-inside-jsx-bad-for-performance)
    - [Interview Answer:](#interview-answer-13)
    - [Solution:](#solution-1)
  - [ScrollView vs FlatList?](#scrollview-vs-flatlist)
    - [Rule:](#rule)
  - [What is Virtualization?](#what-is-virtualization)
    - [Interview Answer:](#interview-answer-14)
  - [What is keyExtractor in FlatList?](#what-is-keyextractor-in-flatlist)
    - [Interview Answer:](#interview-answer-15)
  - [What is getItemLayout()?](#what-is-getitemlayout)
    - [Interview Answer:](#interview-answer-16)
  - [What is removeClippedSubviews?](#what-is-removeclippedsubviews)
- [Storage](#storage)
  - [AsyncStorage?](#asyncstorage)
  - [MMKV?](#mmkv)
    - [Use Cases:](#use-cases)
  - [Secure Storage?](#secure-storage)
  - [Realm Database?](#realm-database)
    - [Senior Developer Perspective:](#senior-developer-perspective-15)
- [Push Notifications in React Native?](#push-notifications-in-react-native)
    - [Senior Developer Perspective:](#senior-developer-perspective-16)
  - [React JS](#react-js)
- [Additional Questions to Merge into Existing React JS Notes](#additional-questions-to-merge-into-existing-react-js-notes)
  - [Real DOM vs Virtual DOM?](#real-dom-vs-virtual-dom)
    - [Senior Developer Perspective:](#senior-developer-perspective-17)
  - [React Fiber?](#react-fiber)
    - [Senior Developer Perspective:](#senior-developer-perspective-18)
  - [React Router?](#react-router)
    - [Senior Developer Perspective:](#senior-developer-perspective-19)
  - [Reusable Components?](#reusable-components)
    - [Example:](#example-2)
  - [What is Context API?](#what-is-context-api)
    - [Senior Developer Perspective:](#senior-developer-perspective-20)
  - [What is Redux?](#what-is-redux)
  - [useMemo vs useCallback?](#usememo-vs-usecallback)
    - [Key Difference:](#key-difference)
  - [Component Lifecycle?](#component-lifecycle)
    - [Class Component Lifecycle:](#class-component-lifecycle)
    - [Functional Component Equivalent:](#functional-component-equivalent)
  - [What happens if you use Math.random() or index as keys?](#what-happens-if-you-use-mathrandom-or-index-as-keys)
    - [Using Math.random():](#using-mathrandom)
    - [Using Array Index:](#using-array-index)
    - [Senior Developer Perspective:](#senior-developer-perspective-21)
  - [Context API vs Redux?](#context-api-vs-redux)
    - [Senior Developer Perspective:](#senior-developer-perspective-22)
  - [Updated Virtual DOM Answer](#updated-virtual-dom-answer)
  - [Updated Functional vs Class Components](#updated-functional-vs-class-components)
    - [Senior Developer Perspective:](#senior-developer-perspective-23)
  - [Updated useEffect Lifecycle](#updated-useeffect-lifecycle)
    - [Senior Developer Perspective:](#senior-developer-perspective-24)
- [4. API Integration \& Firebase](#4-api-integration--firebase)
  - [API Integration](#api-integration)
  - [Firebase Services](#firebase-services)
- [5. System Design \& Security](#5-system-design--security)
  - [System Design](#system-design)
  - [Design Patterns](#design-patterns)
- [6. Development Process \& Leadership](#6-development-process--leadership)
  - [Git Workflow](#git-workflow)
  - [CI/CD Pipelines](#cicd-pipelines)
  - [Agile \& Scrum Methodology](#agile--scrum-methodology)
- [7. Behavioral Questions (Senior/Lead Developer)](#7-behavioral-questions-seniorlead-developer)
- [8. Top 25 Most Likely Questions Checklist](#8-top-25-most-likely-questions-checklist)
- [9. Final 3-Day Strategy \& Success Checklist](#9-final-3-day-strategy--success-checklist)
  - [Final 3-Day Strategy](#final-3-day-strategy)
    - [Day 1 (8–10 Hours)](#day-1-810-hours)
      - [Java](#java)
      - [Android](#android)
    - [Day 2 (8–10 Hours)](#day-2-810-hours)
      - [Android Advanced](#android-advanced)
      - [Frontend](#frontend)
    - [Day 3 (8–10 Hours)](#day-3-810-hours)
      - [Architecture](#architecture)
      - [Process](#process)
      - [Interview Preparation](#interview-preparation)
  - [Interview Success Checklist](#interview-success-checklist)
    - [Android](#android-1)
    - [Java](#java-1)
    - [React Native](#react-native-1)
    - [APIs](#apis)
    - [Leadership](#leadership)

---

# 9. Final 3-Day Strategy & Success Checklist

## Final 3-Day Strategy

### Day 1 (8–10 Hours)

#### Java
- Core Java
- Collections
- Multithreading

#### Android
- Activity Lifecycle
- Fragment Lifecycle
- MVVM
- Coroutines

---

### Day 2 (8–10 Hours)

#### Android Advanced
- Room Database
- WorkManager
- Firebase

#### Frontend
- React Native
- React JS
- REST APIs

---

### Day 3 (8–10 Hours)

#### Architecture
- SOLID Principles
- Design Patterns
- System Design

#### Process
- Git
- Agile/Scrum

#### Interview Preparation
- Behavioral Questions
- Mock Interview Practice

---

## Interview Success Checklist

### Android
- [ ] MVVM
- [ ] Coroutines
- [ ] ViewModel
- [ ] LiveData / StateFlow
- [ ] Room
- [ ] WorkManager
- [ ] RecyclerView Optimization
- [ ] ANR
- [ ] Memory Leaks

### Java
- [ ] OOPs
- [ ] Collections
- [ ] Java 8 Features
- [ ] Multithreading
- [ ] Exception Handling

### React Native
- [ ] Hooks
- [ ] Redux
- [ ] Navigation
- [ ] Native Modules
- [ ] Performance Optimization

### APIs
- [ ] REST APIs
- [ ] JWT
- [ ] Authentication
- [ ] Pagination
- [ ] Error Handling

### Leadership
- [ ] System Design
- [ ] Design Patterns
- [ ] Git
- [ ] Agile
- [ ] Behavioral Questions