class Task {
  String title;
  DateTime date;
  bool isCompleted;
  Task({required this.title, required this.date, this.isCompleted = false});
  String printDateTask(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}

class TasksApp {
  List<Task> allTasks = [];

  void addTask(Task task) {
    allTasks.add(task);
  }

  void removeTask(Task task) {
    allTasks.remove(task);
  }

  List<Task> getAllTasks() {
    return allTasks;
  }
}
