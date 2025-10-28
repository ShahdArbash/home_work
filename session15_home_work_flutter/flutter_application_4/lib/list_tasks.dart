class Task {
  String title;
  String date;
  bool isCompleted;
  Task({required this.title, required this.date, this.isCompleted = false});
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
