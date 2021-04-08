## optionalSum

### Optional parameters

Another possible way to make function parameters, is to make them optional, meaning that functions should perfectly work without the optional parameters, and if they are given. If the optional parameter is not given, it is considered to be null.

In order to make optional parameters, apply the following syntax:

```dart
void someFunction(int firstParameter, int secondParameter, [int? optionalParameter]) {...}
```

To call a function, apply the following syntax:

```dart
someFunction(1, 2);
someFunction(1, 2, 3);
```

Optional parameters **must** come after the required parameters.

### Exercise

Create function `optionalSum` that accepts two integer arguments, and an optional integer argument. Return the sum of all the arguments.
