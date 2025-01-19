import 'package:flutter/material.dart';
import 'package:sticky_notes/models/task_data.dart';
import 'package:sticky_notes/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),

      child: MaterialApp(
        home: TaskScreen(
      
        ),
      ),
    );
  }
}


