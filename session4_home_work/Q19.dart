/*
Question 19
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.
 */
void main() {
  List<String> names = [
    'shahd',
    'ossima',
    ' mahdi',
    'hassn',
    'shahd',
    'shahd',
    'ossima'
  ];
  Set uniqueNames = names.toSet();
  Map<String, dynamic> countNames = {
    'shahd': 3,
    'ossima': 2,
    'mahdi': 1,
    'hassn': 1
  };
  print(
      'the length of list is: ${names.length} \nthe length of Set is: ${uniqueNames.length} \nthe length of map is: ${countNames.length}');

  if (names.length > uniqueNames.length) {
    print('yes ther is name appears more than once.');
  }
}
