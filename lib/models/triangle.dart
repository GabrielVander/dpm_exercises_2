import 'dart:math';

import 'package:dpm_exercises_2/models/position.dart';
import 'package:dpm_exercises_2/models/shape.dart';

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;

  Triangle(
    Position position,
    this.side1,
    this.side2,
    this.side3,
  ) : super(position);

  @override
  double calculateArea() {
    final double semiperimeter = _calculateSemiperimeter();
    return sqrt(
      semiperimeter *
          (semiperimeter - side1) *
          (semiperimeter - side2) *
          (semiperimeter - side3),
    );
  }

  double _calculateSemiperimeter() {
    return _calculatePerimeter() / 2;
  }

  double _calculatePerimeter() {
    return side1 + side2 + side3;
  }

  TriangleType getType() {
    if ((side1 == side2) && (side2 == side3)) {
      return TriangleType.equilateral;
    }
    if ((side1 == side2) || (side2 == side3)) {
      return TriangleType.isosceles;
    }

    return TriangleType.scalene;
  }
}

enum TriangleType { equilateral, isosceles, scalene }
