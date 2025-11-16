import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page.dart';

class ButtonStart extends StatelessWidget {
  const ButtonStart({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomePage();
            },
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 6,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: const Text(
          "Start Quiz",
          style: TextStyle(color: Color(0xff2B0063), fontSize: 18),
        ),
      ),
    );
  }
}
