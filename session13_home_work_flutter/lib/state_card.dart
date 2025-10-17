import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  IconData icon;
  Color color;
  String number;
  String text;
  StatCard(
      {super.key,
      required this.icon,
      required this.color,
      required this.number,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 115,
      child: Card(
        shadowColor: Colors.black,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 3,
            children: [
              Icon(
                icon,
                color: color,
                size: 30,
              ),
              Text(
                number,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                text,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
