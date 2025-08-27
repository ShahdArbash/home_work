/* 
Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double.
*/
void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'shahd', 'grade': 21},
    {'name': 'ossima', 'grade': 26}
  ];
  print(students[1]['grade']);
  students.add({'name': 'ahmed', 'grade': 25});
  students.add({'name': 'zin', 'grade': 28});
  double average = (students[0]['grade'] +
          students[1]['grade'] +
          students[2]['grade'] +
          students[3]['grade']) /
      students.length;
  print(average);
}
