@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/person.dart' as student;

void main() {
  var arrNames = [
    'Christopher',
    'Clement',
    'Xavier',
    'Marie',
    'Louise',
    'Zoe',
  ];
  var arrCities = [
    'Almaty',
    'Shymkent',
    'Astana',
    'Balkhash',
    'Aktobe',
    'Atyrau'
  ];
  var arrAges = [
    -22,
    1000124,
    32123,
    21235,
    23128,
    101,
  ];
  var arrHeights = [
    3213213,
    -3213213,
    0,
    43256,
    12321312312,
    -21,
  ];
  group('person', () {
    for (int i = 0; i < 50; i++) {
      Random rnd = new Random();
      var tmpName = arrNames[rnd.nextInt(arrNames.length)];
      var tmpCity = arrCities[rnd.nextInt(arrCities.length)];
      var tmpAge = arrAges[rnd.nextInt(arrAges.length)];
      var tmpHeight = arrHeights[rnd.nextInt(arrHeights.length)];

      student.Person person = student.Person(
        tmpName,
        tmpCity,
        tmpAge,
        tmpHeight,
      );

      test('Person(\'${tmpName}\', \'${tmpCity}\', ${tmpAge}, ${tmpHeight})',
          () {
        expect(person.name, equals(tmpName));
        expect(person.cityOfOrigin, equals(tmpCity));
        expect(person.age, equals(tmpAge));
        expect(person.height, equals(tmpHeight));
      });
    }
    for (int i = 0; i < 50; i++) {
      Random rnd = new Random();
      var tmpName = arrNames[rnd.nextInt(arrNames.length)];
      var tmpCity = arrCities[rnd.nextInt(arrCities.length)];
      var tmpAge = arrAges[rnd.nextInt(arrAges.length)];
      var tmpHeight = arrHeights[rnd.nextInt(arrHeights.length)];
      var tmpSurname = arrNames[rnd.nextInt(arrNames.length)];

      student.Person person = student.Person(
        tmpName,
        tmpCity,
        tmpAge,
        tmpHeight,
        tmpSurname,
      );

      test(
          'Person(\'${tmpName}\', \'${tmpCity}\', ${tmpAge}, ${tmpHeight}, ${tmpSurname})',
          () {
        expect(person.name, equals(tmpName));
        expect(person.cityOfOrigin, equals(tmpCity));
        expect(person.age, equals(tmpAge));
        expect(person.height, equals(tmpHeight));
        expect(person.surname, equals(tmpSurname));
      });
    }
  });
}
