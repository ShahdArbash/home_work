/*
 Q4
 Create a class Product with private fields _name and _price.
 - Reject empty names and negative prices in setters.
 - Add a computed getter discountedPrice that returns the price with a 10% discount applied.
 - In main(), demonstrate setting values and printing the original and discounted price
 */
void main() {
  Product myproduct = Product();
  myproduct.name = 'lap';
  myproduct.price = 120;
  print(myproduct.discountedPrice());
  myproduct.name = 'mause';
  myproduct.price = -20;
  print(myproduct.discountedPrice());
}

class Product {
  String? _name;
  double? _price;
  set name(String name) {
    if (name != '') {
      this._name = name;
    }
  }

  set price(double price) {
    if (price > 0) {
      this._price = price;
    }
  }

  double get price => this._price!;

  double discountedPrice() {
    this._price = price - (price * 1 / 10);
    return this._price!;
  }
}
