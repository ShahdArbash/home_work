import 'package:flutter/material.dart';
import 'package:flutter_application_3/custom_card.dart';

enum Gender { male, female }

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = Gender.male;
              });
            },
            child: CustomCard(
              color: selectedGender == Gender.male
                  ? const Color(0xffff090b24)
                  : const Color(0xffff17172f),
              icon: Icons.male_outlined,
              text: 'MALE',
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = Gender.female;
              });
            },
            child: CustomCard(
              color: selectedGender == Gender.female
                  ? const Color(0xffff090b24)
                  : const Color(0xffff17172f),
              icon: Icons.female,
              text: 'FEMALE',
            ),
          ),
        ),
      ],
    );
  }
}
