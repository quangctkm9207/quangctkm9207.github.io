---
layout: post
title: Java annotation processing
comments: true
---
In [my previous article]({{ site.newbaseurl }}2017/11/26/builing-things-with-java-reflection-and-annotation-processing/), Java annotation processing is already introduced as a technique that is utilized to build [PrefPin library](https://github.com/quangctkm9207/prefpin). In this post, I would like to introduce this powerful technique in general.

## Definition and purpose
It is a handy and powerful technique for generating additional source files during compilation.
* Source files can be any type of files (Java files, documentation, resources, and etc).
* It can only be used to generate new files, not to change existing ones.

### Code generation process
In order to generate source codes in compilation time, Java SDK provides annotation processing API to execute process. The process is divided multiple rounds and each round includes the following steps.
 1. Compiler searches for the annotations.
 2. Compiler chooses annotation processor suited for these annotations.
 3. Each annotation processor is called on the corresponding sources.
 4. If any files are generated during this process, another round is started with the generated files as its input.
 5. This process completes when no new files are generated.

### Write our own processor
Above steps are executed using codes that we, developers, write using Java annotation processing API. Necessary components that we need to declare are annotations and annotation processors. As Java developer, you should be familiar with annotations which are declarations of Java components such as classes, fields, methods, or even other annotations. Annotation processor is totally new if you just get started to learn about annotation processing technique. It is a component which you will use to find annotated components, retrieve necessary information from them, and finally generate source files.

Applying annotation processing technique to generate source files includes below steps in term of writing actual codes.
* Define required @annotations and how it can be used.
* Write custom processors which extends `AbstractProcessor` class.
* In each processor
  * Filter corresponding annotations.
  * Verify the correctness of annotated elements and use `Messager` to show useful messages.
  * Retrieve all necessary information(i.e: class name, method name, argument type) which are used to generate source files.
  * Generate output files (by using `Filer`).

### Summary
I have just walked through introduction of the general concept, main components and steps in Java annotation processing. It is one of advanced techniques, and there are so many popular libraries and frameworks utilizing it as a powerful tool. To get control of it, you need to jump and dive into codes. Firstly, you can follow some tutorials out there and write a simple project to understand its more deeply. After that, you can check out annotation-processing-used libraries on Github and see how they built it and learn their good practices. At that time, you might have an idea to build your own project using this handy technique.

### Some useful libraries
The following libraries supports you to write codes easily when working with Java annotation processing API.
* [AutoService](https://github.com/google/auto/tree/master/service): Generates processor metadata file.
* [JavaPoet](https://github.com/square/javapoet): Generates `.java` source files.
