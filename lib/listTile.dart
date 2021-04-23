import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function callBack;
  final Function longPressCallBack;
  TaskListTile(
      {this.name, this.isChecked, this.callBack, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged: callBack,
      ),
    );
  }
}
