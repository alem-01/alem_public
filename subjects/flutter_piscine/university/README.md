## university

### Encapsulation

Sometimes we need to limit access to class attributes so that it can be accessed only from the class itself. This concept is called **Encapsulation.**

In Dart you can make attribute private (meaning that it can be changed or used only in the instances of this class) by putting underscore (_) in the beginning of field's or method's name.


Bear in mind that on a class level there is no Encapsulation in Dart. According to Dart's documentation:

> The import and library directives can help you create a modular and shareable code base. Libraries not only provide APIs, but are a unit of privacy: identifiers that start with an underscore (_) are visible only inside the library. Every Dart app is a library, even if it doesn’t use a library directive.


Still, even on a class level it is a good practice to declare private values and not to use values that are intended to be private.

```dart

class Person {
  bool _hunger = true;

  void feed() {
    this._hunger = false;
  }

}
```

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
