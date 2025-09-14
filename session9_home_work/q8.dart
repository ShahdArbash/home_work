/*
 Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
 print the total count of unique words
 */
import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  List<String> words = input!.split(' ').toList();
  Map<String, dynamic> uniqueWords = {};
  for (int i = 0; i < words.length; i++) {
    if (uniqueWords.containsKey(words[i])) {
      uniqueWords[words[i]] = uniqueWords[words[i]] + 1;
    } else {
      uniqueWords[words[i]] = 1;
    }
  }
  int count = 0;
  uniqueWords.forEach((key, value) {
    if (value == 1) {
      print(key);
      count = count + 1;
    }
  });
  print(count);
}
