## person

### Object Oriented Programming

Dart supports object oriented programming which Flutter framework relies on. Classes have 2 main concepts: attributes and methods. Attributes are needed to store various data in the instance of Class and methods are functions, which can use Class attributes for various manipulations. To understand OOP and its difference from functional programming visit [this website](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/).

Here is an example of the Class in Dart:

```dart
class Point {
  double x = 0; // attribute initialized to 0
  double y = 0; // attribute initialized to 0
}
```

**Point** - name of the class, **x, y** - are fields

What if one wants to create a Point with different x and y? To do that one needs to declare **_Constructor_** - a function that specifies how to create object of a class given a set of parameters.

```dart
class Point {
  double x = 0; // field
  double y = 0; // field

  Point(double x, double y) { //Constructor
    this.x = x; // initializing fields
    this.y = y; // In geometry, points must have x and y coordinates
  }
}
```

In Dart one can also use Constructor declaration of type **_Constructor(param1, param2...);_** thus saving a few lines of code if all one wants to do is to pass arguments to values.

```dart
class Point {
  double x = 0;
  double y = 0;

  Point(this.x, this.y); // "this" is meant for current class.
}
```

Now let's instantiate two objects of class Point:

```dart

var p1 = Point(5, 4);
var p2 = Point(8, 3);
```

What if we would like to know what is the distance between these 2 points? We can do that by declaring a class function (or method of the class) and passing one of the objects as a parameter:

```dart

import 'dart:math';

class Point {
  double x = 0; // field
  double y = 0; // field
   
Point(double x, double y) { // constructor
    this.x = x; // initializing field
    this.y = y; // initializing field
  }
	// method
	double distanceTo(Point end) {
		return sqrt(pow((end.x - this.x), 2) + pow((end.y - this.y), 2));
	}
}
```

```dart

var p1 = Point(5, 4);
var p2 = Point(8, 3);

print(p1.distanceTo(p2));
```

### **Exercise**

Make a class named `Person`.

Its attributes:

- name - string
- surname - string
- cityOfOrigin - string
- age - int
- height - int

Constructor:

- name - required
- cityOfOrigin - required
- age - required
- height - required
- surname - optional

> Note: please see the [documentation](https://dart.dev/guides/language/language-tour#classes) for examples.

