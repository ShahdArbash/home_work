/*
Question 14
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
 */
void main() {
  List<int>? numbers = [];
  // List<int>? numbers;
  // List<int>? numbers = [1,2,3,4,5];
  bool isNullOrEmpty = numbers == null || numbers.isEmpty;
  if (isNullOrEmpty) {
    print('No scores');
  } else {
    int sum = numbers.first + numbers.last;
    print(sum >= 40);
  }
}
