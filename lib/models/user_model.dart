import 'package:todo_app_dark/models/todo_model.dart';

class User {
  String name;
  String password;
  String email;
  List<Todo> userTodos = [];

  User({required this.name, required this.password, required this.email});
}
