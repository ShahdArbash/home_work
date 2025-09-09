/* 
 Q8. Digits Operations 
 - Ask the user for a number (e.g., 528). 
 - Print the sum of its digits and also print the largest digit
*/
import 'dart:io';

void main() {
  print('Enter the number');
  String input = stdin.readLineSync()!;
  List numbers = input.split('').toList();
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum = sum + int.parse(numbers[i]);
  }
  print(sum);
}
