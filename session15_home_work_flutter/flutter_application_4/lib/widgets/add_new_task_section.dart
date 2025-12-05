import 'package:flutter/material.dart';
import 'package:flutter_application_4/list_tasks.dart';
import 'package:flutter_application_4/widgets/button_action_add_new_task.dart';
import 'package:flutter_application_4/widgets/textfield_new_task.dart';

class AddNewTaskSection extends StatelessWidget {
  final Task newtask;
  final VoidCallback onAddTask;
  final Function(String) onTextChanged;
  final TextEditingController controller;

  const AddNewTaskSection({
    super.key,
    required this.newtask,
    required this.onAddTask,
    required this.onTextChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
        child: Row(
          spacing: 10,
          children: [
            Expanded(
              child: TextFieldNewTask(
                newtask: newtask,
                onTextChanged: onTextChanged,
                controller: controller,
              ),
            ),
            ButtonActionAddNewTask(addTask: onAddTask),
          ],
        ),
      ),
    );
  }
}
