import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:state_management/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'buy milk', isDone: false),
    Task(name: 'buy eggs', isDone: false),
    Task(name: 'buy bread', isDone: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
