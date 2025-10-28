import 'package:bmi_application/widgets/gender_section.dart'; // لتستخدم enum

class BMIData {
  double height;
  int weight;
  int age;
  Gender gender;

  BMIData({
    this.height = 174,
    this.weight = 60,
    this.age = 29,
    this.gender = Gender.male,
  });
}
