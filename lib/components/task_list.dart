import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/data/task_data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              task: task,
              toggleCheckboxState: (checkboxState) {
                taskData.toggleTaskState(task);
              },
              deleteTask: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
