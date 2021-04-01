# Day 00

## Introduction

### What is dart?

Dart is a client-optimized language developed by Google to build apps on any platform. Currently dart is used mainly for its framework - Flutter. With Flutter one can write apps for Web, iOS, Android. This list will be appended by MacOS, Linux, and Windows by the end of 2021.

### Language specifications

Dart is an object-oriented, class-based language with C-style syntax, therefore if you are familiar with any of C-family programming languages, such as JavaScript, syntax should be familiar.

Before we start take a look at dart's [official documentation.](https://dart.dev/guides)

## Introduction to Dart.

Today we will practice some features that are present in dart.

Note: necessary information is gathered in Dart's [official documentation](https://dart.dev/guides/language/language-tour).

## 1. Function parameters

- Named parameters
- Optional parameters

### Named parameters

Named parameters are optional by default, but you could explicitly make them required.

To make a function, apply the following syntax:

void someFunction({bool bold, bool hidden}) {...}

To call a function, apply the following syntax:

someFunction(bold: true, hidden: false);

**Expected first function:**

int sum({int first, int second, int third, int fourth, int fifth}) {}

The function will return sum of all given integers.

**Expected second function:**

The same function as the first, but all the not given parameters should be initialized to 0.

### Optional parameters

In order to make optional parameters, apply the following syntax:

void someFunction(int firstParameter, int secondParameter, [int optionalParameter]) {...}

To call a function, apply the following syntax:

someFunction(1, 2);

someFunction(1, 2, 3);

Optional parameters **must** come after the required parameters.

**Expected function:**

List<int> fromSmallToLarge(int start, int end, [int step]) {...}

The function must iterate from "start" to "end" with given step and put the numbers to list. Step should be 1 by default..

### 2**. Ternary operators**

Default syntax of ternary operators:

condition ? value for true condition : value for false condition, i.e.

bool four_greater_than_five = 4 > 5 ? true : false;

Note: the same could be achieved with simple if and else, but this approach reduces code length.

**Expected first function:**

int max(int first, int second, int third) {...}

The function must return the maximum of three numbers

### **3. Classes**

To have a grasp of what the classes and their foundation are, have a look at ["How to explain OOP concept to a 6 years old"](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/).

Syntax of making a class is quite easy to grasp.

Classes have 2 main attributes: fields and methods.

Fields are the variable that are present within the class, for instance, if look at the class Point:

```
class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    // There's a better way to do this, stay tuned.
    this.x = x;
    this.y = y;
  }
}
```

The class has 2 fields. It can be useful to store the information within the class.

Methods of the class are essential to interact with the class, ideally you should not be able to directly alter the fields of the methods, but to interact with them through class's methods, i.e. In the sims game, you should not be able to change person's hunger directly, but you should be able to feed them to lessen the hunger.

One of the special methods of the class is constructor. Constructors are the methods that create objects from classes.

Have a read at what getters and setters do in the official [documentation](https://dart.dev/guides/language/language-tour#methods).

```
var p = Point(2, 2);

// Get the value of y.
assert(p.y == 2);

// Invoke distanceTo() on p.
double distance = p.distanceTo(Point(4, 4));
```

Excepted exercise: make a class named Student that has fields of

- name
- cityOfOrigin
- age
- height that can be initialized from a constructor. All the arguments must be required.

Please make getters and setters for all the fields as well.

Expected exercise: make a class for Country with fields of:

- name
- capital
- language
- population
- yearOfIndependence

Constructor:

- name - required
- capital - required
- language - required
- population - required
- yearOfIndependence - optional

Please see the [documentation](https://dart.dev/guides/language/language-tour#classes) for examples.

### 4. Getters and setters

To work with objects' fields, either getting some information, or changing it, we have to use methods, as it is not a good practice to directly change object's fields, same example with hunger, you should not change person's hunger level, but feed them instead. Since it is common to set or get fields' values, it is common to put getters and setters in the OOP.

Syntax of the getters and setters:

```
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => this.left + this.width;
  set right(double value) => this.left = value - this.width;
  double get bottom => this.top + this.height;
  set bottom(double value) => this.top = value - this.height;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);
}
```

Expected functions: make a "Circle" class, its fields:

- x, y coordinates
- radius
- perimeter
- area
- getters for all of them
- setter for coordinates and x, y coordinates

### 5. Cascade notation

Cascade notation is useful for reducing code length.

Expected exercise: make a class for Country with fields of:

- name
- capital
- language
- population
- yearOfIndependence

Constructor:

- empty

Make a main function where you create an object of Country class and initialize all the fields via cascade notation.

### 6. Sound null safety

By default one cannot assign the null value to a variable, but this can be negated by null-safety technique of dart. To see how it is done, [visit the dart explanation](https://dart.dev/null-safety).

Expected exercise: make a class University, with fields:

- name
- city
- address
- ranking - not all the universities have ranking

Constructor:

- empty

Please make getters and setter for all the fields as well.

### 7. Generics

While making some class, sometimes you want to make it possible for the class to store various data structures, for instance, you could store strings, integers in the array. To make it happen, dart allows you to use Generics. For the code syntax, [visit the official documentation.](https://dart.dev/guides/language/language-tour#why-use-generics)

Expected exercise: Create Linked list using arrays, fields to implement:

- array
- size
- head of the linked list
- end of the linked list

Methods to implement:

- push_back
- pop_back
- push_front
- pop_front

# **OOP**

### 1. Constructors

Apart from the standard constructor that is similar to:

```
class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    // There's a better way to do this, stay tuned.
    this.x = x;
    this.y = y;
  }
}
```

You could do the same with less code, the syntax is as follows:

```
class Point {
  double x = 0;
  double y = 0;

  Point(this.x, double y);
}
```

Expected exercise: make a class for Country with fields of:

- name
- capital
- language
- population
- yearOfIndependence

Constructor:

- name - required
- capital - required
- language - required
- population - required
- yearOfIndependence - optional

Please make getters and setters for all the fields as well.

### **2. Inheritance**

Classes can inherit other classes' methods and fields, by doing so, every public filed and method will be visible to the child class. It can be useful when some class is completely in the set of other class, and you don't want to copy all the code you wrote for superior class. If necessary, behavior of certain methods can be changed in the inferior class by "@override" command

```
class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }
  // ···
}

class SmartTelevision extends Television {
@override
void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }
  // ···
}
```

We know that every SmartTelevision is in the set of Televisions, therefore we can extend all the methods and fields of the Television class to the SmartTelevision class.

By writing @override, we are overriding the behavior of the parent class, so that it meets our needs, and if we wanna call the parent classes' method, we simply put "super." before the name of the method.

Expected class:
