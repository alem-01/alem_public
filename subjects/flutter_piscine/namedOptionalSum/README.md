## namedOptionalSum

### Named parameters

In Dart you can declare functions that require explicit naming for arguments.

```dart
// Instead of
void someFunction(bool bold, bool hidden) {...}

someFunction(true, false);
```

This way you must specify the name of argument each time you call a function. You can also skip parameter by simply not specifying its name and value.

```dart

// You now must specify to which argument you are referring
void someFunction({bool? bold, bool? hidden}) {...}

someFunction(bold: true, hidden: false);
```

### Null safety

You might be wondering what does "?" sign in bool? mean?

As Dart's documentation suggests - "...types in your code are non-nullable by default, meaning that variables can’t contain null unless you say they can. With null safety, your runtime null-dereference errors turn into edit-time analysis errors."

What happens if the argument of the function is optional and it is omitted? It should be null, but the Dart's null safety does not allow it, and you will get error from compiler. In order to let Dart's compiler understand that certain variable should be able to accept null, you **must** initialize primitives with question sign. More on null safety [here](https://dart.dev/null-safety).

## Exercise:

Write a function that accepts named parameters "first", "second", "third" and returns the sum of them. All the parameters are integers. Absent parameters are considered as 0. Name of the function - namedOptionalSum.

### Named parameters

Apart from casual parameter passing, in Dart, you can pass them by names, for instance:

```dart
// void someFunction({bool? bold, bool? hidden}) {...}

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