import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;  
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.onLongPressCallback});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}
