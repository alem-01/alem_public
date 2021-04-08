## circle

### Getters and setters

To work with objects' fields, either getting some information, or changing it, we have to use methods, as it might not be a good idea to directly change object's fields, same example with hunger, you should not change person's hunger level, but feed them instead. Since it is common to set or get fields' values, it is common to put getters and setters in the OOP.

In dart, when interacting with getters and setters you must treat them as **fields**.

Syntax of the getters and setters:

```dart
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => this.left + this.width;
  set right(double value) => this.left = value - this.width;
  double get bottom => this.top - this.height;
  set bottom(double value) => this.top = value + this.height;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3); // need to investigate
  rect.right = 12;
  assert(rect.left == -8); // need to investigate
}
```

### Exercise

Make a class named `Circle`.

Its fields:

- x - double
- y - double
- radius - double
- getters:
  - area
  - perimeter
- Constructor:
  - x - required
  - y - required
  - radius - required
