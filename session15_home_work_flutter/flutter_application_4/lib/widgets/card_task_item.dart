import 'package:flutter/material.dart';
import 'package:flutter_application_4/list_tasks.dart';

class CardTaskItem extends StatelessWidget {
  final Task newtask;
  const CardTaskItem({
    super.key,
    required this.newtask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(
              Icons.check_box_outline_blank,
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              newtask.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Created: ${newtask.date}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            trailing: Icon(
              Icons.delete_outlined,
              color: Colors.red,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
