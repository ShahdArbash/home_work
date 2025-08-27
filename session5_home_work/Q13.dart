/* 
Q13
 Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
 each name appears. Print only the names that appear more than once
*/
void main() {
  List names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Set uniqname = names.toSet();
  int count = 0;
  for (int i = 0; i < uniqname.length; i++) {
    count = 0;
    for (int j = 0; j < names.length; j++) {
      if (names[i] == names[j]) {
        count += 1;
      }
    }
    if (count >= 2) {
      print(names[i]);
      print(count);
    }
  }
}
