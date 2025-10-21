import 'package:flutter/material.dart';
import 'package:session13_home_work_flutter/state_card.dart';

class QuickStats extends StatelessWidget {
  const QuickStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Quick Stats',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StatCard(
            icon: Icons.people,
            color: Color(0xffff673bb7),
            number: '1,234',
            text: 'Users',
          ),
          StatCard(
            icon: Icons.star,
            color: Colors.yellow,
            number: '4.8',
            text: 'Rating',
          ),
          StatCard(
            icon: Icons.trending_up,
            color: Colors.lightBlueAccent,
            number: '98%',
            text: 'Success',
          )
        ],
      )
    ]);
  }
}
