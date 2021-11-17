import 'package:dpm_exercises_2/models/position.dart';

abstract class Shape {
  Position position;

  Shape(this.position);

  double calculateArea();
}
