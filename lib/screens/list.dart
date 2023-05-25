// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/widgets/listbars.dart';

import '../models/listforTodo.dart';

class todoList extends StatefulWidget {
  const todoList({Key? key}) : super(key: key);

  @override
  State<todoList> createState() => _todoListState();
}

class _todoListState extends State<todoList> {
  List<Todo> _todolist = [];
  void _addList() {
    _todolist.add(
      Todo(
        title: "Do Maths homework",
        description: "Math's Paper will be on Friday",
        todoTime: DateTime(2023, 5, 26, 13, 30),
      ),
    );

    _todolist.add(
      Todo(
        title: "Gym Time",
        description: "For better physique",
        todoTime: DateTime(2023, 5, 25, 17, 00),
      ),
    );
    _todolist.add(
      Todo(
        title: "Compiler Class",
        description: "Miss Javeria",
        todoTime: DateTime(2023, 5, 25, 15, 00),
      ),
    );
    _todolist.add(
      Todo(
        title: "Software Class",
        description: "Miss Faiza ",
        todoTime: DateTime(2023, 5, 27, 09, 00),
      ),
    );
    _todolist.add(
      Todo(
        title: "Artificial Intelligence Lab",
        description: "Sir Arsalan ",
        todoTime: DateTime(2023, 5, 27, 12, 00),
      ),
    );
  }

  @override
  void initState() {
    _addList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: _showAppBar(),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  top: 27.0, bottom: 67, left: 24, right: 24),
              child: _showSearchField()),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return ListBar(listTodo: _todolist[index]);
              }),
              itemCount: _todolist.length,
            ),
          )
        ],
      ),
    );
  }

  // Search Function
  //     Start
  TextField _showSearchField() {
    return TextField(
      cursorColor: const Color(0xff979797),
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: const Color(0xffFFFFFF),
      ),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(13.5),
          child: Image.asset(
            'assets/search.png',
            height: 20.5,
            width: 20.5,
          ),
        ),
        fillColor: Color(0xff1D1D1D),
        filled: true,
        hintText: "Search for your task...",
        hintStyle: GoogleFonts.lato(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: const Color(0xffAFAFAF),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
      ),
    );
  }
  //     End

  // Appbar Function
  //     Start
  AppBar _showAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff121212),
      leading: Padding(
        padding: const EdgeInsets.only(left: 33),
        child: Image.asset('assets/sort.png'),
      ),
      title: Text(
        'Todo',
        style: GoogleFonts.lato(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: Color(0xffFFFFFF),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Image.asset(
            'assets/user.png',
            height: 42,
            width: 42,
          ),
        )
      ],
    );
  }
  //    End
}
