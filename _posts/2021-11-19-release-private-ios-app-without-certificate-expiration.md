---
layout: post
title: How to release a private iOS app without worrying about certificate expiration
comments: true
---

iOS apps are usually distributed via App Store, so anyone can download them.
In some cases, the developers limit the countries or areas in which the app is available.
But how about many private apps which are developed and intended to be used for specific customers on specific devices.
These cases usually are applied to B2B (Business-To-Business) apps.

There are several installation and distribution options that are fairly simple.
1. Install directly the app on the intended devices (using XCode, plug the device, and press "Run")
2. Release it as a beta version via TestFlight.
3. Build an Ad-hoc version (.ipa file) and distribute it via some free services (I usually use DeployGate)


There are several downsides to the above options.
* The 1st option (direct installation) means that the customers need to send over the device to your office.
* The 2nd and 3rd options require the customers to provide UUID of the devices they want to run the app on.
* Important: All of them have an expiry date. TestFlight has a maximum of 90 days. The two other methods depend on certificate expiration, maximum 1 year.

That is so inconvenient if the app is intended for long-time usage (several years), and might be installed on new devices in the near future. Either the app is expired or there is a need to add new device UUIDs, you need to create a new build and distribute it again. 

Then, there is another solution to this problem: Distribute privately to a specific user or organization on App Store. 
In many cases, the customer does not have an organization ID (no Apple Business account), so you can generate Redeem Codes to your own company/organization, and then just send them a code to install.

Here are the steps.
1. If your company does not have an Apple Business account yet, head over [here](https://business.apple.com/) to create one. It might take time for setting up and verification. But it is worth it.
2. Create a new app on App Store Connect and make sure to choose "Private - Available as a custom app..." in App Distribution Methods. And input your organization ID and name from the Business account you created in the above step.
3. Complete all similar steps on App Store Connect as you prepare to release a public app and then "Submit for review".
4. The review process will be the same as a public app.
5. When the app is approved by Apple Review team, the app will be available for download. However, you can not find it on App Store because it is distributed privately to a specific organization (your own organization).
6. Now, you can log in to [Apple Business Account](https://business.apple.com/) and see the app appearing under "Custom Apps".
7. From that, you can generate Redeem Codes via the "Buy Licenses" options. Yeah, you buy your own app's licenses from your own company. You can generate as many Redeem Codes you want.
8. You just send the code to the customers who need to install the apps.


The downside of this option is that it takes a longer time and is more complicated.
You need to create Apple Business account and need to walk through Apple Review process for each app as a normal public app. However, it is worth it. When it is done, you do not need to care about the certificate expiration and new device installation.