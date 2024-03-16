import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/utilis/app_colors.dart';
import 'package:task_manager_app/presentation/widgets/background_widget.dart';
import 'package:task_manager_app/presentation/widgets/profile_app_bar.dart';
import 'package:task_manager_app/presentation/widgets/task_card.dart';
import 'package:task_manager_app/presentation/widgets/task_counter_card.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundWidget(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const TaskCard();
          },
        ),
      ),
    );
  }
}