/* 
 Q6. Number Guessing (3 Tries) 
 - Generate a random number between 1 and 20. 
 - Let the user guess up to 3 times. If they fail, reveal the correct number
*/
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int randomNumber = random.nextInt(20) + 1;
  print('enter the number you have 3 tries');
  for (int i = 0; i < 3; i++) {
    String number1 = stdin.readLineSync()!;
    int number = int.parse(number1);
    if (number == randomNumber) {
      print('yes its currect');
      return;
    }
  }
  print('the random number is $randomNumber');
}
