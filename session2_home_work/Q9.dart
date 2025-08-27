/* 9. Create a new Dart file. At the top, write a multi-line comment explaining your program. Inside the
file, write simple code with proper indentation and single line comments.*/
/* الكود التالي يقوم بحساب 
BMI 
 ذلك من خلال تعريف الطول بالمتر  
تعريف الوزن بالكيلوغرام
المعادلة هي تقسيم الوزن على مربع الطول */

void main() {
  double height = 1.64;
  double weight = 58;
  double bmi = weight / (height * height);
  print('my height is $height \nmy weight is $weight \nmy BMI is $bmi');
}

// برنامج لحساب مؤشر كتلة الجسم BMI
