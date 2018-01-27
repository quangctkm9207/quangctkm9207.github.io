---
layout: post
title: Things to do before coding
comments: true
---
![](https://images.unsplash.com/photo-1448932284983-0c7b152eba33?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=71bdfa19f9919632dca4f1bcaa66778a&auto=format&fit=crop&w=1350&q=80)  

Many people think that programmers spend all their time in front of computers and write codes, and coding is their main and only task. Actually, writing codes only account for a small percentage amount in a programmer's whole professional lifetime. Other tasks like designing, code reviewing, researching, or discussing with customers and team members usually takes most of their time.

Besides, junior developers tend to jump directly to write codes when having an idea or getting a requirement. It is true for me and many other developers I have met. When building my app several years ago, I started implement its feature as soon as it just flashed in my head. And if anything did not go as I expected, for instance an error occurred, I tried to change my code a little bit and see if it worked. So, it resulted in wasting a lot of time for debugging and fixing bugs. Besides, my projects eventually contained all spaghetti codes which did not follow any rules. So, how to maintain and add more features later? I have no idea. 

In contrast, experienced developers spends much less time for coding but produce well-tested, readable, and maintainable codes. The reason is that they have done other earlier important tasks. If you are a fresh out-of-collage or junior developer, you might have a chance to work in a team which is lead and managed by seniors. They definitely will show you that before writing codes, we need to get these followings completed first. If not, you might learn from books, courses, and your experiences.

## Clarify requirements
> "The final goal of software development is to translate user needs to software product."
> _ Paulo Caroli

Software development activity includes preparing a design, coding, and fixing bugs but finally it needs to create a product which matches with all user requirements. Imagine that you are really happy that you just built a fancy, bug-free, high-performance features after several weeks, but when bringing it out to customers, they said that these are not what they want. "OK, well", you should say. Keep in mind to treat customers in good manner even in the toughest situations. You now realize that you spent time to add codes which does not play any role rather than just creating bugs and adding parts to be maintained in the future.   

You might said that at least you gained experience and skills from building these no-one-use features. Yes, you did. But your time and energy are limited, why not carefully check requirements before jumping to coding, so you could gain both experience and useful things which make customers satisfied. If you work in a team, it is even more important because it might take time and resource of whole team, not just an individual. 

In every project, firstly you all need to answer the question "WHAT". 

**What are we going to build?**

To answer them fully and clearly. we should go through these steps. 

* Make a detailed list of all features and requirements
* Invite all related parties or members to discuss about it until everyone agrees about and understands it 
* Finally, it is better to keep them in official documents like an 'immutable object'. In case that it needs to be modified, make sure all 'observers' aware about changes.

## Have a detailed design
We have already answered the question "WHAT" clearly after clarifying requirements. It is a good sight and let's move on the question "HOW".  

![](https://image.slidesharecdn.com/softwarearchitecturevsdesign-141212031751-conversion-gate02/95/software-architecture-vs-design-28-638.jpg?cb=1418354450)  

**How are we going to build it?**

In construction, if we are going to build a house, we need to design it first. In software, we also need to prepare designs for whole architecture, classes, routines, and other components. How much details in our design depends on many factors such as project size, developer experience, and other constraints. If you work in a team, your team leader or chief architect will know how to handle it and prepare these things. Even, if you work in your personal projects no matter its size is small or big, you should design it first. Never done that, let's learn and practice. You should choose a proper architect, sketch main classes and define how they communicate to each other, and you can go in more details by defines class's properties and routines. 

Design helps us to build a robust software smoothly and predictably. Also, A bug you find in design costs you much cheaper than you find it when coding.

## Decide a development process
To achieve our goals in shortest time with efficient resource usage, a good software development process should be applied. Project development model and methodologies might be chosen before because the company or team has been using it for many earlier projects. If not, it is time to choose a appropriate flow for your team and make sure all team members are aware of and understand it fully. For new developers just joining in, seniors in team should invest time to guide them to catch up with the existing practices.

## Select right frameworks and libraries
Choosing good tools can save developers much time and energy. If the project you are going to build is similar to what you have done, it gets easy. For example, you already know which libraries you are going to use to handle networking, database, ui stuffs, and where to find them. 

In case you are going to work on a project which uses a new programming language or requires new techniques, spending time to research about existing frameworks and libraries to be used is a right move. You should not jump to coding immediately, build everything from scratch or look for libraries to use while coding. Planning everything first helps you handle your work smoothly and avoid unexpected things.

## Define a consistent coding convention
Building software is a social activity, and we are going to write codes for people first, computers second. You are not going to write codes once and forget about it right after it runs but spend much more time for maintenance. The developer who fix bugs or add more features into your codes might be you or another person. In either case, we should write readable codes first.  

One of the important factors to understand codes easily is to have a consistent convention through out whole project. It can not be achieved during coding because usually every developer has his/her own coding style. Besides, fresh developers has not built a good practice yet which results in spaghetti naming convention, inconsistent indentation, line wrapping, and etc. That adds complexity and difficulty to follow codes.  

Therefore, in preparation step, a team leader should prepare documentation which define a consistent convention in which the rules of indentation, naming, line wrapping, commenting, and others are declared clearly. Besides, it is better to have all members to agree about that. In case you work in a solo project, you should choose your own style which might match with a popular one and make sure to declare it clearly in README file or link to an external document, so other developers or maintainers find easy to read your codes and follow this convention to change or update your work.


## Summary
Writing codes might be easy, but writing readable and clean codes is not. Moreover, building robust software which are useful, well-tested and maintainable by using resources efficiently is extremely hard. It is not just coding, like building a house requires planning, designing, and other good practices. Building skills for these things takes time, tears, and a lot of failures, but it is much enjoyable if you love what you do.

Image source:
* https://unsplash.com/photos/xxeAftHHq6E
* https://www.slideshare.net/arslantumbin/software-architecture-vs-design