/* 
 Q5. Find Second Largest Number 
 - Ask the user to enter 6 numbers in a list. 
 - Print the largest number and the second largest number (without sorting the list).
*/
import 'dart:io';

List<int> numberList = [];
int largest = 0;
int secund = 0;
void main() {
  print('enter 6 number');
  for (int i = 0; i < 6; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numberList.add(number);
    secund = numberList[0];
    if (numberList[i] > largest) {
      // secund = largest;
      largest = numberList[i];
    }
  }
  for (int i = 0; i < 5; i++) {
    if (numberList[i] != largest &&
        secund < largest &&
        secund < numberList[i]) {
      secund = numberList[i];
    }
  }
  print('the result');
  print(largest);
  print(secund);
}
