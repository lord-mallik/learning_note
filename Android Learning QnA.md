# OOP Foundations

## What is OOP? What are its four core principles?
- OOP is a way of programming where code is organized into objects that contain data and methods.
###  Four Core Principles of OOP
1. Encapsulation
   - Encapsulation means wrapping data and methods together inside a class, and controlling access to them.
     - You restrict direct access to some data (using private, protected)
     - Provide controlled access via methods (getters/setters)
- **Example idea:-** A bank account class hides balance and only allows deposit/withdraw through methods.

2. Abstraction
   - Abstraction means hiding complex implementation details and showing only essential features.
     - User doesn’t need to know how something works internally
     - Only what it does
- **Example idea:-** When you use a car, you don’t know how the engine works—you just drive.

3. Inheritance
   - Inheritance allows a class to inherit properties and methods from another class.
     - Promotes code reuse
     - Creates a parent-child relationship
- **Example idea:-** Vehicle → Car, Bike and - Car inherits features like speed, engine, etc.

4. Polymorphism
   - Polymorphism means one thing can take many forms.
    Two main types:
    - Method Overloading (same method name, different parameters)
    - Method Overriding (child class provides its own implementation)  
- **Example idea:-** A draw() function behaves differently for Circle, Rectangle, etc.

## What is the difference between a class and an object?
- A class is a blueprint or template used to create objects, while an object is an actual instance of that class. The class defines properties and methods, and the object contains real values and uses those methods.

## What is encapsulation? How do access modifiers support it in Java?
- Encapsulation is the process of wrapping data (variables) and methods (functions) into a single unit (class) and restricting direct access to the data.

- Access modifiers help achieve encapsulation by controlling who can access the data.”
  - private → data is hidden, cannot be accessed directly outside the class
  - public → accessible from anywhere
  - protected → accessible within the same package and subclasses

## What is polymorphism? Give a simple example of runtime polymorphism in Java.
- Polymorphism means one thing can take many forms. In Java, it allows the same method to behave differently based on the object.
  - Runtime Polymorphism (Method Overriding) → Runtime polymorphism happens when a child class provides its own implementation of a method defined in the parent class.

## What is abstraction? Abstract class vs concrete class? What is a constructor? Can a constructor be private?
- Abstraction hides implementation details and shows only relevant functionality. An abstract class cannot be instantiated and may have abstract methods (no body) that subclasses must implement.
- A concrete class implements all methods and can be instantiated.
- A constructor is a special method invoked when an object is created to initialise its state.
- Yes, a constructor can be private — this is the basis of the Singleton pattern, preventing external instantiation.

## What is method overloading? What is method overriding? Role of @Override?
- Method overloading means → having multiple methods with the same name but different parameters in the same class.
- Method overriding means → a child class provides its own implementation of a method already defined in the parent class.
- @Override is an annotation that tells the compiler that a method is overriding a parent class method.

## What is an interface in Java? How is it different from an abstract class?
- An interface is a blueprint of a class that contains method declarations (without implementation) and is used to achieve abstraction and multiple inheritance.
  
| Feature        | Interface                                                          | Abstract Class                                                   |
|----------------|--------------------------------------------------------------------|------------------------------------------------------------------|
| Constructors   | Cannot have constructors                                           | Can have constructors                                            |
| Methods        | Methods are `abstract` by default (no body)                        | Can have both `abstract` and concrete (normal) methods           |
| Inheritance    | Supports multiple inheritance (`implements` multiple interfaces)   | Supports single inheritance (`extends` one class)                |
| Variables      | `public static final` by default                                   | Can have instance variables                                      |

- **One-line difference** → An interface defines only method declarations and supports multiple inheritance, while an abstract class can have both implemented and unimplemented methods and supports single inheritance.

## Procedural vs OOP? What does the `final` keyword do?
- Procedural programming focuses on functions and step-by-step instructions.
  - Code is written as a sequence of functions
  - Data and functions are separate
  - Example: C language style

- OOP focuses on objects that combine data and behavior.
  - Code is organized into classes and objects
  - Data and methods are together
  - Supports encapsulation, inheritance, polymorphism

- **One-line difference** → Procedural programming focuses on functions, while OOP focuses on objects that combine data and behavior.

- **final keyword** → final keyword is used to restrict modification.

## What is an `enum` in Java? Is it a class? Can it have methods?
- An enum is a special type in Java used to define a fixed set of constants.
- Yes, an enum is a special type of class in Java.
- Yes, an enum can have methods, constructors, and variables.

## What is the difference between `==` and `.equals()` in Java?
- == compares references (memory addresses), not actual content.
- .equals() compares the actual content or value of objects.

- **One-line difference** → == checks if two references point to the same object, while .equals() checks if their contents are equal.

# OOP In Depth

## Types of inheritance in Java? Why no multiple inheritance through classes?
- Java supports these types (through classes and interfaces):

