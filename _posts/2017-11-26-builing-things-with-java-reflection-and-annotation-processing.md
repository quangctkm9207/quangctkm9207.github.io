---
layout: post
title: Building things with Java Reflection and Annotation Processing
comments: true
---
Java `Reflection` and `Annotation Processing` are two common techniques that some of your daily-use libraries utilizes to bring great or 'magic' features.
[JUnit](http://junit.org/junit4/), [Project Lombok](https://projectlombok.org/), [ButterKnife](http://jakewharton.github.io/butterknife/), [Dagger](https://google.github.io/dagger/), [Retrofit](http://square.github.io/retrofit/), and recently announced [Room](https://developer.android.com/topic/libraries/architecture/room.html) are just a few of them.
If you want to dig deeply into any of your favorite libraries, understanding about Java reflection and annotation processing is a must-have.

There are many articles out there describing about two techniques generally and giving really useful examples along to wrap our head into these advanced API in Java.

In this post, they are gonna be introduced by walking through my process of building a library which solves a real-world issue for my own need.

## Requirements
If you are an Android developer, you might use ButterKnife in some projects, even not you might have seen or heard about it somewhere. It is awesome that it comes to save my time from writing boiler-plate codes to bind Android views.
Preference, unfortunately, is slightly different to views and it is not included in the library.

So, I still have to write these following codes that I don't like.
```java
public class SettingsFragment extends PreferenceFragment {

  EditTextPreference namePreference;

  @Override public void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    namePreference = (EditTextPreference) findPreference(getString(R.string.pref_name_key));
    namePreference.setSummary("Uwoah! A summary.");

    namePreference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
      @Override public boolean onPreferenceClick(Preference preference) {
        // Do anything you want
        return true;
      }
    });

    namePreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
      @Override public boolean onPreferenceChange(Preference preference, Object newValue) {
        // Again, do anything you want
        return true;
      }
    });
  }
}
```

Here is what I prefer.
```java
public class SettingsFragment extends PreferenceFragment {

  @BindPref(R.string.pref_name_key)
  EditTextPreference namePreference;

  @Override public void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    namePreference.setSummary("Uwoah! A summary.");
  }

  @OnPrefClick(R.string.pref_name_key)
  void onNameClick(Preference preference) {
    // Do anything you want
  }

  @OnPrefChange(R.string.pref_name_key)
  void onNameChange(Preference preference, Object newValue) {
    // Again, do anything you want
  }
}
```

So, I decided to build a small library to serve my own need. I named it **PrefPin** and its source code can be found on [Github](https://github.com/quangctkm9207/prefpin).

After getting clear requirements, firstly, I defined 3 necessary annotations @BindPref, @OnPrefClick, and @OnPrefChange. **The major challenge is that how to bind annotated fields or methods.**

## First approach: Reflection
Just a short recall of definition.
> Reflection is a feature to inspect Java components (classes, fields, methods, annotations, etc) at the runtime, without knowing their names at compile time.  
It is commonly used by programs which require the ability to examine or modify behavior of applications running in the Java virtual machine.

The above words sound abstract, simply in this case, it works as below:
- In PreferenceFragment, we will annotate fields or methods with @BindPref, @OnPrefClick or @OnPrefChange.
- Java reflection will be used to look for those fields and methods.
- Then, Java reflection will inject actual codes to bind them to PreferenceFragment: `findPreference()`, `setOnPreferenceClickListener()`, `setOnPreferenceChangeListener()`.
- To know where to inject these codes, a simple API is called `PrefPin.bind()`. The idea is from ButterKnife when you call `ButterKnife.bind()`.

That is what I designed the library by using Java reflection. Detailed implementation can be found at Github repository, please checkout [branch 0.x](https://github.com/quangctkm9207/prefpin/tree/0.x).

Reflection technique is simple and straightforward, but we should remember that Preference binding process will be executed at the runtime. It works fine but it would be easy for error-checking and gain a better performance if the process is done in compile time. For that's in mind, I got my hand dirty again with the second approach.

## Second approach: Annotation processing
Annotation processing APIs is more complicated than reflection but it's worth.
> A handy and powerful technique for generating additional source files during compilation.
>  - Source files can be any type of files (Java files, documentation, resources, and etc).
>  - It can only be used to generate new files, not to change existing ones.

What it does is similar to ButterKnife internal operations.
- During compilation, an annotation processor will look through codes to find annotated elements. In PrefPin library, these elements are fields and methods annotated by @BindPref, @OnPrefClick, and @OnPrefChange.
- From that, it will generate Java source files which names have format such as `SettingsFragment_PrefBinding`. These generated files can be found at `app/build/generated/source/apt/`.
- These files will contain the actual binding codes. It should look like.
```java
public class SettingsFragment_PrefBinding {
    @UiThread
    public SettingsFragment_PrefBinding(final SettingsFragment target) {
        target.editPreference = (EditTextPreference) target.findPreference(target.getString(2131427366));

        target.findPreference(target.getString(2131427358)).setOnPreferenceClickListener(new OnPreferenceClickListener(){
            @Override public boolean onPreferenceClick(Preference preference) {
                target.onNameClick(preference);
                return true;
            }
        });

        target.findPreference(target.getString(2131427366)).setOnPreferenceChangeListener(new OnPreferenceChangeListener(){
            @Override public boolean onPreferenceChange(Preference preference, Object newValue) {
                target.onNameChange(preference, newValue);
                return true;
            }
        });
    }
}
```
- Finally, to inject the binding, we need to initialize an object of `SettingsFragment_PrefBinding` inside `SettingsFragment` itself. It can be done as in reflection-utilized way by calling `PrefPin.bind(this)`.

## Conclusion
Finally, I got my library working and I enjoyed using it in my Android app. Two powerful techniques are utilized to approach the problem in two different ways, but they provide the same APIs in usage view. You can learn more about Java reflection and annotation processing by reading other useful articles, and more importantly, by try implementing it by yourself. It's fun and if you are an app developer, you will get the insight of an library developer's view.

You can use my tiny PrefPin library as an example to learn about these powerful techniques or as a piece included in your project to eliminate boiler-plate codes.

## Some resources for basic understanding

### Reflection
* http://www.oracle.com/technetwork/articles/java/javareflection-1536171.html
* http://tutorials.jenkov.com/java-reflection/index.html

### Annotation Processing
* http://www.baeldung.com/java-annotation-processing-builder
* http://hannesdorfmann.com/annotation-processing/annotationprocessing101
