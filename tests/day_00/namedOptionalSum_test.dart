@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/namedOptionalSum.dart' as student;

void main() {
  group('namedOptionalSum', () {
    for (int i = 0; i < 50; i++) {
      Random rnd = new Random();
      int first = -100 + rnd.nextInt(200);
      int second = -100 + rnd.nextInt(200);
      int third = -100 + rnd.nextInt(200);
      test(
          'namedOptionalSum(first: ${first}, second: ${second}, third: ${third})',
          () {
        expect(
            student.namedOptionalSum(
                first: first, second: second, third: third),
            equals(first + second + third));
      });

      test('namedOptionalSum(second: ${second}, third: ${third})', () {
        expect(student.namedOptionalSum(second: second, third: third),
            equals(second + third));
      });

      test('namedOptionalSum(first: ${first}, third: ${third})', () {
        expect(student.namedOptionalSum(first: first, third: third),
            equals(first + third));
      });

      test('namedOptionalSum(third: ${third})', () {
        expect(student.namedOptionalSum(third: third), equals(third));
      });
    }
  });
}
