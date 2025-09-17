/* 
Q2
 Create a class Car with private fields _brand and _year.
 - Add setters that reject empty brand names and years less than 1886 (first car invention).
 - Add getters for both.
 - In main()  demonstrate creating two car objects (one valid, one invalid input).
*/
void main() {
  Car mycar = Car(brand: 'kia', year: 1990);
  Car mycar2 = Car(brand: '', year: 1768);
}

class Car {
  String? _brand;
  int? _year;
  Car({required String brand, required int year}) {
    this._brand = brand;
    this._year = year;
  }
  set brand(String brand) {
    if (brand != '') {
      this._brand = brand;
    }
  }

  set year(int year) {
    if (year != 1886) {
      this._year = year;
    }
  }

  String get brand => this._brand!;
  int get year => this._year!;
}
