import 'package:flutter/material.dart';
import 'package:flutter_application_3/gender_section.dart';
import 'package:flutter_application_3/height_section.dart';
import 'package:flutter_application_3/weight_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffff03051a),
        appBar: AppBar(
          backgroundColor: Color(0xffff03051a),
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: Column(
          spacing: 25,
          children: [
            GenderSection(),
            HeightSection(),
            Row(
              children: [
                Expanded(
                  child: WeightAndAgeCard(
                    initialValue: 60,
                    label: 'WEIGHT',
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: WeightAndAgeCard(
                    initialValue: 29,
                    label: 'AGE',
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: Color(0xffffed0d54),
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
