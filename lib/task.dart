import 'dart:collection';
import 'package:flutter/widgets.dart';
import 'tasks.dart';

class Task extends ChangeNotifier {
  final List<Tasks> _task = [
    Tasks(name: "egg"),
    Tasks(name: 'egg'),
    Tasks(name: 'egg'),
  ];

  UnmodifiableListView<Tasks> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String newTask) {
    final addNewTask = Tasks(name: newTask);
    _task.add(addNewTask);
    notifyListeners();
  }

  void updateTask(Tasks tasks) {
    tasks.checked();
    notifyListeners();
  }

  void deleteTask(Tasks tasks) {
    _task.remove(tasks);
    notifyListeners();
  }

  void deleteMultipleTask() {
    for (Tasks tasks in task) {
      if (tasks.isChecked) {
        _task.remove(tasks);
      }
    }
    notifyListeners();
  }
}
