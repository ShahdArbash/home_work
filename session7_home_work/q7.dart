/* 
 Q7. Sentence Word Counter 
 - Ask the user for a short sentence. 
 - Print how many words it contains and how many characters (excluding spaces)
*/
import 'dart:io';

void main() {
  print('Enter the short sentence');
  String text = stdin.readLineSync()!;
  List<String> words = text.split(' ').toList();
  String characters = text.replaceAll(' ', '');
  print('the number of words is ${words.length}');
  print('the number of characters is ${characters.length} ');
}
