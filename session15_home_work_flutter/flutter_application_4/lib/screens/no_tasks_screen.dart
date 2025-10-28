import 'package:flutter/material.dart';

class NoTasksScreen extends StatelessWidget {
  const NoTasksScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline,
            size: 60,
            color: Color(
              0xffffabccca,
            ),
          ),
          Text(
            'No Tasks Yet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xffff7f8583),
            ),
          ),
          Text(
            'Add a task to get started',
            style: TextStyle(color: Color(0xffff9fa5a3), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
