---
layout: post
title: OO Design Patterns
comments: true
---
> Design patterns in OOP(Object Oriented Programming) world.

### What is a design pattern?

A design patterns is a repeatable solution to a commonly occurring problem in software design.
It serves as a guideline or template for how to solve a problem but not a finished design
that can be transformed directly into code.

### What benefits does design patterns bring?

* Speed up the development process by providing tested, proven development paradigms.
* Provide general solutions, documented in a format that doesn't require specifics ties to
a particle problem.
* Allows developers to communicate using well-known, well understood names in software development.  

### What types of design patterns do we have?

#### Creational design patterns
These patterns are templates for how to **instantiate object**, and can be divided into class-creation patterns and object-creation patterns.
  * Abstract Factory
  * Prototype
  * Builder
  * Factory Method
  * Singleton  

#### Structural design patterns
Structural design patterns are focusing on **class and object composition**, or in other words, relationship between entities. Structural class-creation patterns use inheritance
to compose interfaces. Meanwhile, structural object-patterns define ways to compose objects to obtain new functionality.
  * Adapter
  * Bridge
  * Composite
  * Decorator
  * Facade
  * Flyweight
  * Proxy  

#### Behavior design patterns
These design patterns are all about **objects communication**.They identify common communication patterns between objects and realize these patterns.
By doing so, these patterns increase flexibility in carrying out this communication.
  * Chain of Responsibility
  * Command
  * Interpreter
  * Iterator
  * Mediator
  * Memento
  * Observer
  * State
  * Strategy
  * Template Method
  * Visitor  

### What should we care when applying a design pattern?

* As other things in OO designs, there are always trade-offs. There is no design pattern for all problems,
even in some specific situations, just follow basic OO principles is better than apply a complex design pattern.  
* They are guideline to problems, so they lay down as an abstract layer. We should not force to use them in specific ways. It should be flexible depends on specific situations.
