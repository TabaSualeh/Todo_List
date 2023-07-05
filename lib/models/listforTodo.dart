class Todo {
  String title = "";
  String description = "";
  String? tag;
  DateTime todoDate = DateTime.now();
  bool isComplete = false;
  int? priority;

  Todo({
    required this.title,
    required this.description,
    required this.todoDate,
    this.tag,
    this.priority,
  });
  Todo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    tag = json['tag'];
    isComplete = json['isCompleted'];
    priority = json['priority'];
    todoDate = json['todoDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['tag'] = this.tag;
    data['isCompleted'] = this.isComplete;
    data['priority'] = this.priority;
    data['todoDate'] = this.todoDate;
    return data;
  }
}
