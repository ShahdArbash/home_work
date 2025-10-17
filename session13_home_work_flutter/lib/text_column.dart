import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  String title;
  String text;
  TextColumn({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
