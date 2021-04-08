## namedRequiredSum

### Named parameters

Apart from casual parameter passing, in Dart, you can pass them by names, for instance:

```dart
// void someFunction({bool bold, bool hidden}) {...}

// Instead of
someFunction(true, false);
// You could specify to which argument you are referring
someFunction(bold: true, hidden: false);
```

Named parameters are optional by default, therefore if you do not assign the argument, leaving it like below, all the other arguments will be considered as null, but Dart does not allow primitive variables to be null.

```dart
someFunction(hidden: false);
```

There are two solutions for this problem, either explicitly make all the arguments required, or allow some primitive variables to be null.

To allow functions' arguments be equal to null, follow [sound null safety](https://dart.dev/null-safety).

```dart
void someFunction({bool? bold, bool? hidden}) {...}
```

This code specifically allows variables bold and hidden be equal to null.

### Exercise

Write a function `namedRequiredSum` that accepts required named parameters `first`, `second`, `third` and returns their sum. All the parameters are integers.
