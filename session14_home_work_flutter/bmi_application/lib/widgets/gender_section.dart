import 'package:bmi_application/widgets/gender_item.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

Color activeColor = const Color(0xffff090b24);
Color inactiveColor = const Color(0xffff17172f);

class GenderSection extends StatefulWidget {
  final ValueChanged<Gender>? onGenderChanged;

  const GenderSection({super.key, this.onGenderChanged});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  Gender? selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = Gender.male;
                widget.onGenderChanged?.call(Gender.male);
              });
            },
            child: GenderItem(
              color:
                  selectedGender == Gender.male ? activeColor : inactiveColor,
              icon: Icons.male_outlined,
              text: 'MALE',
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = Gender.female;
                widget.onGenderChanged?.call(selectedGender!);
              });
            },
            child: GenderItem(
              color:
                  selectedGender == Gender.female ? activeColor : inactiveColor,
              icon: Icons.female,
              text: 'FEMALE',
            ),
          ),
        ),
      ],
    );
  }
}
