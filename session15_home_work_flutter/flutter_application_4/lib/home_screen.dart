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

final myController = TextEditingController();
Task newTask = Task(title: '', isCompleted: false, date: DateTime.now());

@override
TasksApp tasks = TasksApp();
final now = DateTime.now();

class _HomeScreenState extends State<HomeScreen> {
  String currentTaskTitle = '';

  void addNewTask() {
    if (currentTaskTitle.trim().isEmpty) return;

    setState(() {
      tasks.addTask(Task(
        title: currentTaskTitle,
        isCompleted: false,
        date: DateTime(now.day, now.month, now.year),
      ));
      myController.clear();

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
                      return CardTaskItem(
                        newtask: tasks.allTasks[index],
                        onremove: () {
                          setState(() {
                            tasks.removeTask(tasks.allTasks[index]);
                          });
                        },
                      );
                    },
                  ),
          ),
          AddNewTaskSection(
            newtask: newTask,
            onAddTask: addNewTask,
            onTextChanged: (value) {
              currentTaskTitle = value;
            },
            controller: myController,
          ),
        ],
      ),
    );
  }
}
