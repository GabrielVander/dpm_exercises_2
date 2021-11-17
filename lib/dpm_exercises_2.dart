import 'dart:math';

import 'package:dpm_exercises_2/models/circle.dart';
import 'package:dpm_exercises_2/models/position.dart';
import 'package:dpm_exercises_2/models/rectangle.dart';
import 'package:dpm_exercises_2/models/shape.dart';
import 'package:dpm_exercises_2/models/triangle.dart';

import 'models/triangle.dart';

final random = Random();

final List<Shape> shapes = [
  Circle(
    Position(
      random.nextInt(99),
      random.nextInt(99),
    ),
    5.0,
  ),
  Rectangle(
    Position(
      random.nextInt(99),
      random.nextInt(99),
    ),
    40.0,
    23.0,
  ),
  Rectangle(
    Position(
      random.nextInt(99),
      random.nextInt(99),
    ),
    20.0,
    20.0,
  ),
  Triangle(
    Position(
      random.nextInt(99),
      random.nextInt(99),
    ),
    7,
    9,
    8,
  ),
  Triangle(
    Position(
      random.nextInt(99),
      random.nextInt(99),
    ),
    7,
    7,
    12,
  ),
  Triangle(
    Position(
      random.nextInt(99),
      random.nextInt(99),
    ),
    6,
    6,
    6,
  )
];

void execute() {
  for (final shape in shapes) {
    print('${_getInstanceName(shape)} created at '
        'X=${shape.position.x} Y=${shape.position.y}');
    print('Area: ${shape.calculateArea()}');
    if (shape is Circle) print('Diameter: ${shape.calculateDiameter()}');

    if (shape is Rectangle) {
      print('It is${shape.isSquare() ? '' : ' NOT'} a square!');
    }
    if (shape is Triangle) print('Type: ${_getTriangleType(shape.getType())}');
    print('');
  }
  final areas = shapes.map((shape) => shape.calculateArea());
  final totalArea = areas.reduce((total, shapeArea) => total + shapeArea);
  print('Total area: $totalArea');
}

String _getTriangleType(TriangleType type) {
  switch (type) {
    case TriangleType.equilateral:
      return 'Equilateral';
    case TriangleType.isosceles:
      return 'Isosceles';
    case TriangleType.scalene:
      return 'Scalene';
  }
}

String _getInstanceName(Shape shape) {
  if (shape is Circle) return 'Circle';
  if (shape is Rectangle) return 'Rectangle';
  if (shape is Triangle) return 'Triangle';
  return 'Shape';
}
