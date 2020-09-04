---
layout: post
title: Add Swift Package Manager support for your existing iOS framework
comments: true
---

Swift Package Manager is a solution to manage the Swift framework dependencies from Apple.  
It supports server-side Swift project from Swift 3.0. 
For iOS, it supports from Swift 5.0 and Xcode 11.

One iOS open-source project that I have been working on already allows other developers to add its dependence using CocoaPods and Carthage. 
Recently, Swift Package Manger is becomming more popular among iOS developers, so adding its support is neccessary.

Fortunately, the process is straight-forward and simple.
You can just follow the following steps. 
1. Open your Terminal and go to your project directory.
2. Run the command "swift package init". It will create new neccessary folders and files in a structure that are required by Apple.
3. You only need to pay attention to 3 important things. "Sources/" folder, "Tests/" folder, and "Package.swift" file.
4. Move your main source code folder to new "Sources/" folder. For example, before my source codes were under "MaterialShowcase/", after that they are under "Sources/MaterialShowcase/".
5. Move your test code folfer to new "Tests/" folder. For example, before my test codes were under "MaterialShowcaseTests/", after that they are located at "Tests/MaterialShowcaseTests/".
6. Change the information in "Package.swift" file if that is neccessary.
7. Create a new commit
7. Create a new tag or move the previous tag to this latest commit
8. Push all the changes to GitHub repository

From other projects, now you can add your framework using Swift Package Manager.
