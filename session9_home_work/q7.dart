/*
 Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
 Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
 */
import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  List numbers = input!.split('').toList();
  int sum = toSum(numbers);
  while (sum > 9) {
    List newNumbers = sum.toString().split('').toList();
    sum = toSum(newNumbers);
  }
  print(sum);
}

int toSum(List numbers) {
  int sum = 0;
  for (var element in numbers) {
    sum = sum + int.parse(element);
  }
  return sum;
}
