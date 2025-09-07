void main() {
  print(isPalindrome("l   o   l"));
}

bool isPalindrome(String s) {
  String textLowerCase = s.toLowerCase();
  String text = textLowerCase.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
  String textReverse = text.split('').reversed.join();
  String result = '';

  for (int i = 0; i < text.length; i++) {
    if (text[i] == textReverse[i]) {
      result = result + text[i];
    }
  }
  if (result == text) {
    return true;
  } else
    return false;
}
