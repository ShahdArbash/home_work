/*
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions
 */
void main() {
  Map<String, dynamic> student = {
    'name': 'shahd',
    'city': null,
    'age': 21,
    'phone': null
  };
  if (student['phone'] == null) {
    student['phone'] = '0957762450';
  }
  if (student['name'] == null) {
    student['name'] == 'ossima';
  }
  if (student['age'] == null) {
    student['age'] = 22;
  }
  if (student['city'] == null) {
    student['city'] = 'hama';
  }
  print(student.values.toString().toUpperCase());

  if (student.containsValue(null)) {
    print('Non-prod');
  } else {
    print('Prod ready');
  }
}
