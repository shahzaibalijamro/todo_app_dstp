import 'package:flutter/material.dart';
import 'package:todo_app_dark/widgets/date_picker.dart';
import 'package:todo_app_dark/widgets/text_field.dart';

import '../constants/colors.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_dark/models/todo_model.dart';

class AddTodoSheet extends StatefulWidget {
  final Function(Todo) onCreateTodo;

  const AddTodoSheet({super.key, required this.onCreateTodo});

  @override
  State<AddTodoSheet> createState() => _AddTodoSheetState();
}

class _AddTodoSheetState extends State<AddTodoSheet> {
  final todoController = TextEditingController();
  final descriptionController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  @override
  void dispose() {
    todoController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double bottomPadding = MediaQuery.of(context).viewInsets.bottom + 10;
    void createTask() {
      if (todoController.text == "") {
        return;
      }

      widget.onCreateTodo(
        Todo(
          title: todoController.text,
          description: descriptionController.text,
          givenTime: selectedDate,
        ),
      );

      Navigator.pop(context);
    }

    return SafeArea(
      top: false,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        padding: EdgeInsets.fromLTRB(20, 10, 20, bottomPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60,
              height: 5,
              decoration: BoxDecoration(
                color: AppColors.secondaryText,
                borderRadius: BorderRadius.circular(14),
              ),
              margin: const EdgeInsets.only(bottom: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Todo",
                  style: GoogleFonts.googleSansFlex(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                IconButton(
                  color: Colors.black,
                  hoverColor: Colors.black,
                  padding: EdgeInsets.zero,
                  iconSize: 25,
                  tooltip: "Close",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close, color: AppColors.secondaryText),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Task name",
                  style: GoogleFonts.googleSansFlex(
                    color: AppColors.primaryText,
                    fontWeight: const FontWeight(700),
                    fontSize: 14,
                  ),
                ),
                CustomTextField(
                  controller: todoController,
                  hint: "What do you need to do?",
                  autoFocused: true,
                  minLines: 1,
                  maxLines: 1,
                ),
                const SizedBox(height: 5),
                Text(
                  "Notes (optional)",
                  style: GoogleFonts.googleSansFlex(
                    color: AppColors.primaryText,
                    fontWeight: const FontWeight(700),
                    fontSize: 14,
                  ),
                ),
                CustomTextField(
                  controller: descriptionController,
                  hint: "Add a few details...",
                  autoFocused: false,
                  minLines: 3,
                  maxLines: 3,
                ),
                const SizedBox(height: 7),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: TaskDatePicker(
                    onDateSelected: (date) {
                      selectedDate = date;
                    },
                  ),
                ),
                // TaskTimePicker(),
              ],
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: createTask,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.appbarColor,
                ),
                width: double.infinity,
                child: Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      size: 20,
                      color: AppColors.primaryText,
                    ),
                    Text(
                      "Create Task",
                      style: GoogleFonts.googleSansFlex(
                        fontSize: 16,
                        fontWeight: const FontWeight(500),
                        color: AppColors.primaryText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
