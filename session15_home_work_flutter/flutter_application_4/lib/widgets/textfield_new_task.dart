import 'package:flutter/material.dart';
import 'package:flutter_application_4/list_tasks.dart';

class TextFieldNewTask extends StatefulWidget {
  final Task newtask;
  final Function(String) onTextChanged;
  const TextFieldNewTask({
    super.key,
    required this.newtask,
    required this.onTextChanged,
  });
  @override
  State<TextFieldNewTask> createState() => _TextFieldNewTaskState();
}

class _TextFieldNewTaskState extends State<TextFieldNewTask> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      onChanged: (value) {
        setState(() {
          widget.newtask.title = value;
          widget.newtask.isCompleted = false;
          widget.newtask.date = DateTime.now().toString();
          widget.onTextChanged(value);
        });
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
