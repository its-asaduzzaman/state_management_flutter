import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isCheck = false;
  final String taskTitle;
  final Function(bool?) checkboxCallBack;
  final VoidCallback longPressCallBack;

  TaskTile(
      {Key? key,
      required this.isCheck,
      required this.taskTitle,
      required this.checkboxCallBack,
      required this.longPressCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
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
