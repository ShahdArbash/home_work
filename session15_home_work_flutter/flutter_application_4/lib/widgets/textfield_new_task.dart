import 'package:flutter/material.dart';
import 'package:flutter_application_4/list_tasks.dart';

class TextFieldNewTask extends StatefulWidget {
  final Task newtask;
  final Function(String) onTextChanged;
  final TextEditingController controller;

  const TextFieldNewTask({
    super.key,
    required this.newtask,
    required this.onTextChanged,
    required this.controller,
  });

  @override
  State<TextFieldNewTask> createState() => _TextFieldNewTaskState();
}

class _TextFieldNewTaskState extends State<TextFieldNewTask> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: (value) {
        widget.newtask.title = value;

        widget.onTextChanged(value);
      },
      decoration: InputDecoration(
        hintText: 'Add a new task...',
        filled: true,
        fillColor: Colors.grey[100],
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
