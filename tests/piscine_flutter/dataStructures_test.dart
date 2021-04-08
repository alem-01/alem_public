@Timeout(Duration(seconds: 5))

import 'package:test/test.dart';

import '/jail/student/dataStructures.dart' as student;

void main() {
  group('data structures', () {
    test('listNum', () {
      expect(student.listNum, isA<List<int>>());
    });

    test('listNum.length >= 5', () {
      expect(student.listNum.length, greaterThanOrEqualTo(5));
    });

    test('listObj', () {
      expect(student.listObj, isA<List<Object>>());
    });

    test('listObj.length >= 4', () {
      expect(student.listObj.length, greaterThanOrEqualTo(4));
    });

    test('listStr', () {
      expect(student.listStr, isA<List<String>>());
    });

    test('listStr.length >= 3', () {
      expect(student.listStr.length, greaterThanOrEqualTo(3));
    });

    test('listList', () {
      expect(student.listList, isA<List<List<Object>>>());
    });

    test('listList.length >= 3', () {
      expect(student.listList.length, greaterThanOrEqualTo(3));
    });

    test('setStr', () {
      expect(student.setStr, isA<Set<String>>());
    });

    test('setStr.length >= 3', () {
      expect(student.setStr.length, greaterThanOrEqualTo(3));
    });

    test('mapStr', () {
      expect(student.mapStr, isA<Map<String, int>>());
    });

    test('mapStr.length >= 3', () {
      expect(student.mapStr.length, greaterThanOrEqualTo(3));
    });
  });
}
