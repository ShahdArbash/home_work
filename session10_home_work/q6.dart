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
  Map mapBrackets = {'(': ')', '[': ']', '{': '}'};

  for (int i = 0; i < brackets.length; i++) {
    if (brackets[i] == '(' || brackets[i] == '[' || brackets[i] == '{') {
      openBrakets.add(brackets[i]);
    } else {
      if (openBrakets.isNotEmpty &&
          mapBrackets[openBrakets.last] != brackets[i]) {
        print('invalid');
        return;
      } else {
        openBrakets.remove(openBrakets.last);
      }
    }
  }
  if (openBrakets.isEmpty) {
    print('valid');
  } else {
    print('invalid');
  }
}