1. Single Inheritance → One class inherits from one parent 👉 A → B
2. Multilevel Inheritance → Chain of inheritance 👉 A → B → C
3. Hierarchical Inheritance → Multiple classes inherit from one parent 👉 A → B and A → C
4. Multiple Inheritance (via interfaces only) → One class implements multiple interfaces 👉 A implements X, Y

## Diamond problem? How does Java resolve it with interface default methods?
- The diamond problem occurs when a class inherits from two classes that have the same method, causing ambiguity about which method to use.
- If a class implements multiple interfaces with the same default method, it must override that method and provide its own implementation.
-  **One-line answer** → The diamond problem is ambiguity when multiple parents have the same method, and Java resolves it in interfaces by forcing the class to override the conflicting method.

# Association, aggregation, and composition? has-a vs is-a?
- Association → Association is a general relationship between two classes where they are connected but independent. 
- 👉 Example: “Teacher and Student” (both can exist separately)

- Aggregation (weak “has-a”) → Aggregation is a type of association where one class has another, but both can exist independently.
- 👉 Example: “Department has Employees” → If department is deleted, employees can still exist

- Composition (strong “has-a”) → Composition is a strong relationship where one class owns another, and the child cannot exist without the parent.
- 👉 Example: “House has Rooms” → If house is destroyed, rooms don’t exist

- **has-a vs is-a** → has-a represents ownership, while is-a represents inheritance.

## Composition vs inheritance? When to prefer composition?
- Inheritance (is-a) → Inheritance means one class extends another class.
- Composition (has-a) → Composition means one class contains another class as a part.
- Composition is preferred when you want flexibility and loose coupling.

## Coupling, cohesion? Explain the SOLID principles.
- Coupling means how much one class depends on another class.
  - High coupling → classes are strongly dependent (bad)
  - Low coupling → classes are independent (good)
  - 👉 Goal: Keep low coupling so code is easier to change and maintain.
  
- Cohesion means how well the responsibilities of a single class are related.
  - High cohesion → class has a single, clear purpose (good)
  - Low cohesion → class does many unrelated things (bad)
  - 👉 Goal: Keep high cohesion
  
- S — Single Responsibility: a class should have only one reason to change.
- O — Open/Closed: open for extension, closed for modification.
- L — Liskov Substitution: a subclass must be substitutable for its parent without breaking the program.
- I — Interface Segregation: don't force classes to implement methods they don't use.
- D — Dependency Inversion: depend on abstractions (interfaces), not concrete implementations.

## Singleton pattern? Thread-safe double-checked locking in Java?
- Singleton pattern ensures that a class has only one instance and provides a global point of access to it.
- Double-checked locking reduces synchronization overhead while ensuring only one instance is created in a multithreaded environment.
  
```java
class Singleton {
    private static volatile Singleton instance;

    private Singleton() { }

    public static Singleton getInstance() {
        if (instance == null) {                 // first check
            synchronized (Singleton.class) {
                if (instance == null) {         // second check
                    instance = new Singleton();
                }
            }
        }
        return instance;
    }
}
```
- volatile ensures visibility of changes across threads and prevents instruction reordering issues.

# Android Fundamentals 

## What is Android? What is the Android architecture stack?
- Android is an open-source mobile operating system developed by Google, mainly used for smartphones, tablets, TVs, and other smart devices.
  
- **Android Architecture Stack** → Android architecture consists of Linux Kernel, HAL, Native Libraries with ART, Application Framework, and Applications.

## What is `AndroidManifest.xml`? Name five things declared in it.
- The Manifest is the app's configuration file — the OS reads it before running any code.

1. App package name
2. all components (Activities, Services, Receivers, Providers)
3. permissions the app requires (uses-permission),
4. minimum and target SDK versions,
5. app icon, label, and theme.

## What is an Intent? Explicit vs implicit? Toast vs Snackbar?
- An Intent is a messaging object in Android used to communicate between components like Activities, Services, and Broadcast Receivers.
- **Explicit Intent** → An explicit intent directly specifies the target component.
    
``` java
👉 Used when we know which Activity to open.

Intent intent = new Intent(this, SecondActivity.class);
startActivity(intent);
```
- **Implicit Intent** → An implicit intent does not specify a target component and lets Android choose the suitable app.

``` java
👉 Used for actions like: Open browser, Share text, Open camera

Intent intent = new Intent(Intent.ACTION_VIEW);
intent.setData(Uri.parse("https://google.com"));
startActivity(intent);
```
🔹 **Toast** → Toast is a small popup message that appears for a short time and disappears automatically.

🔹 **Snackbar** → Snackbar is a message shown at the bottom of the screen and can include an action button.

## What is `Context`? Three types and when to use each?
- Context is an Android component that provides access to application resources, system services, and application-level operations.

