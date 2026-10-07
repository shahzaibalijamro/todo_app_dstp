class Todo {
  String title;
  String? description;
  DateTime dateTime;
  bool isCompleted = false;

  Todo({required this.title, this.description, DateTime? givenTime})
    : dateTime = givenTime ?? DateTime.now();
}
