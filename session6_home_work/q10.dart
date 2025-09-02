/* 
 Q10
 Create a function that takes an integer n and returns the sum of all numbers from 1 to n. Print the
 returned value.
*/
void main() {
  int resultSum = sum(4);
  print(resultSum);
}

int sum(int n) {
  int total = 0;
  for (int i = 1; i <= n; i++) {
    total += i;
  }
  return total;
}
