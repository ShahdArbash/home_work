/*
Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
 */
void main() {
  String co = 'sy';
  int price2 = 100;
  print('the price is: ' + price2.toString() + r'$');
  print(co.padLeft(2, price2.toString()));
  print(co.length);
  print((price2.toString() + r'$').length);
}
