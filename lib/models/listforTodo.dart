import 'package:flutter/material.dart';

class Todo {
  String title, description;
  DateTime todoDate;
  
  int? priority;
  String? tag;
  bool isComplete = false;

  Todo({
    required this.title,
    required this.description,
    required this.todoDate,
    
    this.tag,
    this.priority,
  });
}
