import 'package:flutter/material.dart';
import 'package:state_management/models/task.dart';
import 'package:state_management/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'buy milk', isDone: false),
    Task(name: 'buy eggs', isDone: false),
    Task(name: 'buy bread', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isCheck: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallBack: (bool? checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
