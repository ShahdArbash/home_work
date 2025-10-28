import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/button_action_calculate_BMI.dart';
import 'package:flutter_application_3/widgets/gender_section.dart';
import 'package:flutter_application_3/widgets/height_section.dart';
import 'package:flutter_application_3/widgets/weight_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 174;
  int weight = 60;
  int age = 29;
  Gender gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03051a),
      appBar: AppBar(
        backgroundColor: const Color(0xff03051a),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Expanded(
              child: Column(
                spacing: 30,
                children: [
                  GenderSection(
                    selectedGender: gender,
                    onGenderChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                  HeightSection(
                    height: height,
                    onHeightChanged: (Value) {
                      setState(() {
                        height = Value;
                      });
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: WeightAndAgeCard(
                          initialValue: weight,
                          label: 'WEIGHT',
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: WeightAndAgeCard(
                          initialValue: age,
                          label: 'AGE',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          ButtonActionCalculateBMI(
              weight: weight, height: height, gender: gender, age: age),
        ],
      ),
    );
  }
}
