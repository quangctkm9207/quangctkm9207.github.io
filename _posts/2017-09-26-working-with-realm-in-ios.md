---
layout: post
title: Working with Realm in iOS
comments: true
---
## :hatching_chick: Introduction
From Realm home page:
> Realm Mobile Database is an alternative to SQLite and Core Data. Thanks to its zero-copy design, Realm Mobile Database is much faster than an ORM, and often faster than raw SQLite

From my own view point:
> Realm is a modern cross-platform mobile database which is easy to integrate and concise to write codes.

---
## :hatched_chick: Installation
The simplest way to integrate Swift is via CocoaPod.
```
pod 'RealmSwift'
```
If you look for others and full installation guide, please visit  [here](https://realm.io/docs/swift/latest/#installation).

---
## :baby_chick: Usage
### I. Realm Object
**Basic**  
Defining a Realm object is quite straight-forward as a normal Swift class. Just pay attention that it need to extend `Object` class and use `dynamic` keyword for its properties.
```swift
import RealmSwift
class Student: Object{
  dynamic var firstName: String = ""
  dynamic var lastName: String = ""
}
```

**Primary Key**  
In case of using `primary key`, it requires to override `primaryKey()` function as below.
```swift
import RealmSwift
class Student: Object{
  dynamic var id: Int = -1
  dynamic var firstName: String = ""
  dynamic var lastName: String = ""
  override class func primaryKey() -> String? {
    return "id"
  }
}
```
### II. Operation
#### 1. Create
**_Basic_**
```swift
// Get the default Realm
let realm = try! Realm()
// Add new item
try! realm.write {
  realm.add(student)
}
```
**_Auto-increment_**  
In SQL, we can define an 'auto-increment' field which will be increased by one automatically every time a new row is added. This property, however, is not introduced in Realm. In case we need an auto-increment id in Realm object, we have to handle it by ourselves manually, but it is trivial.
```swift
// Generate auto-increment id manually
private func incrementID() -> Int {
  return (uiRealm.objects(Student.self).max(ofProperty: "id") as Int? ?? 0) + 1
}
// When adding new item
try! realm.write {
  student.id = incrementID()
  realm.add(student)
}
```
#### 2. Query
As always, querying data is the most frequent operation to a database. Compared with Core Data, Realm provides really concise and simple APIs.    

**_Find all objects_**  
Fetch all objects with just one line of codes.
```swift
let allStudents:[Student] = Array(realm.objects(Student.self))
```
**_Use `primary key`_**  
Find an object by its primary key.
```swift
let student = realm.object(ofType: Student.self, forPrimaryKey: id)
```
**_Use `NSPredicate`_**  
[NSPredicate](https://developer.apple.com/documentation/foundation/nspredicate) is a Foundation class that specifies how data should be fetched or filtered. It is used extensively in Apple framework system to filter in-memory data (stored in collections), or to fetch data from Core Data, SQLite.  
So, Realm supports querying data by `NSPredicate` too which makes iOS developer adapt easily.
A simple query using `NSPredicate` looks like the following.
```swift
let predicate = NSPredicate(format: "firstName BEGINSWITH [c]%@", inputText)
let students = try Realm().objects(Student.self).filter(predicate).sorted("firstName", ascending: true)
```
You might need this useful [NSPredicate Cheatsheet](https://academy.realm.io/posts/nspredicate-cheatsheet/) when building data queries.
#### 3. Update
As other `write` operations in Realm, `update` should be performed in `realm.write` block, otherwise, an exception will be thrown.
```swift
// Retrieve the object which will be updated.
// e.g, the 1st student information needs to be updated.
student = realm.objects(Student.self).first

// Update
try! realm.write {
  student.first = "new first name"
  student.last = "new last name"
}
```
#### 4. Delete
**_Delete an object_**
```swift
try! realm.write {
  realm.delete(student)
}
```
**_Delete all objects_**
```swift
try! realm.write {
  realm.deleteAll()
}
```

A full and comprehensive documentation of Realm Swift can be found at [Realm homepage](https://realm.io/docs/swift/latest/). :ocean:
