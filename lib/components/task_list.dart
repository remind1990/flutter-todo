import 'package:flutter/material.dart';
import 'package:todo/components/task.dart';
import 'package:todo/components/task_tile.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function(Task) toggleTaskState;

  TaskList({required this.tasks, required this.toggleTaskState});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          task: tasks[index],
          toggleCheckboxState: (checkboxState) {
            toggleTaskState(tasks[index]);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
