/*
 Q12
 Create a function that takes named parameters firstName, lastName, and an optional named
 parameter age. Print the full name and, if age is provided, also print 'Age: X'
 */
void main() {
  steudentInfo(firstName: 'shahd', lastName: 'Arbash');
}

void steudentInfo(
    {required String firstName, required String lastName, int age = 0}) {
  print('$firstName $lastName');
  if (age > 0) {
    print(age);
  }
}
