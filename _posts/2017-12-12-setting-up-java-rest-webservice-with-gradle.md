---
layout: post
title: Java REST web service with Gradle
comments: true
---

In this blog post, we are just walking  through fundamental steps of developing and running a REST web service by using Java Servlet and Gradle build tool.

## REST
*What is REST?*

Basically, [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) stands for Representational State Transfer which is an architectural style based on HTTP protocol. REST concept is to separate the API structure into logical resources. HTTP methods (GET, POST, PUT, and DELETE) are used to operate with the resources.  
About RESTful API design, you can learn more about the guidelines via following articles.
* https://blog.mwaysolutions.com/2014/06/05/10-best-practices-for-better-restful-api/
* https://hackernoon.com/restful-api-designing-guidelines-the-best-practices-60e1d954e7c9

## Java Servlet
> A servlet is a Web component that is managed by a container and generates dynamic content.
Servlets are Java classes that are compiled to byte code that can be loaded dynamically into and run by a Java technology-enabled Web server or Servlet container.

Servlets run in a `servlet container` which handles the networking side.
So, they are usually used to implement web applications which can respond to a particular type of network request, such as HTTP request.  

So, we use it to build a web service which will run on an application server like Tomcat or Jetty.

## Get our hands dirty
It is time to **`show me your codes`**. All sample codes can be found at [Github](https://github.com/quangctkm9207/rest-webservice-gradle).
### Project structure
- Configuration file: It will reside under `yourRootModuleFolder/src/main/webapp/WEB-INF/web.xml`
- Java source codes: They are normally put under `yourRootModuleFolder/src/main/java/`

### Gradle plugins
- `WAR` plugin: It is used to build and generate `.war` file (WAR = Web application Archive) which includes JAR, JavaServer Pages, Java Servlets, XML, HTML, and other resource files. The `.war` file later will be deployed in web server.
```gradle
apply plugin: "war"
```
- [Gretty](https://github.com/akhikhl/gretty): A handy plugin to run web apps on embedded servlet container. It supports Tomcat and Jetty.

### Java REST framework
[Jersey](https://jersey.github.io/) simplifies REST web service development and abstracts low-level implementation details of the client-server communication.

### Build
- Test and build
```
./gradlew build
```
- Run web app:
```bash
./gradlew appRun
```
It is now successfully served under url `localhost:8080/api/notes`.
You can use a browser to check it out or you can test REST API using [Postman](https://www.getpostman.com/) which use can test both `GET` and `POST` APIs.

### Deployment
In development, we use `Gretty` plugin which automatically downloads web server and deploys web application for us. If we want to deploy in our production environment, we need to do it manually. Fortunately, it requires a few basic steps.  
While `Gretty` only supports `Tomcat` and `Jetty`, you can choose a suitable sever for your need from [this list of open-source web servers](https://java-source.net/open-source/web-servers). The following steps of deployment process are general but I use `Tomcat` and `Jetty` as examples.

  1. Download and install
      * [Tomcat](https://tomcat.apache.org/): [How to download and install Tomcat server](https://www.ntu.edu.sg/home/ehchua/programming/howto/Tomcat_HowTo.html).
      * [Jetty](http://www.eclipse.org/jetty/): [How to download and install Jetty server](https://www.eclipse.org/jetty/documentation/9.3.x/quick-start-getting-started.html).
  2. Copy `.war` file inside project's `build/` folder
  3. Paste it into `webapps/` folder of `tomcat` or `jetty`
  4. Run server. Go inside `bin/` folder of `tomcat` or `jetty` and execute either following script.
      * Tomcat: `$./catalina.sh`
      * Jetty: `$./jetty.sh start`
