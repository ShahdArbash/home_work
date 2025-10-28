import 'package:bmi_application/screens/bmi_data.dart';
import 'package:bmi_application/widgets/box_item.dart';
import 'package:flutter/material.dart';

class CalculateBMIPage extends StatelessWidget {
  final BMIData bmiData;
  final double bmi;

  CalculateBMIPage({super.key, required this.bmiData, required this.bmi});

  String get bmiValue {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 25) return 'Normal';
    if (bmi < 30) return 'Overweight';
    return 'Obese';
  }

  late String genderText = bmiData.gender == 'MALE' ? 'Male ' : 'Female';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03051a),
      appBar: AppBar(
        backgroundColor: const Color(0xff03051a),
        title: const Text(
          'BMI RESULT',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: BoxItem(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Your BMI',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 22,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 10),
              Text(
                bmi.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                bmiValue,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Gender: $genderText\nAge: ${bmiData.age}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffed0d54),
                  minimumSize: Size(80, 50),
                ),
                child: Text(
                  'BACK',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
