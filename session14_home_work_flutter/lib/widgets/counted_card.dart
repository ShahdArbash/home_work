import 'package:bmi_application/widgets/box_item.dart';
import 'package:bmi_application/widgets/button_action.dart';
import 'package:bmi_application/widgets/text_with_decuration.dart';
import 'package:flutter/material.dart';

class CountedCard extends StatefulWidget {
  final String label;
  final int initialValue;

  final ValueChanged<double>? onValueChanged;

  const CountedCard({
    super.key,
    required this.label,
    required this.initialValue,
    this.onValueChanged,
  });

  @override
  State<CountedCard> createState() => _CountedCardState();
}

class _CountedCardState extends State<CountedCard> {
  late int value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return BoxItem(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWithDecuration(
              text: widget.label.toUpperCase(),
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
                Expanded(
                  child: ButtonAction(
                    text: '-',
                    onPressed: () {
                      if (value > 1) {
                        setState(() {
                          value -= 1;
                          widget.onValueChanged?.call(value.toDouble());
                        });
                      }
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ButtonAction(
                    text: '+',
                    onPressed: () {
                      setState(() {
                        value += 1;
                        widget.onValueChanged?.call(value.toDouble());
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
