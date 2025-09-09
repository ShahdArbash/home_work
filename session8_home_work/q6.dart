/* 
 Q6. Sentence Analyzer 
 - Ask the user to input a sentence. 
 - Print how many words it contains. Then print the shortest word and the longest word from the sentence
*/
import 'dart:io';

void main() {
  print('Enter the short sentence');
  String text = stdin.readLineSync()!;
  List<String> words = text.split(' ').toList();
  String shortest = words[0];
  print('the number of words is ${words.length}');
  for (int i = 1; i < words.length; i++) {
    if (shortest.length > words[i].length) {
      shortest = words[i];
    }
  }
  print(shortest);
}
