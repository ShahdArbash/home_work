import 'package:flutter/material.dart';

class TextWithDecuration extends StatelessWidget {
  const TextWithDecuration({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: Color(0xff8d8e98),
      ),
    );
  }
}
