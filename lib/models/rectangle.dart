import 'package:dpm_exercises_2/models/position.dart';
import 'package:dpm_exercises_2/models/shape.dart';

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(
    Position position,
    this.length,
    this.width,
  ) : super(position);

  @override
  double calculateArea() {
    return length * width;
  }

  bool isSquare() {
    return length == width;
  }
}
