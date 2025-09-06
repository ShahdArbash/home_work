/* 
 Q1. Sum, Average & Compare 
 - Ask the user for three numbers.
- Print their sum and average.
 Then, check if the average is greater than 50 or not.
*/
import 'dart:io';

void main() {
  print('Enter three numbers');
  String? number1 = stdin.readLineSync();
  String? number2 = stdin.readLineSync();
  String? number3 = stdin.readLineSync();
  int num1 = int.parse(number1!);
  int num2 = int.parse(number2!);
  int num3 = int.parse(number3!);
  print(
      'the sum is ${sum(num1, num2, num3)} \nthe average is ${average(num1, num2, num3)}');
  if (average(num1, num2, num3) > 50) {
    print(true);
  } else {
    print(false);
  }
}

int sum(int num1, int num2, int num3) {
  return num1 + num2 + num3;
}

double average(int num1, int num2, int num3) {
  return sum(num1, num2, num3) / 3;
}
