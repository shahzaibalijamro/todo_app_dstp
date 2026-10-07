import 'package:flutter/material.dart';
import 'package:todo_app_dark/constants/colors.dart';
import 'package:todo_app_dark/models/todo_model.dart';
import 'package:todo_app_dark/models/user_model.dart';
import 'package:todo_app_dark/utils/date_utils.dart';
import 'package:todo_app_dark/views/profile_screen.dart';
import 'package:todo_app_dark/views/todo_screen.dart';

class HomeScreen extends StatefulWidget {
  final User user;
  const new({super.key, required this.user});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      TodoScreen(userTodos: widget.user.userTodos),
      ProfileScreen(),
    ];
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarColor,
        title: Text(
          currentIndex == 0 ? 'My Todos' : 'Profile',
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 30,
            fontWeight: FontWeight(600),
          ),
        ),
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
