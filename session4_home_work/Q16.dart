/*
Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
 */
void main() {
  List<int> numbers = [11, 22, 33];
  bool expression1 = numbers[0] > numbers[1];
  bool expression2 = numbers[1] > numbers[2];
  bool expression3 = numbers[0] != numbers[2];
  bool expression4 = numbers[0] != numbers[1];
  bool expression5 = numbers[1] != numbers[2];

  bool isBiggerSequence = expression1 && expression2;
  bool isNotEqual = expression3 || expression4 || expression5;

  if (isBiggerSequence) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
