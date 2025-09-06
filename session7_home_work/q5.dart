/* 
 Q5. Multiplication Table with Sum 
 - Ask the user for a number. 
 - Print its multiplication table up to 10, then calculate the sum of all results
*/
import 'dart:io';

void main() {
  print('Enter the number');
  String? number = stdin.readLineSync();
  int num1 = int.parse(number!);
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    print('$i * $num1 = ${i * num1}');
    sum = sum + (i * num1);
  }
  print('sum of results = $sum');
}
