// ignore_for_file: prefer_const_constructor, prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/controller/todoContoller.dart';
import 'package:todo_list/widgets/AppBar.dart';
import 'package:todo_list/widgets/BuilderTodoBar.dart';
import 'package:todo_list/widgets/EmptyImage.dart';
import 'package:todo_list/widgets/searchBar.dart';
import '../widgets/AddTaskSheet.dart';
import '../widgets/IconsInBottomSheet.dart';

class todoList extends StatefulWidget {
  @override
  State<todoList> createState() => _todoListState();
}

class _todoListState extends State<todoList> {
  String? title, description;
  DateTime? todoDate;
  //object of ControllerTodo
  ControllerTodo tController = ControllerTodo();
  CustomAppBar myAppBar = CustomAppBar();

  @override
  void initState() {
    super.initState();
  }

  void state() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: myAppBar.showAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddTaskSheet(context: context),
        backgroundColor: Color(0xff8687E7),
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 27.0, bottom: 20, left: 24, right: 24),
            child: tController.todolist.isEmpty
                ? imageOnEmpty()
                : searchBar(
                    tController: tController,
                    state: state,
                  ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 74.0),
              child: BuilderTodoBar(tController: tController),
            ),
          ),
        ],
      ),
    );
  }

  // //Bottom Sheet for Add Task in Todos
  // //  Start
  // void _showAddTaskSheet() {
  //   showModalBottomSheet(
  //       isScrollControlled: true,
  //       context: context,
  //       shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
  //       builder: (context) {
  //         return showBottomSheet();
  //       });
  // }
  // // End

  // // Bottom Sheet Function
  // //     Start
  // Container showBottomSheet() {
  //   return Container(
  //     color: Color(0xff363636),
  //     padding: EdgeInsets.fromLTRB(
  //         25, 25, 25, MediaQuery.of(context).viewInsets.bottom),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(bottom: 16.0),
  //           child: Text(
  //             "Add Task",
  //             style: GoogleFonts.lato(
  //               fontWeight: FontWeight.w700,
  //               fontSize: 20,
  //               color: Color(0xffFFFFFF),
  //             ),
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(bottom: 12.0),
  //           child: _showTextFieldinBottom("Add Title", true),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(bottom: 22.25),
  //           child: _showTextFieldinBottom("Add Description", false),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(bottom: 17.0),
  //           child: Row(
  //             children: [
  //               IconsInBottomSheet(
  //                   imageName: 'timer',
  //                   onPressedFunction: _selectDateTimeTogether,
  //                   opacity: 0.87),
  //               IconsInBottomSheet(
  //                   imageName: 'tag', onPressedFunction: () {}, opacity: 0.87),
  //               IconsInBottomSheet(
  //                   imageName: 'flag', onPressedFunction: () {}, opacity: 0.87),
  //               Spacer(),
  //               IconsInBottomSheet(
  //                   imageName: 'send',
  //                   onPressedFunction: () => tController.sendButton(
  //                       title!, description!, todoDate!, context),
  //                   BorderColor: Color(0xff8687E7))
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  // //End

  // TextFields Present in Bottom Sheets
  //Start
  TextField _showTextFieldinBottom(
    String hintText,
    bool isFocus,
  ) {
    return TextField(
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        setState(() {
          if (hintText.toLowerCase().contains("title")) {
            title = value;
          } else {
            description = value;
          }
        });
      },
      autofocus: isFocus,
      textCapitalization: TextCapitalization.sentences,
      cursorColor: const Color(0xff979797),
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: const Color(0xffFFFFFF),
      ),
      decoration: InputDecoration(
        fillColor: Color(0xff363636),
        filled: true,
        hintText: hintText,
        hintStyle: GoogleFonts.lato(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Color(0xffFFFFFF).withOpacity(0.50),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
      ),
    );
  }
  //End

  //Select Date Time Together for Todo
  //Start
  void _selectDateTimeTogether() async {
    todoDate = (await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2099)))!;
    TimeOfDay? todoTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (todoTime != null) {
      setState(() {
        todoDate = DateTime(todoDate!.year, todoDate!.month, todoDate!.day,
            todoTime.hour, todoTime.minute);
      });
    }
  }
  //End

}
