## circle

### Getters and setters

To work with objects' fields, either getting some information, or changing it, we have to use methods, as it might not be a good idea to directly change object's fields. 

An example of this principle is hunger - you should not change person's hunger level directly, but feed them instead. Since it is common to set or get fields' values, it is common to put getters and setters in the OOP.

In Dart, when you specify getters and setters, you must treat them as **fields**.

Syntax of the getters and setters:

```dart
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => this.left + this.width;
  
  set left(double value) {
    if (value >= 0) {
      this.left = value;
    } else {
      throw new FormatException(); 
    }
  }

  double get bottom => this.top - this.height;
  
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  rect.left = 12;
}
```


### **Exercise**

Make a class named `Circle`.

Its fields:

- x - double
- y - double
- radius - double
- getters:
  - area
  - perimeter
  - rightMostCoordinate (x axis)
  - leftMostCoordinate (x axis)
  - highestCoordinate (y axis)
  - lowestCoordinate (y axis)


- Constructor:
  - x - required
  - y - required
  - radius - required

> Note: Do not use math library, pi = 3.14