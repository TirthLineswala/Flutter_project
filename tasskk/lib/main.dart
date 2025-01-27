import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasskk/models/taskdata.dart';
import 'package:tasskk/screens/tasks_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
