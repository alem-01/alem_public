@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/namedRequiredSum.dart' as student;

void main() {
  group('namedRequiredSum', () {
    for (int i = 0; i < 1000; i++) {
      Random rnd = new Random();
      int first = -100 + rnd.nextInt(200);
      int second = -100 + rnd.nextInt(200);
      int third = -100 + rnd.nextInt(200);
      test(
          'namedRequiredSum(first: ${first}, second: ${second}, third: ${third})',
          () {
        print('${first}, ${second}, ${third}');
        expect(
            student.namedRequiredSum(
                first: first, second: second, third: third),
            equals(first + second + third));
      });
    }
  });
}