1. **Application Context (getApplicationContext())** — Application Context is tied to the application's lifecycle.
   - 👉 **Use when:** Need context across the whole app, Long-lived objects, Database, SharedPreferences, Singleton
2. **Activity Context (this inside Activity)** — Activity Context is tied to a specific Activity lifecycle.
   - 👉 **Use when:** UI-related operations, Launching dialogs, Inflating layouts

3. **Service Context** — Service Context is used inside a Service component.
   - 👉 **Use when:** Running background operations, Accessing system services inside Service  

## Explain the Activity lifecycle. What is a Fragment? Add vs Replace?
- onCreate → onStart → onResume → onPause → onStop → onDestroy
- **Fragment** is a reusable and modular part of an Activity with its own UI and lifecycle.
- add() keeps existing Fragment and adds another one, while replace() removes the current Fragment and inserts a new one.

## Activity vs Fragment?
- 🔹 **Activity** → An Activity represents a single screen in an Android app.
- 🔹 **Fragment** → A Fragment is a reusable part of an Activity with its own UI and lifecycle.

| Activity                      | Fragment                          |
|-------------------------------|-----------------------------------|
| Independent component         | Depends on Activity               |
| Represents full screen        | Represents part of screen         |
| Has its own window            | Shares Activity window            |
| Lifecycle managed by Android  | Lifecycle depends on Activity     |
| Cannot be reused easily       | Reusable UI component             |

## What is `ViewBinding`? How is it different from `findViewById()`?
- ViewBinding provides safer and cleaner view access using generated binding classes, while findViewById() manually finds views using IDs.

## RecyclerView vs ListView? ViewHolder? ViewModel? Why survives rotation?
- 🔹 **ListView** is an older Android component used to display a scrollable list of items.
- 🔹 **RecyclerView** is a more advanced and flexible version of ListView used for efficiently displaying large sets of data.
- 🔹 **ViewHolder** is a design pattern that stores item view references to avoid repeated findViewById() calls.
- 🔹 **ViewModel** is an Android Architecture Component used to store and manage UI-related data in a lifecycle-aware way.
- 🔹 **ViewModel** survives rotation because it is tied to the lifecycle of the Activity or Fragment, not the UI itself.

## MVVM architecture? Room? @Entity, @Dao, @Database?
- **MVVM** stands for Model–View–ViewModel. It is an architecture pattern used to separate UI, business logic, and data handling.
- **Room** is an Android Jetpack library that provides an abstraction layer over SQLite for easier database management.
- 🔹 **@Entity** → @Entity represents a table in the database.
- 🔹 **@Dao** → @Dao contains methods used to access the database.
- 🔹 **@Database** → @Database defines the main database configuration and connects entities with DAO.

## What is `LiveData`? How does lifecycle awareness prevent crashes?
- **LiveData** is a lifecycle-aware observable data holder class in Android used to update the UI automatically when data changes.
- LiveData prevents crashes by stopping updates to destroyed or inactive Activities and Fragments.

## Permissions for Camera, Gallery, Google Places? Show place on map?
- Declare this permission in AndroidManifest.xml
  - Camera → android.permission.CAMERA
  - Gallery → android.permission.READ_MEDIA_IMAGES
  - Google Places → android.permission.ACCESS_FINE_LOCATION || android.permission.ACCESS_COARSE_LOCATION

## What is `DiffUtil`? How does it improve RecyclerView performance?
- **DiffUtil** is a utility class in Android used to calculate the difference between two lists and update only the changed items in a RecyclerView.
- DiffUtil improves RecyclerView performance by updating only modified items instead of refreshing the entire list.

## notifyDataSetChanged() vs notifyItemChanged()? Deep Linking vs Dynamic Linking?
- 🔹 notifyDataSetChanged() refreshes the entire RecyclerView.
- 🔹 notifyItemChanged() updates only a specific item in RecyclerView.
- 🔹 Deep Linking opens a specific screen inside the app using a URL.
- 🔹 Dynamic Linking are smart links provided by Firebase that work even if the app is not installed.

## How to make an API call in Android? How to implement dark mode?
- API calls in Android are commonly made using Retrofit. We define endpoints using annotations like @GET and @POST, create a Retrofit instance with a base URL and a converter such as Gson or Moshi, and handle responses asynchronously using RxJava, Coroutines, or Kotlin Flow.
- In RxJava, network calls are usually executed on the background thread using subscribeOn(Schedulers.io()), and results are observed on the main thread using observeOn(AndroidSchedulers.mainThread()).

## What is `ProGuard`? Minification, obfuscation, optimization?
- ProGuard is a tool in Android used to shrink, optimize, and obfuscate application code before release.
- 🔹 **Minification** removes unused classes, methods, and resources to reduce app size.
- 🔹 **Obfuscation** changes class, method, and variable names into meaningless names to make reverse engineering difficult.
- 🔹 **Optimization** improves bytecode performance by simplifying and optimizing the code.
















