import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'taskScreen.dart';
import 'task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Task>(
      create: (context) => Task(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        home: TaskScreen(),
      ),
    );
  }
}
