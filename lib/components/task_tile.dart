import 'package:flutter/material.dart';
import 'package:todo/components/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function(bool?) toggleCheckboxState;

  TaskTile({required this.task, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isDone,
        onChanged: toggleCheckboxState,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
