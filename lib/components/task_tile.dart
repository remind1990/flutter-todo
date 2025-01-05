import 'package:flutter/material.dart';
import 'package:todo/components/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function(bool?) toggleCheckboxState;
  final VoidCallback deleteTask;

  TaskTile(
      {required this.task,
      required this.toggleCheckboxState,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Checkbox(
            value: task.isDone,
            onChanged: toggleCheckboxState,
            activeColor: Colors.lightBlueAccent,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            color: Colors.red,
            onPressed: deleteTask,
          ),
        ],
      ),
    );
  }
}
