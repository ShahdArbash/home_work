/* 
 Q4
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 An input string is valid if:
 1. Open brackets must be closed by the same type of brackets.
 2. Open brackets must be closed in the correct order.
 3. Every close bracket has a corresponding open bracket of the same type.

*/
import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  List brackets = input!.split('').toList();
  List openBrakets = [];
  List closerBrakets = [];
  bool isOpen = true;
  bool result = true;

  for (int i = 0; i < brackets.length; i++) {
    if (isOpen) {
      if (brackets[i] == '(' || brackets[i] == '[' || brackets[i] == '{') {
        openBrakets.add(brackets[i]);
      } else {
        isOpen = false;
      }
    }
    if (brackets[i] == ')' || brackets[i] == ']' || brackets[i] == '}') {
      closerBrakets.add(brackets[i]);
    }
  }

  if (openBrakets.length != closerBrakets.length) {
    print('invalid');
    return;
  }

  int j = openBrakets.length - 1;
  for (int i = 0; i < openBrakets.length; i++) {
    if ((openBrakets[i] == '(' && closerBrakets[j] == ')') ||
        (openBrakets[i] == '[' && closerBrakets[j] == ']') ||
        (openBrakets[i] == '{' && closerBrakets[j] == '}')) {
      result = true;
    } else {
      result = false;
    }
    j--;
  }

  if (result) {
    print('valid');
  } else {
    print('invalid');
  }
}
