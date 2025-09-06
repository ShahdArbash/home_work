/* 
 Q4. Simple List Analyzer 
 - Let the user enter 5 numbers into a list. 
 - Print the largest and smallest numbers,
  and then calculate the difference between them.
*/
import 'dart:io';

void main() {
  print('Enter 5 numbers');
  List<int> numbers = [];
  int largest = 0;
  int smallest = 0;
  for (int i = 0; i < 5; i++) {
    String number1 = stdin.readLineSync()!;
    numbers.add(int.parse(number1));
    smallest = numbers[0];
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }
  print('the difference between largest and smallest is ${largest - smallest}');
}
