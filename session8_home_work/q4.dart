/* 
 Q4. Class with Default Attribute Value 
 - Create a class Product with attributes name and price. Give price a default value of 0. 
 - Create two objects: one with a custom price and one with the default price. Print their details
*/
void main() {
  Product lab = Product();
  lab.name = 'lab';
  lab.price = 100;
  Product car = Product();
  car.name = 'kia';
  print('${car.name} ${car.price}');
  print('${lab.name} ${lab.price}');
}

class Product {
  String? name;
  int price = 0;
}
