import 'package:flutter/material.dart';
import 'package:flutter_application_3/button_action.dart';

class WeightAndAgeCard extends StatefulWidget {
  final String label;
  final int initialValue;

  const WeightAndAgeCard({
    super.key,
    required this.label,
    required this.initialValue,
  });

  @override
  State<WeightAndAgeCard> createState() => _WeightAndAgeCardState();
}

class _WeightAndAgeCardState extends State<WeightAndAgeCard> {
  late int value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  void _updateValue(int newValue) {
    setState(() {
      value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff17172f),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.label.toUpperCase(),
              style: const TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              '$value',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonAction(
                  text: '-',
                  onPressed: () {
                    if (value > 1) _updateValue(value - 1);
                  },
                ),
                const SizedBox(width: 10),
                ButtonAction(
                  text: '+',
                  onPressed: () {
                    _updateValue(value + 1);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
