@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/optionalSum.dart' as student;

void main() {
  group('optionalSum', () {
    for (int i = 0; i < 50; i++) {
      Random rnd = new Random();
      int first = -100 + rnd.nextInt(200);
      int second = -100 + rnd.nextInt(200);
      int third = -100 + rnd.nextInt(200);

      test('optionalSum(${first}, ${second})', () {
        expect(student.optionalSum(first, second), equals(first + second));
      });

      test('optionalSum(${first}, ${second}, ${third})', () {
        expect(student.optionalSum(first, second, third),
            equals(first + second + third));
      });
    }
  });
}
