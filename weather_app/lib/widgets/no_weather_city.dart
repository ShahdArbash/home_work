import 'package:flutter/material.dart';

class NoWeatherCity extends StatelessWidget {
  const NoWeatherCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'there is no weather 😔 start searching now 🔍',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}
