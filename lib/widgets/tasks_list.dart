import 'package:flutter/material.dart';
import 'package:state_management/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isCheck: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallBack: (bool? checkboxState) {
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
