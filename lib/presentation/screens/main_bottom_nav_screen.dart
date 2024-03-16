import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/screens/cancelled_task_screen.dart';
import 'package:task_manager_app/presentation/screens/complete_task_screen.dart';
import 'package:task_manager_app/presentation/screens/new_task_screen.dart';
import 'package:task_manager_app/presentation/screens/progress_task_screen.dart';
import 'package:task_manager_app/presentation/utilis/app_colors.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  int _currentSelectedIndex = 0;
  final List<Widget> _screen = [
    const NewTaskScreen(),
    const CompleteTaskScreen(),
    const ProgressTaskScreen(),
    const CancelledTaskScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentSelectedIndex,
        selectedItemColor: AppColors.themeColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index){
          _currentSelectedIndex = index;
          if(mounted){
            setState(() {

            });
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined), label: 'New Task'),
          BottomNavigationBarItem(icon: Icon(Icons.done_all), label: 'Completed'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_rounded), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.close_rounded), label: 'Cancelled'),
        ],
      ),
    );
  }
}
