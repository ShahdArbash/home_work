/* 
Q1
 Create a program that declares an integer for birthYear and calculates the age assuming the
 current year is 2025. Print 'You are X years old'
*/
void main() {
  int birthYear = 2004;
  int age = calculatesAge(birthYear);
  print('You are $age years old');
}

int calculatesAge(int birthYear) {
  int age = 2025 - birthYear;
  return age;
}
