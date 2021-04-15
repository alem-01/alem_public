## university

### Encapsulation

Sometimes we want other objects not to have access to certain fields or methods of our objects. We can restrict their access, allowing only to ourselves to have a direct control over those fields/methods, they are usually called _private_ fields/methods. This concept is usually referred to as **Encapsulation.**

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
