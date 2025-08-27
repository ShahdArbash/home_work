/* 
Q7
Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
and print the total.

*/
void main() {
  List scores = [10, 0, 20, 30];
  num total = 0;
  for (int i = 0; i < scores.length; i++) {
    if (i == 0) {
    } else {
      total += scores[i];
    }
  }
  print(total);
}
