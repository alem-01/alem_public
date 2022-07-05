## maxNum

### **Ternary operators**

One can do different things with ternary operators. It comes handy when one wants to do actions based on some condition.
This operation also keeps less amount of code, and hopefully more readable.

Typical form of the ternary operator is:

```
condition ? (value for true condition) : (value for false condition)
```

```dart
bool four_greater_than_five = 4 > 5 ?  true : false;
```

> **Note:** the same could be achieved with simple if and else, but this approach reduces code length.

### **Exercise**

```dart
int maxNum(int first, int second, int third) {...}
```

The function must return the maximum of three numbers.

