import 'package:flutter/material.dart';

class Todo {
  String title, description;
  DateTime todoDate;
  TimeOfDay todoTime;
  int? priority;
  String? tag;
  bool isComplete = false;

  Todo({
    required this.title,
    required this.description,
    required this.todoDate,
    required this.todoTime,
    this.tag,
    this.priority,
  });
}
