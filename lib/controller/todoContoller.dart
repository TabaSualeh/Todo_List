import 'package:flutter/material.dart';

import '../models/listforTodo.dart';

class ControllerTodo {
  List<Todo> todolist = [];
  List<Todo>? searchTodolist;

  //Search with a Keyword Function
  //Start
  void searchTodo(String searchKey) {
    if (searchKey.isEmpty) {
      searchTodolist = null;
    } else {
      List<Todo> results = todolist
          .where((element) =>
              element.title.toLowerCase().contains(searchKey.toLowerCase()))
          .toList();

      searchTodolist = results;
    }
  }
  //End

  //Add Items in Todo List which is initialize Globally in class
  // Start
  void addTodoItem(String title, String description, DateTime todoDate,
      BuildContext context) {
    todolist.add(
      Todo(
        title: title,
        description: description,
        todoDate: todoDate,
      ),
    );
    Navigator.pop(context);
  }
  //End

  // Send Icon On Pressed Function
  //Start
  void sendButton(String title, String description, DateTime todoDate,
      BuildContext context) {
    if (title.isNotEmpty && description.isNotEmpty) {
      addTodoItem(title, description, todoDate, context);
    }
  }
  //End

}
