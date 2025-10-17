import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_item.dart';
import 'package:session12_home_work_flutter/part_box_bebe_green.dart';
import 'package:session12_home_work_flutter/part_box_perpul.dart';
import 'package:session12_home_work_flutter/part_boxs_green+and_orange.dart';
import 'package:session12_home_work_flutter/row_grey.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: [
              boxItem(
                width: double.infinity,
                height: 150,
                color: Color(0xffffe4f2fd),
              ),
              RowGrey(),
              Divider(),
              PartBoxsGreenAndOrange(),
              PartBoxPerpule(),
              PartBoxBebeGreen(),
              boxItem(
                  width: double.infinity,
                  height: 50,
                  color: Color(0xffffe0e0e0))
            ],
          ),
        ),
      ),
    );
  }
}
