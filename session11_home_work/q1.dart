/* 
 Q1
 Design an OOP model for planning trip fuel across multiple vehicle types.
 Requirements:
 - Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
 (invalid → print an error; keep previous values).
 - Create at least two specialized vehicle types that inherit from the general type and introduce one
 private field each affecting fuel usage, with validation.
 - Define a fuel computation method in the general type; specialized types must override it with their own
 rule.
 - In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
 which vehicles cannot complete the route under their own constraints (you define the constraint per
 type)
*/
void main() {}

class Vehicle {
  String? _name;
  double? _fuelCapacity;
  double? _fuelEfficiency;

  Vehicle(
      {required String name,
      required double fuelCapacity,
      required double fuelEfficiency}) {
    if (fuelCapacity <= 0 || fuelEfficiency <= 0 || name.isEmpty) {
      print(" erorr");
    } else {
      this._fuelCapacity = fuelCapacity;
      this._fuelEfficiency = fuelEfficiency;
      this._name = name;
    }
  }

  String get name => _name!;
  double get fuelCapacity => _fuelCapacity!;
  double get fuelEfficiency => _fuelEfficiency!;

  double computeFuel(double distance) {
    return distance / _fuelEfficiency!;
  }

  bool canComplete(double distance) {
    return computeFuel(distance) <= _fuelCapacity!;
  }
}

class Truck extends Vehicle {
  double _distance = 0;
  double _fuelPer20Meters = 6;

  Truck(
      {required super.name,
      required super.fuelCapacity,
      required super.fuelEfficiency,
      required double distance}) {
    if (distance < 0) {
      print("error");
    } else {
      this._distance = distance;
      double neededFuel = computeFuel(_distance);
      print(
          "Truck $name will use ${neededFuel.toStringAsFixed(2)} liters for $distance meters.");
    }
  }

  @override
  double computeFuel(double distance) {
    double units = distance / 20;
    return units * _fuelPer20Meters;
  }

  @override
  bool canComplete(double distance) {
    return computeFuel(distance) <= fuelCapacity;
  }
}

class Bus extends Vehicle {
  double distance = 0;
  double _fuelPer30Meters = 5;

  Bus(
      {required super.name,
      required super.fuelCapacity,
      required super.fuelEfficiency,
      required double distance}) {
    if (distance < 0) {
      print(" Invalid.");
    } else {
      this.distance = distance;
      double neededFuel = computeFuel(distance);
      print(
          "Bus $name will use ${neededFuel.toStringAsFixed(2)} liters for $distance meters.");
    }
  }

  @override
  double computeFuel(double distance) {
    double units = distance / 30;
    return units * _fuelPer30Meters;
  }

  @override
  bool canComplete(double distance) {
    return computeFuel(distance) <= fuelCapacity;
  }
}
