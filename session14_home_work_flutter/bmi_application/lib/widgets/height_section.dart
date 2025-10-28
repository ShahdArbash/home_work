import 'package:bmi_application/widgets/box_item.dart';
import 'package:bmi_application/widgets/height_slider.dart'; // 👈 نضيف الاستيراد
import 'package:bmi_application/widgets/text_with_decuration.dart';
import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  final ValueChanged<double>? onHeightChanged;

  const HeightSection({super.key, this.onHeightChanged});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double _currentHeight = 174;

  @override
  Widget build(BuildContext context) {
    return BoxItem(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          const TextWithDecuration(text: 'HEIGHT'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                _currentHeight.round().toString(),
                style: const TextStyle(
                  fontSize: 65,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'cm',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ],
          ),
          HeightSlider(
            initialValue: _currentHeight,
            onChanged: (value) {
              setState(() {
                _currentHeight = value;
              });
              widget.onHeightChanged?.call(value);
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
