/* 
 Q4
 Create a program with a map of student names to their marks. Print the name of the student with
 the highest mark.
*/
void main() {
  Map<String, dynamic> students = {
    'shahd': [70, 40, 80],
    'ahmad': [20, 60, 80],
    'lilia': [100, 20, 50]
  };
  int largestMark = 0;
  students.forEach((key, value) {
    for (int i = 0; i < students.length; i++) {
      if (value[i] > largestMark) {
        largestMark = value[i];
      }
    }
    print('$key : $largestMark');
  });
}
