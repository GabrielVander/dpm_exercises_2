import 'dart:math';

import 'package:dpm_exercises_2/models/shape.dart';

class Circle extends Shape {
  double radius;

  Circle(
    int x,
    int y,
    this.radius,
  ) : super(x, y);

  @override
  double calculateArea() {
    return pi * pow(radius, 2);
  }

  double calculateDiameter() {
    return 2 * radius;
  }
}
