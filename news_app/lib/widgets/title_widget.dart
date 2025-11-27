import 'package:flutter/material.dart';

class titleWidget extends StatelessWidget {
  const titleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
        Text(
          'Cloud',
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
