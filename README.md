# Hello fellow iOS Developers!

## What is this for?

The goal of this open-source project is to collect as many iOS interview questions together along with answers in order to save you time.

## Practice

Use the Table of Contents to practice and test your knowledge. It doesn't show the answer so you'll be able to go over the questions without relying on the answer for help.

## Table of Contents

- [Database](https://github.com/StephenClarkApps/iOS-Interview-Questions#database)
    - What is Core Data?
    - When would you use Core Data over NSUserDefault?
    - What is a managed object context?
    - What is NSFetchRequest?
- [Debugging](https://github.com/StephenClarkApps/iOS-Interview-Questions#debugging)
    - What are some ways of debugging in iOS?
- [Design Pattern](https://github.com/StephenClarkApps/iOS-Interview-Questions#design-patterns)
    - What is Singleton Pattern?
    - What is the delegation pattern?
    - What is MVC?
    - What is MVVM?
- [General / Uncategorized](https://github.com/StephenClarkApps/iOS-Interview-Questions#general--uncategorized)
    - What considerations do you need when writing a UITableViewController which shows images downloaded from a remote server?
    - What is a protocol? How do you define your own protocol?
    - What is waterfall methodology and Agile methodology? What are the differences between them?
    - What is the difference between a class and an object?
    - What is JSON? What are the pros and cons?
    - What is the difference between not-running, inactive, active, background and suspended execution states?
    - Is it faster to iterate through an NSArray or an NSSet?
    - What is KVO?
- [Memory Management](https://github.com/StephenClarkApps/iOS-Interview-Questions#memory-management)
    - Why do you generally create a weak reference when using self in a block?
    - What is memory management handled on iOS?
    - What is the difference between *weak* and *strong*?
    - What is a memory leak?
    - What is a retain cycle?
    - What is the difference between copy and retain?
    - What is the difference between a stack vs a heap?
- [Networking](https://github.com/StephenClarkApps/iOS-Interview-Questions#networking)
- [Objective-C](https://github.com/StephenClarkApps/iOS-Interview-Questions#objective-c)
    - What is synthesize in Objective-C?
    - What is dynamic in Objective-C?
    - What is the difference between _name vs self.name?
    - What are blocks in Objective-C?
    - What is the difference between category and extension in Objective-C?
- [Swift](https://github.com/StephenClarkApps/iOS-Interview-Questions#swift)
    - What is the difference between public and open? Why is it important to have both?
    - What is the difference between var and let?
    - What is the difference between a struct and a class?
    - What is the difference between implicit and explicit?
- [Thread Management](https://github.com/StephenClarkApps/iOS-Interview-Questions#thread-management)
    - What is the difference between synchronous and asynchronous task?
    - What is the difference between atomic and non-atomic synthesized properties?
    - What is GCD and how is it used?
    - Explain the difference between Serial vs Concurrent.
- [Unit Testing / UI Testing](https://github.com/StephenClarkApps/iOS-Interview-Questions#unit-testing--ui-testing)
    - What is the purpose of unit testing? What are the benefits?
- [View / Storyboard](https://github.com/StephenClarkApps/iOS-Interview-Questions#view--storyboard)
    - What is the difference between viewDidLoad and viewDidAppear? Which should you use to load data from a remote server to display in the view?
    - What is the difference between frame and bound of a UIView?
    - What is the reuseIdentifier for?
    - What is autolayout?
- [Algorithm Resources](https://github.com/StephenClarkApps/iOS-Interview-Questions#algorithm-resources)
    - EKAlgorithm
    - swift-algorithm-club
- [Contributing](https://github.com/StephenClarkApps/iOS-Interview-Questions#contributing)
- [Thank You](https://github.com/StephenClarkApps/iOS-Interview-Questions#thank-you)
- [Flashcards](https://quizlet.com/serg_tsogtbaatar/folders/ios-interviews/sets)
    - The interview questions as flash card sets according to topic.

# Interview Questions & Answers


## Database

### What is Core Data?

Core Data is a framework that is used to manage model layer objects. It has the ability to persist object graphs to a persistent store. Data is organized into relational entity-attribute model.

It's in fact a SQLite database API (basically a wrapper for SQLite). By setting up CoreData properly, an application can store and retrieve the internal state of a class rapidly. The CoreData stack implementation has changed several times over the course of time and can now incorporate cloud storage (optionally). We might actually choose to use something simpler like a simple SQLite implementation using something like FMDB if we wanna have something cleaner and where we have no intention of incorporating cloud storage with Core Data.
****
### When would you use Core Data over NSUserDefault?

NSUserDefault is typically used to store small bits of data (settings, preferences, etc.). Core Data is used to store a large list of elements.
****
### What is a Managed Object Context?

First, managed object context is an instance of NSManagedObjectContext. It is the central object in the Core Data stack. It is used to create and fetch managed objects, and to manage undo and redo operations. Although it is allowed to have multiple managed object contexts, there is typically at most one managed object to represent any given record in a persistent store.
****
### What is NSFetchRequest?

NSFetchRequest is the class responsible for fetching from Core Data. Fetch requests can be used to fetch a set of objects meeting a certain criteria, individual values and more. ([source](https://medium.com/ios-os-x-development/50-ios-interview-questions-and-answers-part-2-45f952230b9f))
****
### Is Core Data type safe?

Core Data is not typesafe, whilst one may use different queues with Core Data, "Core Data expects to be run on a single thread." 

However, there are a range of solutions and methods including cocoapods which look to deal with the posibility of issues caused by the above.
****
### Using Core Data with SwiftUI

*Here we can only breifly touch on this, see the links for full understanding.*

Source (and more details): https://www.hackingwithswift.com/quick-start/swiftui/how-to-configure-core-data-to-work-with-swiftui

"""
If you create a new project and check both SwiftUI and Core Data, Xcode does a pretty good job of getting you towards a working configuration. Specifically, it:

Creates an empty YourProjectName.xcdatamodeld model file with an example configuration.

Adds a Persistence.swift file that wraps up Core Data neatly in one place.

Injects the context into the initial content view’s environment using the managedObjectContext key.

Provides sample code in ContentView to create, read, and delete example data.

That provides for us the complete ability to use Core Data fetch requests from within SwiftUI.
"""

### Using CoreData with SwiftUI -> @FetchRequest

"""
Once your managed object context is attached to the environment under the .managedObjectContext key, you can use the @FetchRequest property wrapper to make properties in your views that create and manage Core Data fetch requests automatically.

Creating a fetch request requires two pieces of information: the entity you want to query, and a sort descriptor that determines the order in which results are returned. In my example setup we created a ProgrammingLanguages entity that had name and creator attributes, so we could create a fetch request for it like this:

`@FetchRequest(entity: ProgrammingLanguage.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \ProgrammingLanguage.name, ascending: true)]) var languages: FetchedResults<ProgrammingLanguage>`
"""

Source: https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-core-data-fetch-request-using-fetchrequest
****
### What is FMDB? and What is SQLite?

FMDB is a wrapper for SQLite which is widely used in iOS development.

SQLite is light weight version of SQL which is commonly used to store data in our iOS applications.
****
## Debugging

### What are some ways of debugging in iOS?

- NSLog and print functions can be used for output into console.
- Breakpoints can also be used together with the Debug bar and Variables view as an alternative.
- Senior devs often use other tools such as Instruments and Crash Logs instead of the two above.
****
## Design Patterns

### What is Singleton Pattern?

The Singleton design pattern ensures that only one instance exists for a given class and that there’s a global access point to that instance. It usually uses lazy loading to create the single instance when it’s needed the first time. ([source](https://medium.com/ios-os-x-development/ios-interview-questions-13840247a57a))
****
### What is the delegation pattern?

The delegation pattern is a powerful pattern used in building iOS applications. The basic idea is that one object will act on another object's behalf or in coordination with another object. The delegating object typically keeps a reference to the other object (delegate) and sends a message to it at the appropriate time. It is important to note that they have a one to one relationship.
****
### What is MVC?

MVC stands for **Model-View-Controller**. It is a software architecture pattern for implementing user interfaces.

MVC consists of three layers: the model, the view, and the controller.
- The **model layer** is typically where the data resides (persistence, model objects, etc)
- The **view layer** is typically where all the UI interface lies. Things like displaying buttons and numbers belong in the view layer. The view layer does not know anything about the model layer and vice versa.
- The **controller (view controller)** is the layer that integrates the view layer and the model layer together.
****
### What is MVVM?

MVVM stands for **Model-View-ViewModel**. It is a software architecture pattern for implementing user interfaces.

MVVM is an augmented version of MVC where the presentation logic is moved out of the controller and into the view model. The view model is responsible for handling most, if not all, of the view's display logic.

A common occurence in MVC is where you have a massive-view-controller (some joke this is what MVC stands for). In order to shrink the size of your view controller and make the logic and readibility of your code easier to follow along, the MVVM will be used.
****
###  What is the Coordinator Pattern?

### The Coordinator Pattern
The Coordinator Pattern is a Structural / Architectural Design Pattern that defines how we deal with screen flow, and navigation in our apps.

The Coordinator pattern attempts to address issues with the MVC and MVVM patterns, which, in iOS, can cause our View Controllers to be dependent on each other and prevent effective View Controller re-use.

#### Back Story of the Pattern
The Coordinator pattern is a design pattern originally proposed by Soroush Khanlou in published articles and at a presentation at an iOS development back around 2014.

#### Implementing the Pattern

Implemting the Coordinator Pattern in iOS (either in Swift or Objectieve-C) starts with defining a simple protocol.

### What is MVVM-C ?

This is an approach combining MVVM with the Coordinator Pattern, and it may or may not make use of an Rx or Reactive binding between your View Models and your Views..

****
### What are the SOLID design principles?

SOLID stands for:

S - Single-responsiblity Principle

O - Open-closed Principle

L - Liskov Substitution Principle

I - Interface Segregation Principle

D - Dependency Inversion Principle

****
The **Single-Responsibility Principle** states that "A class should have one and only one reason to change, meaning that a class should have only one job".
****
The **Open-Closed Principle** states that "Objects or entities should be open for extension but closed for modification".
****
**Liskov's Substitution Principle** states that "Let q(x) be a property provable about objects of x of type T. Then q(y) should be provable for objects y of type S where S is a subtype of T", in general terms then this means in practice that "every subclass or derived class should be substitutable for their base or parent class".
****
**The Interface Segregation Principle** states that "A client should never be forced to implement an interface that it doesn’t use, or clients shouldn’t be forced to depend on methods they do not use".
****
**The Dependency Inversion Principle** states that "Entities must depend on abstractions, not on concretions. It states that the high-level module must not depend on the low-level module, but they should depend on abstractions".
****
### What is Dependency Injection and How do we Use It?

Dependency Injection – is a technique whereby one object (or static method) supplies the dependencies of another object. A dependency is an object that can be used (a service). An injection is the passing of a dependency to a dependent object (a client) that would use it (source: Wikipedia).

iOS ViewController Example
```swift
// Your View Controller can have a custom init into which we can pass dependencies
init(destination: HolidayDestination, traveler: Traveler) {
    self.destination = destination
    self.traveler = traveler
    super.init(nibName: nil, bundle: nil)
}
 
// And from the place that your going to present the VC we create an instance of
// the VC passing in the dependencies like this
 
let holidatyDestinationViewController = DestinationViewController(destination: dest, 
                                                                     traveler: traveler)
// Then we present with our custom presentation logic
 ```
 ****
### What about the Principle of Dependency Inversion?

One of the SOLID design principles (https://en.wikipedia.org/wiki/SOLID)...

""" In object-oriented design, the dependency inversion principle is a specific form of decoupling software modules. When following this principle, the conventional dependency relationships established from high-level, policy-setting modules to low-level, dependency modules are reversed, thus rendering high-level modules independent of the low-level module implementation details. The principle states:

High-level modules should not depend on low-level modules. Both should depend on abstractions (e.g., interfaces).

Abstractions should not depend on details. Details (concrete implementations) should depend on abstractions.

By dictating that both high-level and low-level objects must depend on the same abstraction, this design principle inverts the way some people may think about object-oriented programming.""" (Source: Wikipedia)

**Sources**
https://medium.com/flawless-app-stories/practical-dependency-inversion-in-swift-1c1142161a8

****
## General / Uncategorized

### **What considerations do you need when writing a UITableViewController which shows images downloaded from a remote server?**

- Only download the image when the cell is scrolled into view (when cellForRowAtIndexPath is called)
- Download the image asynchronously on a background thread so as not to block the UI so the user can keep scrolling
- When the image has downloaded for a cell, check if that cell is still in the view or whether it has been re-used by another piece of data. If the cell has been re-used, then the image should be discarded. Otherwise, it should be switched back to the main thread to change the image on the cell. ([source](https://www.codementor.io/mattgoldspink/ios-interview-tips-questions-answers-objective-c-du1088nfb))
****
### **What is a protocol? How do you define your own protocol?**

A protocol defines a list of required and optional methods for a class that adopts the protocol to implement. For a class bound protocol, any class is allowed to implement the protocol so that other classes can send message to it based on the protocol methods without knowing the exact type of class.

A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality” They can give also give nominal types polymorphic behavior.

An example of how a protocol is defined:

<summary>Objective-C</summary>

```objective-c
@protocol MyCustomDataSource
- (NSUInteger)numberOfRecords;
- (NSDictionary *)recordAtIndex:(NSUInteger)index;
@optional
- (NSString *)titleForRecordAtIndex:(NSUInteger)index;
@end
```

<summary>Swift</summary>

```swift
protocol myProtocol {
    // Definition goes here
}
```

Swift protocols are different from Objective-C protocols in that Swift Protocols support:

- Protocol Inheritance
- Protocol Extensions
- Default Implementation
- Associated Types (Generics)
- They can be conformed to by Structs and Enums (value types) as well as Classes (reference types).
****
### **What is Protocol Oriented Programming?**

Protocol Oriented Programming is a version of Object Oriented Programming (OOP) which emphasizes composition over inheritance as a method of functionality-sharing.

<summary>Common Use Contexts</summary>
A common instance protocols are used is providing a DataSource for UITableView or UICollectionView ([source](https://www.codementor.io/mattgoldspink/ios-interview-tips-questions-answers-objective-c-du1088nfb))
</summary>

***
#### TOPIC AREA: Development Lifecycle
### What is the Waterfall methodology and what is an Agile methodology? What are the differences between them?

Waterfall methodology is a sequential model for software development. It is separated into a sequence of pre-defined phases including feasibility, planning, design, build, test, production, and support.

On the other hand, Agile development methodology is a linear sequential apporach that provides flexibility for changing project requirements.

List of differences:
- Waterfall model divides software development process into different phases while Agile segregates the project development lifecycle into sprints. This makes waterfall more rigid while agile allows for more flexibility
- Waterfall model describes the software development life cycle as a single project while Agile considers it as a collection of many different projects; are iterations of different phases focusing on improving overall software quality with feedback from users and QA team.
- Since waterfall is more rigid, development requirements need to be clearly established beforehand since there is little flexibility for changing once project development starts. Meanwhile, Agile allow changes to be made anytime along the project development process even after initial planning has been completed.
- In Waterfall, the testing phase typically occurs after the build phase. In Agile, testing is often performed concurrently with programming or at least in the same iteration.
- Waterfall is more of an interal process that does not involve user feedback. Agile tends to involve user participation more in order to improve customer satisfaction.
- Waterfall model best fits projects that have a clearly defined set of requirements and where change to requirements is not expect. Agile fits more for projects where the requirements are expected to change and evolve.
- Waterfall can exhibit a project mindset that focuses on completion of the project while Agile can allow for more focus on developing a product that satisfies customers.
****
### **What is the difference between a class and an object?**

In the simplest sense, a class is a blueprint for an object. It describes the properties and behaviors common to any particular type of object. An object, on the other hand, is an instance of a class.
****
### **What is JSON? What are the pros and cons?**

JSON stands for JavaScript Object Notation and is a common format for communicating data between different systems (principally on the internet).

It uses a limited number of data types in order to keep things fairly simple; these data types include string, bool, arrays, object/dictionary, number, and null. JSON is derived from JavaScript, the JSON format having been originally specified as a separate standard in the 2000s but with competing versions of the standard. However, I-JSON (short for “Internet JSON”), proposed in 2015, “is a restricted profile of JSON designed to maximize interoperability and increase confidence that software can process it successfully with predictable results” (RFC 7493).

These days JSON has become a language-independent format with many programming languages and their associated libraries supporting conversions to and from this format from there own data-types.

### **Decoding JSON**

On the side of the Swift code in our apps, we need to implement some method of converting between the JSON data, and our locally defined objects. In the past, we might have relied on the JSONSerialization class to do this, but these days, in the Swift language, we typically will take advantage of Codable types for our data layer, and we use these with JSONEncoder and JSONDecoder classes.

### The Pros and Cons of Json

#### Pros:

- It is lighter than XML meaning that it can represent the same data in XML in fewer bytes. This makes network transmissions and read/writes faster
- Since it is native to JavaScript, computationally-expensive XSL tranformations are not needed in order to extract data

#### Cons:

- Not as widespread as XML
- Data is not readily streamable and has to be broken up into individual objects
- Can't use comments
****
### What is the difference between not-running, inactive, active, background and suspended execution states?

- **Not-running state** occurs when the app either has not be launched or was running but was terminated by the system.
- **Inactive state** occurs where the app runs in the foreground but is currently not receiving events. (It may be executing other code though). This state is typically brief as apps transitions to other states.
- **Active state** is where the app is running in the foreground and receiving events. This is the normal mode for foreground apps.
- **Background state** occurs when the app is in the background and executing code. Apps typically enter this state on their way to being suspended. Apps that require extra execution time may remain in this screen longer. Apps being launched directly into the background enters this state instead of inactive state.
- **Suspended state** is where the app is in the background but it is not executing code. Apps will remain in memory, but are removed by the system if low-memory condition occurs in order to make more space for foreground apps.
****
### Is it faster to iterate through an NSArray or an NSSet?

It depends. NSSet is faster to iterate through if the order of the items in the collection is not important. The reason is because NSSet uses hash values in order to find items while NSArray has to iterate through its entire contents to find a particular object. ([source - #25](https://medium.com/cocoaacademymag/25-ios-interview-questions-and-answers-for-junior-developers-19bfe6e99b0))
****
### What is KVO?

KVO stands for *Key-Value Observing*. It allows a controller or class to *observe* when a property value changes.

**Examples**

??

REF: https://nalexn.github.io/kvo-guide-for-key-value-observing/

****
### **Generic Programming**

A style of computer programming in which algorithms are written in terms of types to-be-specified-later that are then instantiated when needed for specific types provided as parameters.

This approach, pioneered by the ML programming language in 1973, permits writing common functions or types that differ only in the set of types on which they operate when used, thus reducing duplication.

Such software entities are known as generics in Python, Ada, C#, Delphi, Eiffel, F#, Java, Nim, Rust, Swift, TypeScript and Visual Basic .NET. They are known as parametric polymorphism in ML, Scala, Julia, and Haskell (the Haskell community also uses the term “generic” for a related but somewhat different concept); templates in C++ and D; and parameterized types in the influential 1994 book Design Patterns.

The term “generic programming” was originally coined by David Musser and Alexander Stepanov in a more specific sense than the above, to describe a programming paradigm whereby fundamental requirements on types are abstracted from across concrete examples of algorithms and data structures and formalized as concepts, with generic functions implemented in terms of these concepts, typically using language genericity mechanisms as described above.
****
#### TOPIC AREA: Data Types / Data Structures
### **Graph** 

A Graph is an important data structure in computer science; it is defined as a collection of nodes with “edges” between some of the nodes. When we talk about Graphs that category includes Trees, however not all Graphs are Trees.
****
## Memory Management

### Why do you generally create a weak reference when using self in a block?

Sometimes it is necessary it capture self in a block such as when defining a callback block. However, since blocks maintain strong references to any captured objects including self, this may lead to a strong reference cycle and memory leak.

Instead, capturing a weak reference to self is recommended in order to avoid this issue:


<summary>Objective-C</summary>

```objective-c
SomeBlock* __weak weakSelf = self;
```

<summary>Swift</summary>
In Swift, to deal with what ARC (automatic reference counting) has given us, we can similarly use code like this with our "closures":
```swift
// To avoid retain cycles in closures we can make use of the "Capture List"
// as in the below example. 
resource.request().onComplete { [weak self] response in
    guard let strongSelf = self else { return } // or guard let `self` = self else { return }
    let modal = strongSelf.updateModel(response)
    strongSelf.updateUI(model)
 }
```
    

****
### What is Memory Management handled on iOS?

iOS uses something called **ARC** which stands for **Automatic Reference Counting**. When an object is said to have a strong reference to it, ARC increase its retain count by 1. When the retain count of an object reaches 0, the object will typically be deallocated if there are no more strong references to it. Unlike garbage collection, ARC does not handle reference cycles automatically. Before ARC we had to deallocate manually, however the work of Chris Latner and other brough the automatic method to both Objective-C and Swift.

***Reference Counting***

The use of a retain count has been around since the early day of iOS: The way this originally worked was that when you explicitly allocated an object it got a retain count of 1 and then when you called release or autorelease on that same object, its retain count was then decremented and the object was then collected. Furthermore, if you allocated further instances of the object then the retain count would increase further.

For example:

NSObject *someObject = [[NSObject aloc] init]; //retain count becomes 1
[someObject release]; //retain count reduces back to zero 0

(Source: P)

What happened with the above code is that when an object got released its -dealloc method got called on an object and its memory will then be reclaimed.

One of the pre-ARC tools that developers could use was called an `AutoreleasePool` which was a section of your app code where you can collect objects sent an autorelease message, you would then be able to clean them up via the sending of an NSAutoreleasePool  drain message (Source: P). At this point in time, one of the only alternatives to manual memory management in Objective-C was libauto which was “a scanning, conservative, generational, multi-threaded garbage collector”. The algorithm used involved scanning the memory in use by an app and collecting out of scope memory.

***Automatic Reference Counting (ARC)***

Automatic Reference Counting (ARC) is a memory management feature of the compiler used by Xcode; the built-in Xcode compiler is called Clang Compiler was developed within Apple by Chris Lattner and others. The origins of ARC were in work carried out by Chris and his colleagues on the Clang compiler, starting with the addition of C++ support, and also tied in with the early stages of development of Swift programming language. They felt during this that the memory management solutions (such as manual memory management and the libauto garbage collector mentioned above) were not the right automatic memory management for the compiler and they were not cutting the mustard and that ARC could be the new solution for this. Whilst ARC can technically be thought of as an alternative type of “garbage collection”, that term typical does not refer to referencing counting based algorithms, meaning that ARC is NOT considered “garbage collection” in the general use of the term.

Automatic Reference Counting works for both the Objective-C and Swift programming languages, and it involves the compiler inserting the “object code messages” which previously the programmer had to type in manually: that is the retain and release keywords. These keywords work to increase and decrease the reference count for a particular object at run time. What this means is that when the reference count of an object does get to zero, the object is deallocated and kicked out of memory (Ref#: C) conversely ARC won’t deallocate an instance when there is still at least one active reference to it (Ref#: D).

***Limitations of ARC***

ARC implements automatic memory management for objects and blocks, this means that we no longer have to explicitly insert retains and releases as was previously the case. However, ARC is not a tracing type garbage collection algorithm, and “it does not provide a cycle collector”, instead we must explicitly manage the lifetime of objects. In certain scenarios ARC is not able to work out when it’s safe to deallocate a particular class instance and therefore, to avoid a retention cycle being created we need to help the compiler to work out what object we need for our program and which ones are safe to be let go.

One thing that ARC didn’t really handle when it was introduced was CF objects from the CoreFoundation framework, so for example when I was updating a very legacy Objective-C app I would often see leaks involving these objects. This was because, with Core Foundation, any objects which you allocate needed to be released with either CFRelease or CFMakeCollectable, and they were not picked up by ARC. The reason for this is that the Core Foundation library is written in pure low-level C code, and it’s a problem to try and make the use of the reference count automatic when using these CF types.

****
### What is the difference between *weak* and *strong*?

First, objects are *strong* by default.

- *Strong* means that the reference count will be increased and the reference to it will be maintained through the life of the object.
- *Weak*, means that we are pointing to an object but not increasing its reference count. It’s often used when creating a parent child relationship. The parent has a strong reference to the child but the child only has a weak reference to the parent. ([source](https://medium.com/ios-os-x-development/ios-interview-questions-13840247a57a))

Common instances of *weak* references are delegate properties and subview/controls of a view controller's main view since those views are already strongly held by the main view. ([source](http://stackoverflow.com/questions/11013587/differences-between-strong-and-weak-in-objective-c))

"Important places to use weak variables are in cases where you have potential retain cycles. A retain cycle is what happens when two objects both have strong references to each other. If 2 objects have strong references to each other, ARC will not generate the appropriate release message code on each instance since they are keeping each other alive". 

A class with a strong reference is managed using “normal” Automatic Reference Counting meaning that as long as there are any references anywhere to it – then it will stay in memory.

In contrast, a weak reference means: if no other class is referencing this object, then I don’t care about the object either so this reference can be made Nil. In order for the weak modifier to work it needs to be nill-able, so that means that it can only be used with optional pointers to reference types. Weak pointers will never cause an object to be retained or kept in the heap (Ref#: T). One example of this is the outlets we can use with storyboards or nibs: since these are strongly held by the view hierarchy, we’re free to designate them as weak (i.e. `@IBOutlet weak var carScreenView: CatScreenView!`).

****
**Weak vs Unowned**

“Use a weak reference whenever it is valid for that reference to become nil at some point during its lifetime. Conversely, use an unowned reference when you know that the reference will never be nil once it has been set during initialization.”


([source](https://krakendev.io/blog/weak-and-unowned-references-in-swift))

****
### What is a Memory Leak?

A memory leak commonly occurs when an object is allocated in such a way that ***when it is no longer in use or needed, it is not released***. In iOS programming, you create certain objects with weak references in order to avoid a strong to strong relationship that creates a retain cycle and a memory leak.
****
### What is a Retain Cycle?

Retain cycles can occur when memory management is based on retain count. This typically occurs when **two objects strongly reference each other**. As a result, the retain count of either object will never reach zero and deallocated from memory (hence retaining each other).

Retain / Retention Cycles

What we call a reference cycle can happen if two class instances hold strong references to each other, leading to circular reference situations, where each instance is keeping the other one alive.  This scenario, in turn, can often lead to memory leaks, or they can be cascading leaks where the memory usage starts to increase exponentially whilst the app is running. We need to be breaking cycles in the code manually by using the weak or unowned modifiers.

***Reference Cycles due to the Delegate Pattern***
TODO: Add details

***Reference Cycles due to Closures***

Weak with Closures and Blocks

We typically need to use a weak modifier when we working with closures and blocks (particularly those with references to `self`). See more about this in my articles on Closures in Swift and Blocks in Objective-C.

One common mechanism which can lead to issues like reference cycles is capturing strong references inside closures. Since closures in Swift are reference types, they are capable of capturing values by reference from their enclosing scope (and indeed in Swift, this is the default whereas in Objective-C we would need to mark a particular property with the __blockmodifier to use it in this way).

To solve this problem in our closures and to weakify references in Swift, we can use something called a “capture list” which appears inside the start of a particular closure and looks like square brackets followed byin, together with the weak or unowned storage modifier:

```swift
resource.request().onComplete { [weak self] response in
    guard let strongSelf = self else { return }
    let model = strongSelf.updateModel(response)
    strongSelf.updateUI(model)
}
```
Should a memory leak occur, there are a range of tools we can use in order to diagnose the cause and identify the source. Some of these tools are found in "Instruments".

****
### What is the difference between *copy* and *retain*?

Calling *retain* on an object will increase its *retain* count by one. When the *retain* count of an objective reaches 0, the object will be deallocated and released from memory.

When you *retain* an object, you share the same version with whoever passed the object to you. But when you *copy* an object, you do not share the same version of the object that was passed to you. Instead, a duplicate of that object is created with duplicated values.

****
### **What is the Difference between the Stack vs the Heap?**


***Stack vs Heap***

It’s firstly important to know that value types (like structs) will be stored on “the stack”, whereas reference types (basically meaning classes) are dynamically managed on “the heap”.

N.B. The terms “the stack” and “the heap” can have different meanings in different languages or programming environments, as they can be implemented in a variety of ways but there are usually similarities in how these data structures are utilized managing memory.

Both “the stack” and “the heap” are stored in RAM.

***The Stack (call stack)***

Typically a call stack is composed of “stack frames“ which are data structures that contain information about functions to call, these stack frames typically represent a function call and its argument data. The call stack “stores information relevant to the current function such as a pointer to whichever function it was called from, and any local variables. Because functions call other functions and then return, the stack grows and shrinks to hold information from the functions further down the call stack. A program doesn’t really have runtime control over it; it’s determined by the programming language, OS and even the system architecture” (Ref#S).

***The Heap***

Contrastingly, “the heap is a general term used for any memory that is allocated dynamically and randomly; i.e. out of order. The memory is typically allocated by the OS, with the application calling API functions to do this allocation. There is a fair bit of overhead required in managing dynamically allocated memory, which is usually handled by the OS” (Ref#: S).

In the usual operation of the ARC system, “objects are allocated on the heap, and their lifetime is manually managed using a reference count. This is done using two instance methods which all classes are expected to implement: retain increases the object’s reference count by 1, whereas conversely release decreases the object’s reference count by 1 and calls the instance method dealloc if the count reaches 0″. Therefore, to simplify, ARC keeps track of all the vars and lets that point to some class in the heap and tosses out classes form the heap when they are no longer referenced.


**To what extent are they controlled by the OS or language runtime?**

The OS allocates the stack for each system-level thread when the thread is created. Typically the OS is called by the language runtime to allocate the heap for the application.

**What is their scope?**

The stack is attached to a thread, so when the thread exits the stack is reclaimed. The heap is typically allocated at application startup by the runtime, and is reclaimed when the application (technically process) exits.

**What determines the size of each of them?**

The size of the stack is set when a thread is created. The size of the heap is set on application startup, but can grow as space is needed (the allocator requests more memory from the operating system).

**What makes one faster?**

The stack is faster because the access pattern makes it trivial to allocate and deallocate memory from it (a pointer/integer is simply incremented or decremented), while the heap has much more complex bookkeeping involved in an allocation or deallocation. Also, each byte in the stack tends to be reused very frequently which means it tends to be mapped to the processor's cache, making it very fast. Another performance hit for the heap is that the heap, being mostly a global resource, typically has to be multi-threading safe, i.e. each allocation and deallocation needs to be - typically - synchronized with "all" other heap accesses in the program.

"""

"""

**Stack Key Points**

- Stored in computer RAM just like the heap.
- Variables created on the stack will go out of scope and are automatically deallocated.
- Much faster to allocate in comparison to variables on the heap.
- Implemented with an actual stack data structure.
- Stores local data, return addresses, used for parameter passing.
- Can have a stack overflow when too much of the stack is used (mostly from infinite or too deep recursion, very large allocations).
- Data created on the stack can be used without pointers.
- You would use the stack if you know exactly how much data you need to allocate before compile time and it is not too big.
- Usually has a maximum size already determined when your program starts.

**Heap Key Point**

- Stored in computer RAM just like the stack.
- Slower to allocate in comparison to variables on the stack.
- Used on demand to allocate a block of data for use by the program.
- Can have fragmentation when there are a lot of allocations and deallocations.
- In C++ or C, data created on the heap will be pointed to by pointers and allocated with new or malloc respectively.
- Can have allocation failures if too big of a buffer is requested to be allocated.
- You would use the heap if you don't know exactly how much data you will need at run time or if you need to allocate a lot of data.
- Responsible for memory leaks.

"""

**Further things to Note**

"""
While the stack is allocated by the OS when the process starts, it is maintained inline by the program. This is another reason the stack is faster, as well - push and pop operations are typically one machine instruction, and modern machines can do at least 3 of them in one cycle, whereas allocating or freeing heap involves calling into OS code.
"""

(Source: https://stackoverflow.com/questions/79923/what-and-where-are-the-stack-and-heap)

Note: In Objective-C, all objects are always allocated on the heap, or at least should be treated as if on the heap.

****

## Networking

For networking in iOS programming we now a days might often use native classes from  core Cocoa, yet in the past it was more common to use third-party libraries such as alamofire.

### Using URLRequest and URLSession

Classes we often use for networking include URLSession, and URLRequest which we use to formuale our requests.

**TODO: THIS SECTION NEED A LOT MORE WORK**

****

## Objective-C

### **What is synthesize in Objective-C?**

*Synthesize* generates getter and setter methods for your property.
****
### **What is dynamic in Objective-C?**

Dynamic is used for subclasses of NSManagedObject. @dynamic can also be used to delegate the responsibility of implementing the accessors. ([source](https://medium.com/ios-os-x-development/ios-interview-questions-13840247a57a))
****
### **What is the difference between _ vs self. in Objective-C?**

You typically use either when accessing a property in Objective-C. When you use _, you're referencing the actual instance variable directly. You should avoid this. Instead, you should use self. to ensure that any getter/setter actions are honored.

In the case that you would write your own setter method, using _ would not call that setter method. Using self. on the property, however, would call the setter method you implemented.
****
### **What are blocks in Objective-C?**

Blocks are a language-level feature of Objective (C and C++ too). They are objects that allow you to create distinct segments of code that can be passed around to methods or functions as if they were values. This means that a block is capable of being added to collections such as NSArray or NSDictionary. Blocks are also able to take arguments and return values similar to methods and functions.

The syntax to define a block literal uses the caret symbol(^):

<summary>Objective-C</summary>

```objective-c
^{
  NSLog(@"This is an example of a block")
}
```
****
### **What is the difference between category and extension in Objective-C?**

A category and extension are similar in functionality where they can add additional instance and class methods to a class. However, an extension can only do so if the source code for the class being extended is available at compile time. This means that classes such as NSString cannot be extended. Instead, a category would be used to add additional methods to the NSString class
****
## Swift

#### Theme: Access Control
### **What is the difference between public and open? Why is it important to have both?**

Open access imposes limitations on class inheritance. Classes declared with open level access can be subclassed by modules they are defined in, modules that import the module in which the class is defined, and class members as well. While this sounds similar to the public access level defined in Swift 2, there is a small difference. In Swift 3, the meaning of public access level means that classes declared public can only be subclassed in the module they are defined in. This includes public class members which can be overridden by subclasses defined int he module they are defined in.

Some classes of libraries and frameworks are not designed to be subclasses. For example, in the Core Data framework, Apple states that some methods of NSManagedObject should not be overridden. To prevent any unexpected behavior that may result from overriding those methods, Apple declares those methods public rather than open. As a result, those methods are not marked as open for developers to override. ([source](https://cocoacasts.com/what-is-the-difference-between-public-and-open-in-swift-3/))
****
#### What are the internal, fileprivate and private access control modifiers used for?

Internal access enables entities to be used within any source file from their defining module, but not in any source file outside of that module. You typically use internal access when defining an app’s or a framework’s internal structure.

File-private access restricts the use of an entity to its **own defining source file**. Use file-private access to hide the implementation details of a specific piece of functionality when those details are used within an entire file.

Private access restricts the use of an entity **to the enclosing declaration**, and to extensions of that declaration that are in the same file. Use private access to hide the implementation details of a specific piece of functionality when those details are used only ***within a single declaration***.In other words, things marked `private` are accessible only inside their defining type (such as properties or methods inside a class or struct), so her the class or struct or similar is termed the "enclosing declaration", or the enclosing scope one could call it.

**Source:** https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html
**Source:** https://www.appcoda.com/swift-access-levels/
****
### What is the difference between *var* and *let*?

*var* is a variable that can be changed while *let* denotes a constant that cannot be changed once set.
****
### **What is the difference between a struct and a class?**

The main difference to note is that structs are value types (stored on stack) while classes are reference types (stored on heap).

We can say that a value of value type is the actual value, in contrast, a value of reference type is a reference to another value.

In Swift value types include structures (including booleans, characters, integer numbers, floating-point numbers, fixed-point numbers, mutable strings, tuples, mutable arrays, mutable dictionaries, mutable sets), enumerations (including optionals), and user-defined structures and enumerations composing other value types.	
Reference types include: functions, closures, and classes.

Classes have capabilities that structs do not:
- Inheritance enables one class to inherit the characteristics of another. 
- Type casting enables you to check and interpret the type of a class instance at runtime.
- Deinitializers enable an instance of a class to free up any resources it has assigned.
- Reference counting allows more than one reference to a class instance.

#### *Example*
For value types, copying creates an independent instance with its own unique copy of its data (in a seperate slot or location in stack memory):
``` swift
// Value``` type example
struct S { var data: Int = -1 }
var a = S()
var b = a						// a is copied to b
a.data = 42						// Changes a, not b
println("\(a.data), \(b.data)")	// prints "42, -1"
```
Conversely, copying a reference type implicitly creates a shared instance (or really multiple references to the same object in heap memory). After a copy, two variables then refer to a single instance of the data, so modifying data in the second variable also affects the original for example:
``` swift
class C { var data: Int = -1 }
var x = C()
var y = x						// x is copied to y
x.data = 42						// changes the instance referred to by x (and y)
println("\(x.data), \(y.data)")	// prints "42, 42"
```

**Source:** https://developer.apple.com/swift/blog/?id=10
****
### **Why Choose a Struct over a Class in Swift?**

"""
Structs are preferable if they are relatively small and copiable because copying is a lot safer than having multiple references to the same instance as happens with classes. This is especially important when passing around a variable to many classes and/or in a multithreaded environment. If you can always send a copy of your variable to other places, you never have to worry about that other place changing the value of your variable underneath you.

With Structs, there is much less need to worry about memory leaks or multiple threads racing to access/modify a single instance of a variable. (For the more technically minded, the exception to that is when capturing a struct inside a closure because then it is actually capturing a reference to the instance unless you explicitly mark it to be copied).

Classes can also become bloated because a class can only inherit from a single superclass. ~~That encourages us to create huge superclasses that encompass many different abilities that are only loosely related.~~ Using protocols, especially with protocol extensions where you can provide implementations to protocols, allows you to eliminate the need for classes to achieve this sort of behavior.
"""

We can use protocol conformance with structs instead of inheritance with classes to indicate that we expect certain things from an object but without causing confusion via inheritance. 

Using Structs instead of classes for the same things (where that makes sense) will tend to be **faster than classes**, in that our code will run faster (which is primarily due to the differences in how memory is used by these different types of objects).

(Source: https://stackoverflow.com/questions/24232799/why-choose-struct-over-class)

****
**Pointers**

A Swift constant or variable that refers to an instance of some reference type is similar to a pointer in C, but isn’t a direct pointer to an address in memory, and doesn’t require you to write an asterisk (*) to indicate that you are creating a reference. Instead, these references are defined like any other constant or variable in Swift. You can interact with pointers directly via the Swift Standard Library, however, this isn't something we typically do except for in very specific cases, and mostly we should not need to do this.

****
### **What is the difference between implicit and explicit?**

When referring to something as implicit or explicit, it is often referring to how an object is declared. In the two examples below:


<summary>Swift</summary>

```swift
var name: String = "onthecodepath" // explicit
var name = "onthecodepath" // implicit
```


In the first line above, the name variable is *explicitly* declared since the type of the variable follows the name of the variable. In the second line, the String type is not explicitly declared. However, Swift is able to infer that name is of a String type since the value that it is being set as is of a String type.
****
## Thread Management

### What is the difference between synchronous and asynchronous task?

Synchronous tasks wait until the task has been completed while asynchronous tasks can run in the background and send a notification when the task is complete.

### What is the difference between *atomic* and *non-atomic* synthesized properties?

First, properties are set to *atomic* by default.

*Atomic* properties are more likely to guarentee thread-safety because it will ensure that a value is fully set (by the setter method) or fully retrieved (by the getter method) when accessor methods are called simultaneously.

*Non-atomic* properties, however are not thread-safe. While they run faster, they may cause race conditions. In the event that accessor methods are called simultaneously and a race condition occurs, a setter value would first release the old value and a getter method would retrieve nil since no value has not been set yet.
****
### What is GCD and how is it used?

GCD stands for Grand Central Dispatch, it provides and manages Queues of tasks in the iOS apps, it offers the following benefits
- Improving your app's responsiveness by helping to defer computationally expensive tasks and run them in the background.
- Providing an easier concurrency model than locks and threads and helps to avoid concurrency bugs.
- Potentially optimize your code with higher performance primitives for common patterns such as singletons.

**Source:** RayWenderlich.com

GCD is one of the most commonly used API to manage concurrent code and execute operations asynchronously. Network calls are often performed on a background thread while things like UI updates are executed on the main thread.

In the past we had to work directly with “threads” and work with trying to run things on different threads for our apps. GCD is a Framework to make dealing with threads easier: essentially it allows things to be done using ‘Queues’ which are an abstraction on threads to help make things easier. GCD is a block-based API and provides a set of methods that you call and allow tasks to be run on given queues and to get it working well we usually need to pipe in a good bit of boilerplate code to use. Criticisms of GCD can include it possibly being a bit cumbersome and low level to use regularly in applications. One of the things that can make things easier and nicer is using **NSOperations** on top of GCD in order to abstract out and wrap things into objects without having to directly call GCD functions. One unit of work can now be represented by an object that you can refer to, pass around, and pause, and cancel, making it potentially easier to orchestrate a set of work.

Because GCD is block/closure based, things can start to get convoluted when we get into more complex scenarios leading to what is known as “callback hell” (meaning scenarios wherein the completion handler of one method you might them be doing another async call and so on). One solution to prevent callback hell is to use something called PromiseKit which is a swift implementation of “Promises” letting you chain your asynchronous work such that if you have two or three operations that you wanted to run but which depend on the result of previous operations without nesting blocks or anything like that. “Promises tame asynchronicity by letting you write code as a series of actions based on events“(https://www.raywenderlich.com/9208-getting-started-with-promisekit).
****
### RxSwift

RxSwift is a Swift framework and is also an example of an implementation of Reactive Programming based on the ReactiveX Standard first developed in Microsoft in implementations such as rx.NET – this standard is essentially a standard for libraries which can be used across a range of different programming languages which are all used for *composing asynchronous and event-based programs by making use of Observable Sequences*. The ReactiveX Standard “extends the observer pattern to support sequences of data and/or events and adds operators that allow you to compose sequences together declaratively while abstracting away concerns about things like low-level threading, synchronization, thread-safety, concurrent data structures, and non-blocking I/O.” 

#### RxSwift -> Marble Diagram

A Marble Diagram visualizes the transformation of an observable sequence. It consists of the input stream on top, the output stream at the bottom and the actual transformation function in the middle”. Typically in a marble diagram, time flows to the right, and the diagram describes how values (“marbles”) are emitted on the Observable execution.


**The RxSwift Solution**

RxSwift can do everything that PromiseKit can do, and is also at high level of abstraction, but ReactiveX allows us to do even more advanced things off the back of an Rx solution that the other asynchronous work solutions do not give us. The ReactiveX Standard “extends the observer pattern to support sequences of data and/or events and adds operators that allow you to compose sequences together declaratively while abstracting away concerns about things like low-level threading, synchronization, thread-safety, concurrent data structures, and non-blocking I/O.” 

So RxSwift enables us to build apps using a declarative approach. Rx is “an API for asynchronous programming with observable streams”: So being within this standard, RxSwift is really an asynchronous programming library based on using what are called “Observables” which are just sequences of data or events that you can react to. So everything in RXSwift is either a sequence or something that observes a sequence.

**Benefits of RxSwift**

RxSwift can make your code simpler, cleaner and easier to maintain. Some of the key benefits are advertised to be:

- It’s Composable

- It’s Reusable because it’s composable.

- It’s declarative because definitions are immutable and only data changes.

It’s understandable and concise through raising the level of abstraction and removing transient states, it’s stable because Rx code is thoroughly unit tested, it can be less stateful because you are modeling applications as unidirectional data flows, and it’s more likely to be without leaks because resource management should be easy (Ref#: B).

#### RxSwift - Observables 

These are an Rx concept used in the likes of RxSwift. They allow us to emit events, have Lots of static convenience methods, allow for Subscriptions. 

There are two types: of Observable:  An observable is “cold” if its underlying producer is created and activated during subscription. An observable is “hot” if its underlying producer is either created or activated outside of subscription.

// `just` operator is used to create an Observable that emits a particular item
// i.e. a Just operator converts an item into an Observable that emits that item.

let justObservableSource = Observable.just("This is just...")

justObservableSource.subscribe {
    print($0)
}

// `of` operator is used to create an observables array or an observable of individual type.
let ofObservable = Observable.of(1,2,3,4)

let ofObservable2 = Observable.of([1,2,3,4],[11,22,33,44])

// `from` operator creates an observable of individual type from an array of elements.

let fromObservable = Observable.from([1,2,3,4,5])

Source: https://medium.com/@priya_talreja/rxswift-observables-7809b474aab

#### RxSwift -> DisposeBag

A method that RxSwift uses for memory management.

// https://www.stepintoswift.com/rxswift-disposebag
****
### **Functional Reactive Programming**

Functional Reactive Programming (FRP) is a Programming Paradigm for reactive programming(or asynchronous dataflow programming) through making use of the tools of functional programming (e.g. map, reduce, filter). With FRP in Swift, we have the option to use tools like RxSwift and RxCocoa to build asynchronous reactive applications which can make for easier to maintain coder and cleaner code. FRP per-se was developed by Conal Elliott from Microsoft Research, *although his definition is quite strict with most modern so-called FRP not meeting his criteria in terms of requirements for use of denotations and continuous-time.* 

More loosely defined however Functional Reactive Programming is a programming paradigm which can be defined by the combination of the two concepts of Reactive Programming which focuses on asynchronous data streams which you can listen to and react to accordingly, and secondly Functional Programming, which emphasizes calculations via mathematical-style functions, immutability and expressiveness, and minimizes the use of variables and state.
****
### The Swift Combine Framework

The Swift team have now come up with what is essentially there own take on RxSwift which is called the `Combine` framwork.

The Combine framework provides a declarative Swift API for processing values over time. These values can represent many kinds of asynchronous events. Combine declares publishers to expose values that can change over time, and subscribers to receive those values from the publishers.

The Publisher protocol declares a type that can deliver a sequence of values over time. Publishers have operators to act on the values received from upstream publishers and republish them.

At the end of a chain of publishers, a Subscriber acts on elements as it receives them. Publishers only emit values when explicitly requested to do so by subscribers. This puts your subscriber code in control of how fast it receives events from the publishers it’s connected to.

Source: https://developer.apple.com/documentation/combine
****
### Explain the difference between Serial vs Concurrent

Tasks executed *serially* are executed one at a time while tasks that are executed *concurrently* may be executed at the same time.
****
### Spot the bug that occurs in the code:

<summary>Swift</summary>

```swift
class ViewController: UIViewController {
    @IBOutlet var alert: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame: CGRect = CGRect(x: 100, y: 100, width: 100, height: 50)
        self.alert = UILabel(frame: frame)
        self.alert.text = "Please wait..."
        self.view.addSubview(self.alert)
    }
    DispatchQueue.global(qos: .default).async {
        sleep(10)
        self.alert.text = "Waiting over"
    }
}
```

<summary>Objective-C</summary>

```objective-c
@interface MyCustomController : UIViewController
@property (strong, nonatomic) UILabel *alert;
@end

@implementation MyCustomController

- (void)viewDidLoad {
  CGRect frame = CGRectMake(100, 100, 100, 50);
  self.alert = [[UILabel alloc] initWithFrame:frame];
  self.alert.text = @"Please wait...";
  [self.view addSubview:self.alert];
  dispatch_async(
    dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),
    ^{
      sleep(10);
      self.alert.text = @"Waiting over";
    }
  );
}
```

<br>

All UI updates must be performed on the main thread. Global dispatch queues do not make any guarantees so code should be modified to run the UI update on the main thread. Here is the fix below:

<summary>Swift</summary>

```swift
DispatchQueue.global(qos: .default).async {
    sleep(10)
    DispatchQueue.main.async {
        self.alert.text = "Waiting over"
    }
}
```

<summary>Objective-C</summary>

```objective-c
dispatch_async(
dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),
^{
    sleep(10);
    dispatch_async(dispatch_get_main_queue(), ^{
        self.alert.text = @"Waiting over";
    });
});

```

Sometimes, this type of thread swithcing issues can cause problems, it's not always clear why. You may want to check whether your already on the main thread before 

```objective-c
#import <Foundation/Foundation.h>

@implementation NSObject (SomeSetOfExtensions)

-(void)runOnMainQueueWithoutDeadlocking:(void (^)(void))block
{
    if ([NSThread isMainThread]) {
        block();
    } else {
        dispatch_sync(dispatch_get_main_queue(), block);
    }
}

@end
```

```swift
public extension UIView {
    // MARK:- Threading
    
    /// Run a block of code on the main thread and switch to main if on another thread
    class func runOnMainThread(block: () -> ()) {
        if Thread.isMainThread {
            block()
            return
        }
        DispatchQueue.main.sync {
            block()
        }
    }
```

****

## Unit Testing / UI Testing

### What is the purpose of unit/UI testing? What are the benefits?

Unit/UI testing are the basic of test-driven development. This development approach allows you to codify requirements for your code before you implement it. Unit tests are important to make sure that code meets its design and requirements and behaves as expected. Parts of the program are segregated and tested to ensure that individual parts are working correctly.
****
## View / Storyboard

### What is the difference between viewDidLoad and viewDidAppear? Which should you use to load data from a remote server to display in the view?

viewDidLoad is only called when the view is loaded (after loadView is called). viewDidAppear, on the other hand, is called everytime the view appears on the device.

If the data is static for the most part, it can be loaded in viewDidLoad and cached. But if the data is dynamic and likely to change often, it is preferrable to use viewDidAppear. In both instances, data should be loaded asynchronously on a background thread to avoid blocking the UI.
****
### What is the difference between frame and bound of a UIView?

The *frame* of a UIView is the region relative to the superview it is contained within while the *bounds* of a UIView is the region relative to its own coordinate system.

Exapanding on these properties further: `frame` refers to a view's location and size using the parent view's coordinate system and it's thus important for placing the view in the parent. Whereas `bounds` means a view's location and size using its own coordinate system, and is important for placing the view's content or subviews within itself.
****
### What is the reuseIdentifier for?

The *reuseIdentifier* indicates that cells for a UITableView (or UICollectionView) can be reused. UITableView maintains an internal cache of UITableViewCell with the appropriate identifier and allows them to be reused when dequeueForCellWithReuseIdentifier is called. As a result, this increases performance of UITableView since a new view does not have to be created for a cell.
****
### What is Auto Layout?

Auto Layout is used to dynamically calculate the size and position of views based on constraints.

Auto Layout defines your user interface using a series of constraints. Constraints typically represent a relationship between two views. Auto Layout then calculates the size and location of each view based on these constraints. This produces layouts that dynamically respond to both internal and external changes.

For example, you can constrain a button so that it is horizontally centered with an Image view and so that the button’s top edge always remains 8 points below the image’s bottom. If the image view’s size or position changes, the button’s position automatically adjusts to match.

Traditionally, apps laid out their user interface by programmatically setting the frame for each view in a view hierarchy. The frame defined the view’s origin, height, and width in the superview’s coordinate system. However, whilst this could give a greater level of precise control in some cases, it involves having to manage all the elements of the layout, instead one can let auto layout do a lot of the heavy lifting for you. 

Source: https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html

****
# Algorithm Resources

#### [EKAlgorithm](https://github.com/EvgenyKarkan/EKAlgorithms): Algorithm and data structures in Objc

#### [swift-algorithm-club](https://github.com/raywenderlich/swift-algorithm-club): Algorithm and data structures in Swift

# Contributing
****
#### There's a typo / an incorrect answer to one of your questions

Great! Creating an issue will let me know what changes should be made. You can even making the changes yourself and make a pull request which will expedite the process!
****
#### Requesting questions to be answered and topics

If you open an issue, I would be happy to go ahead and add the question with the appropriate answer when I get to it!
****
# Thank You

#### Contributors

- onthecodePath
- Sergtsaeb
- StephenClarkApps
