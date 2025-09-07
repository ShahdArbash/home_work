void main() {
  print(isPalindrome("l   o   l"));
}

bool isPalindrome(String s) {
  String textLowerCase = s.toLowerCase();
  String text = textLowerCase.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
  String textReverse = text.split('').reversed.join();
  if (text == textReverse) {
    return true;
  } else
    return false;
}
