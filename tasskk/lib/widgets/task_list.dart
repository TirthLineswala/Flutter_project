import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasskk/widgets/task_tile.dart';
import 'package:tasskk/models/taskdata.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              deleteCallback: () {
                taskData.deleteTask(task);  // Task deletion logic
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
