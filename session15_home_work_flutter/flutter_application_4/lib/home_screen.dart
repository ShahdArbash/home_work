import 'package:flutter/material.dart';
import 'package:flutter_application_4/list_tasks.dart';
import 'package:flutter_application_4/screens/no_tasks_screen.dart';
import 'package:flutter_application_4/widgets/add_new_task_section.dart';
import 'package:flutter_application_4/widgets/card_task_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TasksApp tasks = TasksApp();

class _HomeScreenState extends State<HomeScreen> {
  String currentTaskTitle = '';

  void addNewTask() {
    if (currentTaskTitle.trim().isEmpty) return;
    final now = DateTime.now();
    setState(() {
      tasks.addTask(Task(
        title: currentTaskTitle,
        isCompleted: false,
        date: DateTime(now.year, now.month, now.day).toString(),
      ));
      currentTaskTitle = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff5fbf9),
      appBar: AppBar(
        backgroundColor: const Color(0xffff9ef2e3),
        title: const Text(
          'My Tasks',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: tasks.allTasks.isEmpty
                ? const NoTasksScreen()
                : ListView.builder(
                    itemCount: tasks.allTasks.length,
                    itemBuilder: (context, index) {
                      return CardTaskItem(newtask: tasks.allTasks[index]);
                    },
                  ),
          ),
          AddNewTaskSection(
            newtask: Task(title: '', date: ''),
            onAddTask: addNewTask,
            onTextChanged: (value) {
              currentTaskTitle = value;
            },
          ),
        ],
      ),
    );
  }
}
