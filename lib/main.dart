import 'package:flutter/material.dart';
import 'package:todo_app_dark/views/home_screen.dart';
import 'package:todo_app_dark/views/login_screen.dart';
import 'package:todo_app_dark/views/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
