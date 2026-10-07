import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_dark/constants/colors.dart';
import 'package:todo_app_dark/models/todo_model.dart';
import 'package:todo_app_dark/utils/date_utils.dart';
import 'package:todo_app_dark/widgets/bottom_add_task_sheet.dart';

class TodoScreen extends StatefulWidget {
  final List<Todo> userTodos;
  const new({super.key, required this.userTodos});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    void openModalSheet() {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        isDismissible: false,
        builder: (context) {
          return AddTodoSheet(
            onCreateTodo: (Todo newTodo) {
              setState(() {
                widget.userTodos.add(newTodo);
              });
            },
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: openModalSheet,
        backgroundColor: AppColors.appbarColor,
        tooltip: "Add Todo",
        child: Icon(Icons.add, color: AppColors.primaryText, size: 30),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          if (widget.userTodos.isNotEmpty) ...[
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(top: 10, bottom: 50),
                itemBuilder: (context, index) {
                  Todo currentTodo = widget.userTodos[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: AppColors.bottomSheetBgColor,
                      borderRadius: BorderRadius.circular(20),
                      border: BoxBorder.all(
                        color: AppColors.fabColor,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: currentTodo.isCompleted
                                ? AppColors.appbarColor
                                : AppColors.bottomSheetBgColor,
                            border: BoxBorder.all(
                              width: currentTodo.isCompleted ? 0 : 1,
                              color: AppColors.primaryText,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            iconSize: 20,
                            onPressed: () {
                              currentTodo.isCompleted =
                                  !currentTodo.isCompleted;
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.check,
                              size: 25,
                              fontWeight: FontWeight(800),
                              color: currentTodo.isCompleted
                                  ? AppColors.primaryText
                                  : AppColors.bottomSheetBgColor,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                currentTodo.title,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 25,
                                ),
                              ),
                              if (currentTodo.description != null ||
                                  currentTodo.description == "") ...[
                                Text(
                                  currentTodo.description!,
                                  style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                              Text(
                                returnFormattedDate(currentTodo.dateTime),
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: widget.userTodos.length,
              ),
            ),
          ] else ...[
            SizedBox(height: 100),
            Center(
              child: Text(
                "No todos found yet!",
                style: GoogleFonts.acme(
                  fontSize: 35,
                  color: AppColors.primaryText,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
