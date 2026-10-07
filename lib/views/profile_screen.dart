import 'package:flutter/material.dart';
import 'package:todo_app_dark/constants/colors.dart';

class ProfileScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.bgColor,
      child: Expanded(
        child: ListView(
          children: [
            SizedBox(height: 30),
            Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: AppColors.fabColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      "AK",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Ali Khan",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight(700),
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Grade 8 · Section B",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight(500),
                    color: AppColors.secondaryText,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: AppColors.bottomSheetBgColor,
                      borderRadius: BorderRadius.circular(20),
                      border: BoxBorder.all(
                        color: AppColors.fabColor,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "12",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight(800),
                            color: AppColors.primaryText,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Quizzes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight(400),
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: AppColors.bottomSheetBgColor,

                      borderRadius: BorderRadius.circular(20),
                      border: BoxBorder.all(
                        color: AppColors.fabColor,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "82%",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight(800),
                            color: AppColors.primaryText,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Avg Score",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight(400),
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: AppColors.bottomSheetBgColor,

                      borderRadius: BorderRadius.circular(20),
                      border: BoxBorder.all(
                        color: AppColors.fabColor,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "#5",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight(800),
                            color: AppColors.primaryText,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Class Rank",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight(400),
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.bottomSheetBgColor,

                borderRadius: BorderRadius.circular(20),
                border: BoxBorder.all(color: AppColors.secondaryText, width: 2),
              ),
              child: Column(
                spacing: 20,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 25,
                        color: AppColors.secondaryText,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(500),
                          color: AppColors.primaryText,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "ali.khan@school.edu",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight(500),
                          color: AppColors.primaryText,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.school,
                        size: 25,
                        color: AppColors.secondaryText,
                      ),
                      SizedBox(width: 12),

                      Text(
                        "School",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(500),
                          color: AppColors.primaryText,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "City Public School",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight(500),
                          color: AppColors.primaryText,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 25,
                        color: AppColors.secondaryText,
                      ),
                      SizedBox(width: 12),

                      Text(
                        "Joined",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(500),
                          color: AppColors.primaryText,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "March 2026",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight(500),
                          color: AppColors.primaryText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.bottomSheetBgColor,
                borderRadius: BorderRadius.circular(20),
                border: BoxBorder.all(color: AppColors.secondaryText, width: 2),
              ),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Actions",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight(700),
                      color: AppColors.primaryText,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 25,
                        color: AppColors.secondaryText,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Notifications",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(500),
                          color: AppColors.primaryText,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: AppColors.secondaryText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 25,
                        color: AppColors.cancelIconColor,
                      ),
                      SizedBox(width: 12),

                      Text(
                        "Log out",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(500),
                          color: AppColors.cancelIconColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
