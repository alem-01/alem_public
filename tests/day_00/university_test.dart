@Timeout(Duration(seconds: 10))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/university.dart' as student;

void main() {
  var arrNames = [
    'Harvard',
    'Stanford',
    'MIT',
    'Columbia',
    'Caltech',
    'Boston'
  ];
  var arrCities = [
    'Cambridge',
    'Santa Clara',
    'Cambridge',
    'New York',
    'Los Angeles',
    'Boston'
  ];
  var arrRankings = [
    3,
    2,
    1,
    19,
    4,
    110,
  ];
  group('university', () {
    for (int i = 0; i < 1000; i++) {
      Random rnd = new Random();
      int first = rnd.nextInt(arrNames.length);
      int second = rnd.nextInt(arrCities.length);
      student.University university =
          new student.University(arrNames[first], arrCities[second]);
      test('University name(\'${university.name}\', \'${arrNames[first]}\')',
          () {
        expect(university.name, equals(arrNames[first]));
      });
      test('University city(\'${university.city}\', \'${arrCities[second]}\')',
          () {
        expect(university.city, equals(arrCities[second]));
      });
      test('University ranking(\'${university.ranking}\', \'${null}\')', () {
        expect(university.ranking, equals(null));
      });
    }
    for (int i = 0; i < 1000; i++) {
      Random rnd = new Random();
      int first = rnd.nextInt(arrNames.length);
      int second = rnd.nextInt(arrCities.length);
      int third = rnd.nextInt(arrRankings.length);
      student.University university = new student.University(
          arrNames[first], arrCities[second], arrRankings[third]);

      test('University name(\'${university.name}\', \'${arrNames[first]}\')',
          () {
        expect(university.name, equals(arrNames[first]));
      });
      test('University city(\'${university.city}\', \'${arrCities[second]}\')',
          () {
        expect(university.city, equals(arrCities[second]));
      });
      test(
          'University ranking(\'${university.ranking}\', \'${arrRankings[third]}\')',
          () {
        expect(university.ranking, equals(arrRankings[third]));
      });
    }
  });
}
