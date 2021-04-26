## university

### Encapsulation

Sometimes we need to limit access to class attributes so that it can be accessed only from the class itself. This concept is called **Encapsulation.**

In Dart you can make attribute private (meaning that it can be changed or used only in the instances of this class) by putting underscore (_) in the beginning of field's or method's name.


```dart

class Person {
  bool _hunger = true;

  void feed() {
    this._hunger = false;
  }

}
```


Syntax of Dart's encapsulation is quite easy, all you must do is put underscore before the field or method's initialization.

### **Exercise**

Make a class named `University`.

Its fields:

- name - private string
- city - private string
- ranking - private int?
- getters:
  - name
  - city
  - ranking
- Constructor:
  - name - required
  - city - required
  - ranking - optional
