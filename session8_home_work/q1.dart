/* 
 Q1. Class with Method 
 - Create a class Calculator with two attributes: num1 and num2. 
 - Add a method addNumbers() that prints the sum of the two numbers. 
 - Create an object in main() and call the method
*/
void main() {
  Calculator sum = Calculator(num1: 10, num2: 20);
  print(sum.addNumbers());
}

class Calculator {
  int? num1;
  int? num2;
  Calculator({required int num1, required int num2}) {
    this.num1 = num1;
    this.num2 = num2;
  }

  int addNumbers() {
    return num1! + num2!;
  }
}
