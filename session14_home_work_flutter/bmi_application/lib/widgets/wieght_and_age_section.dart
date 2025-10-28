import 'package:bmi_application/screens/bmi_data.dart';
import 'package:bmi_application/widgets/counted_card.dart';
import 'package:flutter/material.dart';

class WieghtAndAgeSection extends StatelessWidget {
  const WieghtAndAgeSection({
    super.key,
    required this.bmiData,
  });

  final BMIData bmiData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CountedCard(
            initialValue: bmiData.weight,
            label: 'WEIGHT',
            onValueChanged: (value) {
              bmiData.weight = value.round();
            },
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: CountedCard(
            initialValue: bmiData.age,
            label: 'AGE',
            onValueChanged: (value) {
              bmiData.age = value.round();
            },
          ),
        ),
      ],
    );
  }
}
