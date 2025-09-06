/*
 Q3. Word Reversal & Vowel Count 
 - Take a word from the user. 
 - Print the word reversed, and also count how many vowels it has.
 */
import 'dart:io';

void main() {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  print('Enter the word');
  String text = stdin.readLineSync()!;
  String reverse = '';
  int count = 0;
  for (int i = text.length - 1; i >= 0; i--) {
    reverse = reverse + text[i];
    if (vowels.contains(text[i])) {
      count++;
    }
  }
  print(reverse);
  print('the number of vowels is $count');
}
