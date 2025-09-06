/* 
 Q2. Odd Numbers in a Range 
 - Ask the user to input a number n. 
 - Print all odd numbers between 1 and n,
  and also print how many odd numbers were found
*/
import 'dart:io';

void main() {
  print('Enter the number');
  String? number = stdin.readLineSync();
  int num1 = int.parse(number!);
  int count = 0;
  for (int i = 1; i <= num1; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }
  print('the count numbers odd is $count');
}
