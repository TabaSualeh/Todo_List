class Todo {
  String title, description;
  DateTime todoTime;
  int? priority;
  String? tag;
  bool isComplete = false;

  Todo({
    required this.title,
    required this.description,
    required this.todoTime,
    this.tag,
    this.priority,
  });
}
