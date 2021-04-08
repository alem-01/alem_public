@Timeout(Duration(seconds: 5))

import 'dart:math';

import 'package:test/test.dart';

import '/jail/student/country.dart' as student;

void main() {
  var arrNames = [
    'USA',
    'Canada',
    'Germany',
    'Ukraine',
    'Russia',
    'France',
    'Portugal',
    'Kazakhstan',
  ];
  var arrCapitals = [
    'Washington',
    'Ottawa',
    'Berlin',
    'Kiev',
    'Moscow',
    'Paris',
    'Lisbon',
    'Astana',
  ];
  var arrLanguages = [
    'English',
    'English',
    'German',
    'Ukrainian',
    'Russian',
    'French',
    'Portuguese',
    'Kazakh',
  ];
  var arrPopulations = [
    328,
    37,
    83,
    44,
    144,
    67,
    10,
    18,
  ];
  var arrYear = [
    1776,
    1867,
    1871,
    1991,
    1991,
    1789,
    1128,
    1991,
  ];
  group('country', () {
    for (int i = 0; i < 1000; i++) {
      Random rnd = new Random();
      var first = rnd.nextInt(arrNames.length);
      var second = rnd.nextInt(arrCapitals.length);
      var third = rnd.nextInt(arrLanguages.length);
      var fourth = rnd.nextInt(arrPopulations.length);
      var fifth = rnd.nextInt(arrYear.length);
      student.Country country = student.Country(
        arrNames[first],
        arrCapitals[second],
        arrLanguages[third],
        arrPopulations[fourth],
        arrYear[fifth],
      );
      test('country name - ${country.name}, ${arrNames[first]}', () {
        expect(country.name, equals(arrNames[first]));
      });
      test('country capital - ${country.capital}, ${arrCapitals[second]}', () {
        expect(country.capital, equals(arrCapitals[second]));
      });
      test('country language - ${country.language}, ${arrLanguages[third]}',
          () {
        expect(country.language, equals(arrLanguages[third]));
      });
      test(
          'country population - ${country.population}, ${arrPopulations[fourth]}',
          () {
        expect(country.population, equals(arrPopulations[fourth]));
      });
      test(
          'country yearOfIndependence - ${country.yearOfIndependence}, ${arrYear[fifth]}',
          () {
        expect(country.yearOfIndependence, equals(arrYear[fifth]));
      });

      student.Country countrySmall = student.Country(
        arrNames[first],
        arrCapitals[second],
        arrLanguages[third],
        arrPopulations[fourth],
      );

      test('countrySmall name - ${countrySmall.name}, ${arrNames[first]}', () {
        expect(countrySmall.name, equals(arrNames[first]));
      });
      test(
          'countrySmall capital - ${countrySmall.capital}, ${arrCapitals[second]}',
          () {
        expect(countrySmall.capital, equals(arrCapitals[second]));
      });
      test(
          'countrySmall language - ${countrySmall.language}, ${arrLanguages[third]}',
          () {
        expect(countrySmall.language, equals(arrLanguages[third]));
      });
      test(
          'countrySmall population - ${countrySmall.population}, ${arrPopulations[fourth]}',
          () {
        expect(countrySmall.population, equals(arrPopulations[fourth]));
      });
      test(
          'countrySmall yearOfIndependence - ${countrySmall.yearOfIndependence}, ${arrYear[fifth]}',
          () {
        expect(countrySmall.yearOfIndependence, equals(null));
      });
    }
  });
}
