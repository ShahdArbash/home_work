import 'package:bmi_application/screens/bmi_data.dart';
import 'package:bmi_application/widgets/calculate_BMI.dart';
import 'package:flutter/material.dart';

class ButtonActionCalculateBMI extends StatelessWidget {
  const ButtonActionCalculateBMI({super.key, required this.bmiData});

  final BMIData bmiData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        double bmi =
            bmiData.weight / ((bmiData.height / 100) * (bmiData.height / 100));

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CalculateBMIPage(
                bmi: bmi,
                bmiData: bmiData,
              ),
            ));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        width: double.infinity,
        color: Color(0xffffed0d54),
        child: Text(
          'CALCULATE',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
