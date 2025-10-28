import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonAction({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: const Color(0xff4b4e5f),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 50,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
