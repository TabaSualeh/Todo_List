import 'package:flutter/material.dart';
import 'package:todo_list/controller/todoContoller.dart';
import 'package:todo_list/models/listforTodo.dart';
import 'package:todo_list/widgets/listbars.dart';

class BuilderTodoBar extends StatefulWidget {
  final ControllerTodo tController;
  BuilderTodoBar({required this.tController});

  @override
  State<BuilderTodoBar> createState() => _BuilderTodoBarState();
}

class _BuilderTodoBarState extends State<BuilderTodoBar> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          Todo item = widget.tController.searchTodolist != null
              ? widget.tController.searchTodolist![index]
              : widget.tController.todolist[index];
          return ListBar(listTodo: item);
        }),
        itemCount: widget.tController.searchTodolist != null
            ? widget.tController.searchTodolist!.length
            : widget.tController.todolist.length);
  }
}
