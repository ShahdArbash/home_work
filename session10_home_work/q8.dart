import 'dart:math';

void main() {
  print(isAnagram("anagram", "nagaram"));
}

bool isAnagram(String s, String t) {
  List<String> wordS = s.split('').toList();
  List<String> wordT = t.split('').toList();

  wordS.sort();
  wordT.sort();

  if (wordT.length == wordS.length) {
    for (int i = 0; i < wordT.length; i++) {
      if (wordT[i] != wordS[i]) {
        return false;
      }
    }
    return true;
  } else {
    return false;
  }
}
