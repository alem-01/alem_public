@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/plainSum.dart' as student;

void main() {
  group('plainSum', () {
    for (int i = 0; i < 1000; i++) {
      Random rnd = new Random();
      int first = -100 + rnd.nextInt(200);
      int second = -100 + rnd.nextInt(200);
      int third = -100 + rnd.nextInt(200);
      test('plainSum(${first}, ${second}, ${third})', () {
        expect(student.plainSum(first, second, third),
            equals(first + second + third));
      });
    }
  });
}
