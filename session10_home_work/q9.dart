void main() {
  print(isValid("()"));
}

bool isValid(String s) {
  List<String> brackets = s.split('');
  List<String> openBrackets = [];
  Map<String, String> mapBrackets = {'(': ')', '[': ']', '{': '}'};

  for (int i = 0; i < brackets.length; i++) {
    if (mapBrackets.containsKey(brackets[i])) {
      openBrackets.add(brackets[i]);
    } else {
      if (openBrackets.isEmpty) {
        return false;
      }
      String lastOpen = openBrackets.removeLast();
      if (mapBrackets[lastOpen] != brackets[i]) {
        return false;
      }
    }
  }
  if (openBrackets.isEmpty) {
    return true;
  } else {
    return false;
  }
}
