---
layout: post
title: Visit Xamarin town
comments: true
---
I have been building native mobile apps for a while and I am so happy with it. 
One of the reason is that it brings the best experience to users.

Recently, in order to develop cross-platform projects running on Android, iOS, and Windows,
I started using Xamarin, and it is quite impressive so far. 

## Take a glance
Firstly, about the platform language, C# is a friendly and easy-to-learn language. Especially, if you are familiar with Java, it will be much easier to start with because of their similarities.

Secondly, Visual Studio does a really good job. It supports both Windows and Mac. Besides, I really like Android Studio and XCode overall, but Visual Studio are designed better as I think because of its speed and especially user experience. 

About dependency manager, we have Maven Repository for Android, CocoaPods and Carthage for iOS. For .NET development in common, and Xamarin development especially, Nuget comes into the place and it is integrated directly into Visual Studio. I really love that.

Source code organization in Xamarin is simillar to .NET projects, it is quite flexible as I think.

In Xamarin, there are several frameworks you should pay attention to, and they are divided by [platforms](https://docs.microsoft.com/en-us/xamarin/). If you use Xamarin to develop Android, it is the best to use Xamarin.Android, for iOS or Mac you should use its corresponding framework. These are usually utilized by C# programmers who wants to use their existing skills to build mobile apps. If you are a native mobile developer, it is not a good option. The thing that attract me to come to Xamarin town is [Xamarin.Forms](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/) which helps us to build  apps running on Android, iOS, and Windows.

## Get started
Microsoft have done a good job that brings Xamarin closer to developers by providing comprehensive documentation, training courses, examples, and community. 

In my case, to get familliar with Xamarin, I tried to learn from several resources. Firstly, I read documentation on Xamarin homepage to wrap my head around its base structure, especially how Xamarin organizes codes and resources for each platform (Android, iOS, and Windows).

After that, I checked out several courses from [Microsoft](https://mva.microsoft.com/search/SearchResults.aspx#!q=Xamarin&lang=1033). I took courses about Xamarin.Forms UI (XAML and Data Binding), and common ways of data persistence (Preferences and SQLite). If you have a time, you can join in the [Xamarin university](https://university.xamarin.com/).

Learning by doing seems to be the most effective way to me, so I followed courses to build both sample apps and my own apps. It is interesting to see them running on multiple OS just by writing codes once. It brought me good experiences. 

If you are a native mobile developer for a while, it is really easy to pick up and get familliar with Xamarin because you already have the understanding about mobile app's concepts and structures. 

## Resources
On the journey of exploring Xamarin town to get used to it, I have just marked important places I visisted as below. I hope that will be useful for you too if you want to start building apps with Xamarin. 

### General learning resources
* [Documentation](https://docs.microsoft.com/en-us/xamarin/cross-platform/)
* [Microsoft courses](https://mva.microsoft.com/search/SearchResults.aspx#!q=Xamarin&lang=1033)
* [Xamarin university](https://university.xamarin.com/)
* [Xamarin forums](https://forums.xamarin.com/discussion/88749/button-image-property-not-scaling)

### Xamarin Forms
* [References](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/)
* [Samples](https://developer.xamarin.com/samples/xamarin-forms/all/)
* [DependencyService](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/app-fundamentals/dependency-service/introduction)
* [Resource Dictionaries](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/xaml/resource-dictionaries)

### Architecture
* Xamarin architecture (MVVM): https://blogs.msdn.microsoft.com/dotnet/2017/08/25/xamarin-patterns/
* Xamarin architecture (MVP):
    * https://blog.kloud.com.au/2018/01/17/xamarin-application-architecture/
    * https://willowtreeapps.com/ideas/model-view-presenter-mvp-an-alternative-to-mvvm-for-cross-platform-xamarin

### Unit testing
* Unit testing: http://jesseliberty.com/2015/09/19/52-weeks-of-xamarin-week-6-starting-xunit-testing/

### Custom view
* https://xamarinhelp.com/xamarin-forms-user-control/
* https://stackoverflow.com/questions/32606513/binding-a-custom-view-in-xamarin-forms

### Others
* [Adding UWP app to Xamarin](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/platform/windows/installation/)

## Libraries
* Preferences: [Settings Plugin](https://github.com/jamesmontemagno/SettingsPlugin)
* SQLite: [SQLite.Net](https://github.com/praeclarum/sqlite-net)
* Localization: [Multilingual Plugin](https://github.com/CrossGeeks/MultilingualPlugin)
* [Local notification](https://github.com/edsnider/LocalNotificationsPlugin)
* TCP/IP Communication: [Sockets For PCL](https://github.com/rdavisau/sockets-for-pcl)
