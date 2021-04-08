@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/maxNum.dart' as student;

void main() {
  group('maxNum', () {
    for (int i = 0; i < 50; i++) {
      Random rnd = new Random();
      int first = -100 + rnd.nextInt(200);
      int second = -100 + rnd.nextInt(200);
      int third = -100 + rnd.nextInt(200);

      test('maxNum(${first}, ${second}, ${third})', () {
        expect(student.maxNum(first, second, third),
            equals([first, second, third].reduce(max)));
      });
    }
  });
}
