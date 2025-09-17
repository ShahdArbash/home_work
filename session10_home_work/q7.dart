/*
Q7
 Ask the user to input a list of integers.
 - Print the largest number, the smallest number, and their difference.
 - Calculate the average of the list.
 - Print all numbers that are above the average.
 - Finally, print how many numbers are even and how many are odd in the list
 */
import 'dart:io';

void main() {
  print('Enter numbers');
  String? input = stdin.readLineSync();
  List<String> parts = input!.split(" ");
  List<int> numbers = [];
  for (int i = 0; i < parts.length; i++) {
    numbers.add(int.parse(parts[i]));
  }
  int maxNum = numbers[0];
  int minNum = numbers[0];
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > maxNum) {
      maxNum = numbers[i];
    }
    if (numbers[i] < minNum) {
      minNum = numbers[i];
    }
    sum += numbers[i];
  }

  print("max number is  $maxNum");
  print("min number is  $minNum");
  print("max - min is ${maxNum - minNum}");

  double average = sum / numbers.length;
  print("average is  $average");

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > average) {
      print(numbers[i]);
    }
  }

  int evenCount = 0;
  int oddCount = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print("count even numbers is  $evenCount");
  print("count odd numbers is $oddCount");
}
