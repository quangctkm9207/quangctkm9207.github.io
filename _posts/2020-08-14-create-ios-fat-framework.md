---
layout: post
title: Create a fat iOS framework running on both simulators and real devices
comments: true
---

If you are an iOS developer who are building a framework/library for other developers to use.
There are two main options to distribute your work for others.
In case that you work is an open-source project, the best way is to use one of the iOS distribution platfoms(CocoaPods, Carthage, or Swift Package Manager).
The second option is to build the binary framework (.framework file), and this is mainly applied for companies that wants to distribute their private-code APIs for third-party developers.

In the second option, that is quite simple. 
You just build your project, grasp the .framework file and share it with outside developers.
However, because of recent changes, so you can not easily create a framework that runs on both iOS simulator and real device.
So, to create that binary framework, just please follow the below steps.

1) Build YourCustomFramework target for iOS simulator and extract framework from products folder on your desktop.

Xcode⁩ ▸ ⁨DerivedData⁩ ▸ ⁨Your Project ▸ ⁨Build⁩ ▸ ⁨Products⁩ ▸ ⁨Release-iphonesimulator

2) Build YourCustomFramework target for Generic iOS Device and extract framework from products folder on your desktop.

Xcode⁩ ▸ ⁨DerivedData⁩ ▸ ⁨Your Project ▸ ⁨Build⁩ ▸ ⁨Products⁩ ▸ ⁨Release-iphoneos⁩

3) Rename the simulator generated framework to YourCustomFramework-sim.framework so that it is distinguishable later.

4) Use the lipo command to combine both binaries into a single fat binary file. (cd to your desktop or wherever your custom framework file is located)

$lipo -create ./YourCustomFramework-sim.framework/YourCustomFramework ./YourCustomFramework.framework/YourCustomFramework -output ./YourCustomFramework
5) Copy YourCustomFramework binary file created in above step and replace it with the binary in YourCustomFramework.framework folder.

6) From folder

YourCustomFramework-sim.framework/Modules/YourCustomFramework.swiftmodule/
copy all of the modules and paste them to

YourCustomFramework.framework/Modules/YourCustomFramework.swiftmodule/

### References
This is originally from [willhess's answer on StackOverflow](https://stackoverflow.com/a/58192079/3415319).

