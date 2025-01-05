import 'package:flutter/foundation.dart';
import 'package:todo/components/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void toggleTaskState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
