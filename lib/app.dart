import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_app/controller_binder.dart';
import 'package:task_manager_app/presentation/screens/splash_screen.dart';
import 'package:task_manager_app/presentation/utilis/app_colors.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: TaskManager.navigatorKey,
      title: 'Task Manager',
      home: const SplashScreen(),
      theme: _themeData,
      initialBinding: ControllerBinder(),
    );
  }

  final ThemeData _themeData = ThemeData(
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.themeColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: AppColors.themeColor,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )
          )
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
      chipTheme: ChipThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )
      )
  );
}

