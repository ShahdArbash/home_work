/*
Q5
Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.
 */
void main() {
  String price = 'EGP 12.50';
  double number;
  String shourtnumber = '';
  for (int i = 0; i < price.length; i++) {
    if (i > 3) {
      shourtnumber = shourtnumber + price[i];
    }
  }
  number = double.parse(shourtnumber);

  print(number);
}
