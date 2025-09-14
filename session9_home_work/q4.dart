/*
 Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
 that increases the salary. In main(), create an employee, give them a raise, and print the new
 salary
 */
void main() {
  Employee shahd = Employee(name: 'shahd', salary: 200);
  shahd.giveRaise(200);
  print(shahd.salary);
}

class Employee {
  String? name;
  double? salary;
  Employee({required String name, required double salary}) {
    this.name = name;
    this.salary = salary;
  }
  void giveRaise(int amount) {
    this.salary = salary! + amount;
  }
}
