@Timeout(Duration(seconds: 5))

import 'package:test/test.dart';

import '/jail/student/variables.dart' as student;

void main() {
  group('variables', () {
    test('obj != null', () {
      expect(student.obj, isNotNull);
    });

    test('obj -> int', () {
      student.obj = 1;
      expect(student.obj, isA<int>());
    });

    test('obj -> String', () {
      student.obj = 'text';
      expect(student.obj, isA<String>());
    });

    test('obj -> double', () {
      student.obj = 3.14;
      expect(student.obj, isA<double>());
    });

    test('planet', () {
      expect(student.planet, isA<String>());
    });

    test('year', () {
      expect(student.year, isA<int>());
    });

    test('lucky', () {
      expect(student.lucky, isA<bool>());
    });

    test('pi is double', () {
      expect(student.pi, isA<double>());
    });

    test('pi is const and correct', () {
      const tmp = 3.14;
      expect(student.pi, same(tmp));
    });
  });
}
