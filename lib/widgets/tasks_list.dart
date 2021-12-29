import 'package:flutter/material.dart';
import 'package:state_management/models/task.dart';
import 'package:state_management/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  const TaskList({
    Key? key, required this.tasks
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isCheck: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallBack: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
