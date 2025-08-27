/* 8. Write a Dart program that declares two numeric variables and performs addition, subtraction,
multiplication, division, and modulo on them. Print each result.*/
void main() {
  int num1 = 25;
  int num2 = 8;
  int sum = num1 + num2;
  int sub = num1 - num2;
  int mult = num1 * num2;
  int div2 = num1 ~/ num2; //طريقة ثانية في حال اردنا تخزين الناتج في متحول int
  double div = num1 / num2;
  int mood = num1 % num2;
  print(
      'the addition is: $sum \nthe subtraction is: $sub\nthe multiplication is: $mult \nthe division is: $div \nthe modulo is: $mood');
}
