import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/screens/splash_screen.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      home: SplashScreen(),
    );
  }
}
