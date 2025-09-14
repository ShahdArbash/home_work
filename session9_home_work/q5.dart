/*
Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
 courses: one with custom duration and one with the default. Print both.
 */
void main() {
  Course dart = Course(title: 'dart', duration: 4);
  Course flutter = Course(title: 'flutter');
  print('${dart.title} ${dart.duration}');
  print('${flutter.title}, ${flutter.duration}');
}

class Course {
  String? title;
  int duration = 3;
  Course({required String title, int duration = 2}) {
    this.title = title;
    this.duration = duration;
  }
}
