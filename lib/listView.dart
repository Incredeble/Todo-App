import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'listTile.dart';
import 'task.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Task>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final tasks = taskData.task[index];
            return TaskListTile(
              name: tasks.name,
              isChecked: tasks.isChecked,
              callBack: (_) {
                taskData.updateTask(tasks);
              },
              longPressCallBack: () {
                taskData.deleteTask(tasks);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
