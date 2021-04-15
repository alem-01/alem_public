## optionalSum

### Optional parameters

In Dart you can also make function arguments optional, meaning that function can work without optional argument. If the optional parameter is not given, it is considered to be null.

Example of function with optional parameters:

```dart
void someFunction(int firstParameter, int secondParameter, [int? optionalParameter]) {
	if (optionalParameter != null) {
		print('${firstParameter}, ${secondParameter}, ${optionalParameter}');
	} else {
		print('${firstParameter}, ${secondParameter}');
	}
}
void main() {

	someFunction(1, 2);
	someFunction(1, 2, 3);
}
```

> **Note:** Optional parameters **must** come after the required parameters.

> **Note:** you cannot use both optional and named parameters, you should choose **one** of them.

### **Exercise**

Write a function that accepts two integer arguments, and an optional integer argument. Return the sum of all the arguments. Name of the function - optionalSum.