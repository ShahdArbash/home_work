/*
Exercise 7:
7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result
 */

void main() {
  List numbers = [4, 4, 5, 6, 6, 7];
  Set nums = numbers.toSet();
  print(nums);
  print(nums.add(1));
  print(nums.remove(4));
  print(nums.contains(1));
}
