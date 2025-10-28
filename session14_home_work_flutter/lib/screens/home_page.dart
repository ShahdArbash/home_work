import 'package:bmi_application/screens/bmi_data.dart';
import 'package:bmi_application/widgets/button_action_calculate_bmi.dart';
import 'package:bmi_application/widgets/gender_section.dart';
import 'package:bmi_application/widgets/height_section.dart';
import 'package:bmi_application/widgets/wieght_and_age_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BMIData bmiData = BMIData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03051a),
      appBar: AppBar(
        backgroundColor: const Color(0xff03051a),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Expanded(
                    child: GenderSection(
                      onGenderChanged: (value) {
                        bmiData.gender = value;
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Expanded(
                    child: HeightSection(
                      onHeightChanged: (value) {
                        bmiData.height = value;
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  WieghtAndAgeSection(bmiData: bmiData),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
          ButtonActionCalculateBMI(
            bmiData: bmiData,
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
