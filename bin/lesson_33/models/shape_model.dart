import 'dart:math';

abstract class Shape {
  void calculateArea();
}

class Square extends Shape {
  double? a;
  Square({required this.a});
  @override
  void calculateArea() {
    print("Square : ${a! * a!}");
  }
}

class Triangle extends Shape {
  double? a;
  // double? b;
  // double? c;
  Triangle({required this.a});
  @override
  void calculateArea() {
    print("Triangle : ${sqrt(3) / 2 * pow(a!, 2)}");
  }
}

class Cicrle extends Shape {
  double? r;
  Cicrle({required this.r});
  @override
  void calculateArea() {
    print("Circle : ${pi * r! * r!}");
  }
}

class AreaCalculator {
  void calculate(Shape? obj) {
    obj!.calculateArea();
  }
}

void main(List<String> args) {
  var triangle = Triangle(a: 6);
  AreaCalculator obj = AreaCalculator();
  obj.calculate(triangle);

  var square = Square(a: 8);
  obj.calculate(square);
}
