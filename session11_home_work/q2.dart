/*
 Q2
 Model shapes to compute total paintable area and cost.
 Requirements:
 - Provide a general shape type (concrete class) with an area() method that can be overridden.
 - Implement at least three concrete shape types with encapsulated dimensions and validated
 constructors (invalid → print; keep previous).
 - Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
 code).
 - Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
 cost to 2 decimals.
 */
void main() {}

double computeCost(double area) {
  double cost = 0;

  if (area <= 50) {
    cost = area * 1.50;
  } else if (area <= 150) {
    cost = (50 * 1.50) + ((area - 50) * 1.25);
  } else {
    cost = (50 * 1.50) + (100 * 1.25) + ((area - 150) * 1.00);
  }

  return cost;
}

class Shape {
  double area() {
    return 0;
  }
}

class Circle extends Shape {
  double? _radius;
  double pi = 3.14;
  Circle({required double radius}) {
    if (radius <= 0) {
      print("Invalid radius");
    } else {
      this._radius = radius;
    }
  }
  @override
  double area() {
    return pi * _radius! * _radius!;
  }
}

class Rectangle extends Shape {
  double? _width;
  double? _height;

  Rectangle({required double width, required double height}) {
    if (width <= 0 || height <= 0) {
      print(" Invalid ");
    } else {
      this._width = width;
      this._height = height;
    }
  }

  @override
  double area() {
    return _width! * _height!;
  }
}

class Square extends Shape {
  double? _side;

  Square({required double side}) {
    if (side <= 0) {
      print(" Invalid ");
    } else {
      this._side = side;
    }
  }

  @override
  double area() {
    return _side! * _side!;
  }
}
