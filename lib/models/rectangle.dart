import 'package:dpm_exercises_2/models/shape.dart';

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(
    int x,
    int y,
    this.length,
    this.width,
  ) : super(x, y);

  @override
  double calculateArea() {
    return length * width;
  }

  bool isSquare() {
    return length == width;
  }
}
