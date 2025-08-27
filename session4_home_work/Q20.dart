/*
Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
 */
import 'dart:io';

void main() {
  String area;
  print('enter your age');
  String userAge = stdin.readLineSync() ?? '17';
  int age = int.parse(userAge);
  if (age < 18) {
    area = 'restricted';
  } else {
    area = 'general';
  }
  switch (area) {
    case 'restricted':
      print('your age under 18 are have a parent ??');
      String answer = stdin.readLineSync() ?? 'No';
      if (answer.toLowerCase() == 'yes') {
        print(' they  have a parent so you are allowed to enter ');
      } else {
        print('they  have not a parent so you are  NOT allowed to enter ');
      }
      break;
    case 'general':
      print('your age then 18 so you are allowed to enter');
  }
}
