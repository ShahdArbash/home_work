import 'package:flutter/material.dart';

class ButtonActionAddNewTask extends StatelessWidget {
  final void Function()? addTask;
  const ButtonActionAddNewTask({
    super.key,
    required this.addTask,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: addTask,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffffdee4e2),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.add, color: Color(0xffff919795), size: 40),
        ),
      ),
    );
  }
}
