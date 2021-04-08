@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';
import '/jail/student/tv.dart' as student;

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
  group('tv', () {
    for (int i = 0; i < 50; i++) {
      Random rnd = new Random();
      var tmpName = arrNames[rnd.nextInt(arrNames.length)];
      var tmpCity = arrCities[rnd.nextInt(arrCities.length)];
      var tmpAge = arrAges[rnd.nextInt(arrAges.length)];
      var tmpHeight = arrHeights[rnd.nextInt(arrHeights.length)];
      var tmpBatch = rnd.nextInt(20);
      var tmpLevel = rnd.nextInt(100);

      student.Student studentPerson = student.Student(
          tmpName, tmpCity, tmpAge, tmpHeight, tmpBatch, tmpLevel);

      test(
          'Person(\'${tmpName}\', \'${tmpCity}\', ${tmpAge}, ${tmpHeight}, ${tmpBatch}, ${tmpLevel})',
          () {
        expect(studentPerson.name, equals(tmpName));
        expect(studentPerson.cityOfOrigin, equals(tmpCity));
        expect(studentPerson.age, equals(tmpAge));
        expect(studentPerson.height, equals(tmpHeight));
        expect(studentPerson.batch, equals(tmpBatch));
        expect(studentPerson.level, equals(tmpLevel));
        expect(studentPerson.secretKey, equals('01'));
      });
    }
  });
}
