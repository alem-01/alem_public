@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/circle.dart' as student;

void main() {
  double pi = 3.14;
  group('circle', () {
    for (int i = 0; i < 1000; i++) {
      Random rnd = new Random();
      double x = rnd.nextDouble() * 200;
      double y = rnd.nextDouble() * 200;
      double radius = rnd.nextDouble() * 100;
      student.Circle circle = student.Circle(x, y, radius);
      // solutionsCircle solution = solutionsCircle(x, y, radius);
      test('country x - ${circle.x}, ${x}', () {
        expect(circle.x, equals(x));
      });
      test('circle y - ${circle.y}, ${y}', () {
        expect(circle.y, equals(y));
      });
      test('circle radius - ${circle.radius}, ${radius}', () {
        expect(circle.radius, equals(radius));
      });
      test('circle perimeter - ${circle.perimeter}, ${2 * pi * radius}', () {
        expect(circle.perimeter, equals((2 * pi * radius)));
      });
      test('circle area - ${circle.area}, ${pi * radius * radius}', () {
        expect(circle.area, equals((pi * radius * radius)));
      });
      test(
          'circle rightMostCoordinate - ${circle.rightMostCoordinate}, ${x + radius}',
          () {
        expect(circle.rightMostCoordinate, equals((x + radius)));
      });
      test(
          'circle leftMostCoordinate - ${circle.leftMostCoordinate}, ${x - radius}',
          () {
        expect(circle.leftMostCoordinate, equals((x - radius)));
      });
      test(
          'circle highestCoordinate - ${circle.highestCoordinate}, ${y + radius}',
          () {
        expect(circle.highestCoordinate, equals((y + radius)));
      });
      test(
          'circle lowestCoordinate - ${circle.lowestCoordinate}, ${y - radius}',
          () {
        expect(circle.lowestCoordinate, equals((y - radius)));
      });
    }
  });
}
