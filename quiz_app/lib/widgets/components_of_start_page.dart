import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/button_start.dart';

class ComponentsOfStartPage extends StatelessWidget {
  const ComponentsOfStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 42, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Good morning,",
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
              ),
              const SizedBox(height: 8),

              const Text(
                "New topic is waiting",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,

                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 14),
              Image.asset("asset/images/home_image/home_image.png"),
              Expanded(child: SizedBox()),
              Row(children: [Expanded(child: ButtonStart())]),
            ],
          ),
        ),
      ),
    );
  }
}
