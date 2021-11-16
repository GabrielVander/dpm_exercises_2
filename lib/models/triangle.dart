import 'dart:math';

import 'package:dpm_exercises_2/models/shape.dart';

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;

  Triangle(
    int x,
    int y,
    this.side1,
    this.side2,
    this.side3,
  ) : super(x, y);

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

  void printType() {
    if ((side1 == side2) && (side2 == side3)) {
      print('Equilateral');
      return;
    }
    if ((side1 == side2) || (side2 == side3)) {
      print('Isosceles');
      return;
    }

    print('Scalene');
  }
}
