/* 
 Q8. Digits Operations 
 - Ask the user for a number (e.g., 528). 
 - Print the sum of its digits and also print the largest digit
*/
import 'dart:io';

void main() {
  print('Enter the number');
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= number; i++) {
    sum = sum + i;
  }
  print(sum);
  print(number);
}
