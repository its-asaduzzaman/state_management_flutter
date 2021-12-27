import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isCheck = false;
  final String taskTitle;
  final Function(bool?) checkboxCallBack;

  TaskTile(
      {Key? key,
      required this.isCheck,
      required this.taskTitle,
      required this.checkboxCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isCheck,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallBack,
        // onChanged: toggleCheckboxState,
      ),
    );
  }
}
