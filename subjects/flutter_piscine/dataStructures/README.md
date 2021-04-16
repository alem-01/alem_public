## dataStructures

In this exercise you will work with data structures: List, Set and Map.

### List

List is an array of elements. In dart lists are initialized as following:

```dart
var listNum1 = [1, 2, 3];
// or ...
List<int> listNum2 = [1, 2, 3];
```

### Set

Set is an unordered collection of unique items. Sets are created as:

```dart
var set1 = {'Germany', 'Kazakhstan', 'France'};
// or ...
Set<String> set2 = {'Germany', 'Kazakhstan', 'France'};
```

### Map

Map is a key-value data structure. Maps are created as:

```dart
var map1 = {
  'Earth': 6378.1,
  'Jupiter': 71492,
  'Moon': 1738.1,
};
// or ...
Map<String, double> map1 = {
  'Earth': 6378.1,
  'Jupiter': 71492,
  'Moon': 1738.1,
};
```

### Instructions

Declare and initialize following variables:

- `listNum` of type `List<int>` containing a list of integers (list length >= 5);
- `listObj` of type `List<Object>` containing a list of items of different types (list length >= 4);
- `listStr` of type `List<String>` containing a list of strings (list length >= 3);
- `listList` of type `List<List<Object>>` containing a list of lists containing `listNum`, `listObj`, `listStr`;
- `setStr` of type `Set<String>` containing at least 3 items;
- `mapStr` of type `Map<String, int>` containing at least 3 pairs;

> Note: main is not needed!
