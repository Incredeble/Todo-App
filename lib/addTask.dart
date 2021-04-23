import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newtask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newtask = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {
                Provider.of<Task>(context, listen: false).addTask(newtask);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
              ),
              style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20.0),
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  primary: Colors.white,
                  backgroundColor: Colors.lightBlueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
