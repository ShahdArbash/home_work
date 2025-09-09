/*
 Q3. Modify Attributes 
 - Create a class Person with attributes name and age. 
 - Create an object and set its initial values using a constructor. 
 - Then change the age of the object and print the updated details.
 */
void main() {
  Person shahd = Person(name: 'shahd', age: 22);
  shahd.age = 21;
  print(shahd.age);
}

class Person {
  String? name;
  int? age;
  Person({required String name, required int age}) {
    this.name = name;
    this.age = age;
  }
}
