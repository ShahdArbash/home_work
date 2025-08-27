/*
Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
 */
void main() {
  String grade;
  int mark = 70;
  switch (mark) {
    case >= 90:
      grade = 'A';
      print('the mark = $mark so the grade is $grade');
      break;
    case >= 80:
      grade = 'B';
      print('the mark = $mark so the grade is $grade');
      break;
    case >= 70:
      grade = 'C';
      print('the mark = $mark so the grade is $grade');
      break;
    case >= 60:
      grade = 'D';
      print('the mark = $mark so the grade is $grade');
      break;
  }
}
