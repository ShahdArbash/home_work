/* 
Q2. Class with Constructor 
- Create a class Car with attributes brand and year. 
- Add a constructor to set the values when creating the object. 
- In main(), create two car objects with different data and print their details
*/
void main() {
  Car mycar = Car(brand: 'Kia', year: 2004);
  Car mycar2 = Car(brand: 'toita', year: 2025);
  mycar.printCar();
  mycar2.printCar();
}

class Car {
  String? brand;
  int? year;
  Car({required String brand, required int year}) {
    this.brand = brand;
    this.year = year;
  }
  void printCar() {
    print('$brand $year');
  }
}
