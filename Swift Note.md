# SwiftUI Note

# What is Struct?
-   In SwiftUI, a struct is a fundamental building block used to define the structure and behavior of views. In Swift, a struct is a value type that groups together related properties and behaviors. In the context of SwiftUI, you often create custom view structures by defining your own struct types.

# Why Struct is used more than Class ?
 Struct is used more than the class because 
-  It is more faster than the class.
-  Struct do not need to initialized but class needed.
-  The value of reference class also changes but in struct the value of reference struct is unchanged.

# what is form?
-   A container for grouping controls used for data entry, such as in settings or inspectors.

# What is group?
-   Group View is basically an invisible container for putting multiple views together. Use a group to collect multiple views into a single instance, without affecting the layout of those views, like an HStack, VStack, or Section would. After creating a group, any modifier you apply to the group affects all of that group’s members. 

# What is section?
-   Use Section instances in views like List, Picker, and Form to organize content into separate sections. Each section has custom content that you provide on a per-instance basis. You can also provide headers and footers for each section.

# Where to use group and section ?
-   we use group to collect multiple view into a single instance. 
-   we use section to separate the portion of the view.

# SwiftUI Property Wrappers
   @State -> 
   -   Used to declare a source of truth for a view.
   -   The value is mutable and typically used for local, transient state within a single view.
   
   @Binding 
   -   Used for creating a two-way binding between a view and its source of truth (typically a @State property).
   -   Enables changes made in one part of the code to be reflected in another part.
    
   @StateObject
   -   Used to create and manage an observable object instance that persists for the lifetime of a view.
   -   Typically used for storing and managing the state of a view, especially when that state requires observation and updates.
   
   @ObservedObject
   -   Declares a property that should be observed for changes.
   -   Typically used when a view needs to react to changes in the state of an external object, and the view should update when that object's state changes.
   
   @EnvironmentObject
   -   Similar to @ObservedObject but is used for sharing an object among multiple views in the view hierarchy.
   -   Objects marked with @EnvironmentObject are provided at the top level and can be accessed by any child view without passing them explicitly.
   
   @Environment
   -   Used to access environment values, such as the color scheme or the size category.
   -   It's not directly related to state management but allows views to adapt based on the environment in which they are presented.
   
   @FetchRequest
   -   Used to fetch and observe data from Core Data.
   -   Automatically manages the lifecycle of a Core Data fetch request and updates the view when the underlying data changes.
   
   @AppStorage
   -   Used to read and write values to UserDefaults.
   -   Automatically updates the view when the associated UserDefaults value changes.
   
   @SceneStorage
   -   Used to store and retrieve the state of a view across different scenes in a multi-scene app.
   -   Automatically persists and restores the associated value when the app moves between scenes.

   @BindableObject
    -   You can use the Bindable property wrapper on properties and variables to an Observable object.
    -   This includes global variables, properties that exists outside of SwiftUI types, or even local variables.


# What is GCD (Grand Central Dispatch) ?
-   Grand Central Dispatch (GCD) is a low-level API provided by Apple in macOS, iOS, and other platforms to facilitate concurrent and parallel programming. GCD abstracts the complexity of managing threads and provides a higher-level interface for managing concurrent tasks. It is designed to make it easier for developers to write efficient and responsive code that takes advantage of multiple processor cores.

# Keypoint in Grand Central Dispatch. 
-   Serial Queue.
-   Concurrent Queue.
-   Sync and Async
-   Main Queue -> Perform UI related task.
-   Global Queue -> Perform backend related task.
-   Quality of Service (QoS)-> Used to prioritize the execution of the tasks on the queue. example: .background, .userInteractive, .userInitiated.

    // Thread // Task
    // Serial + Sync -> ORDER
    // Serial + Async -> ORDER
    // Concurrent + Sync -> ORDER
    // Concurrent + Async -> UNORDER

# Thread: 
-   Thread represents an independent sequence of instructions and has its own set of registers and stack. Threads can be used for parallelizing tasks, such as performing background operations without blocking the main thread, which is crucial for keeping the user interface responsive. 

# Types of Thread:- 
-   Serial:- It has a single thread associated with them and thus only allow a single task to be executed at any given time.

-   Concurrent :-  It has a multiple thread associated with them. so it allow a multiple task to be executed at any given time.


# When we use .padding() without passing any parameter then by default it will take 20 points from all side.

# The default system image are SF symbols. It provide us the default pre define symbol and it provide the alignment also.

# Limitation:- 
    SwiftUI run on iOS 13 and above.
    SwiftUI doesn't have all the controls yet.

# Swift Basic Concept and interview question

To prepare for a basic Swift interview, you should cover a range of foundational topics in both the Swift programming language and iOS app development. Here’s a comprehensive list of topics to help you get ready:

# 1. Swift Language Basics
- Syntax and Basic Constructs:
    Variables and Constants
    Data Types (Int, Float, Double, Bool, String, etc.)
    Optionals
    Tuples

- Control Flow:
    Conditionals (if, guard, switch)
    Loops (for-in, while, repeat-while)

- Functions:
    Function Syntax
    Parameters and Return Types
    Closures
    Higher-Order Functions (map, filter, reduce)

# 2. Object-Oriented Programming (OOP)
- Classes and Structures:
    Class vs. Struct
    Properties and Methods
    Initialization

- Inheritance:
    Subclassing
    Overriding Methods

- Protocols:
    Protocol Definition
    Conformance
    Delegation Pattern
- Extensions:
    Adding Functionality
    Protocol Extensions

# 3. Memory Management
- ARC (Automatic Reference Counting):
    Strong, Weak, and Unowned References
    Retain Cycles and How to Avoid Them
    Memory Leaks

# 4. Error Handling
- Do-Try-Catch:
    Throwing Functions
    Error Types
    Handling Errors

# 5. Collections
- Arrays, Sets, Dictionaries:
    Basic Operations (Insert, Remove, Update, Access)
    Iteration

# 6. Swift’s Standard Library
- String and Character Manipulation
- Collection Types and Methods
- Generics

# 7. iOS Basics
- Xcode:
    Basic Navigation
    Creating and Running a Project

- UIKit:
    UIView and UIViewController
    UITableView and UICollectionView
    Storyboards and XIBs

- Auto Layout:
    Constraints
    Programmatic Layout vs. Interface Builder

- Navigation:
    UINavigationController
    Segues and Modal Presentations

# 8. Asynchronous Programming
- Grand Central Dispatch (GCD)
- Operation Queues
- Completion Handlers

# 9. Common Design Patterns
- MVC (Model-View-Controller)
- Singleton Pattern
- Delegation Pattern
- Observer Pattern (Notification Center, KVO)

# 10. Networking
- URLSession:
    Making API Calls
    Parsing JSON with Codable

- Third-party Libraries:
    Familiarity with popular libraries like Alamofire

# 11. Core Data (Optional but Beneficial)
- Basic Setup and CRUD Operations
- Managed Object Context

# 12. SwiftUI (If Applicable)
- Basic Views and Layouts
- State and Data Flow
- Bindings

# Practice and Mock Interviews
- LeetCode, HackerRank, or Codility: Practice coding problems to enhance your algorithm and problem-solving skills.
- Mock Interviews: Conduct mock interviews with peers or use platforms like Pramp.

# Example Questions to Practice
1. Explain the difference between classes and structs in Swift.
2. How does ARC work in Swift? What are strong, weak, and unowned references?
3. Write a function in Swift that reverses a string.
4. What is the difference between synchronous and asynchronous execution?
5. How would you implement a simple table view in iOS using UIKit?

if you can't explain it simply,
you don't understand it well enough.
