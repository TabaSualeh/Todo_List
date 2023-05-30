// ignore_for_file: prefer_const_constructor, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: _showAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              builder: (context) {
                return _showBottomSheet();
              });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Color(0xff8687E7),
      ),
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
            child: Padding(
              padding: const EdgeInsets.only(bottom: 95.0),
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return ListBar(listTodo: _todolist[index]);
                }),
                itemCount: _todolist.length,
              ),
            ),
          ),
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
            'assets/icons/search.png',
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

  // Bottom Sheet Function
  //     Start
  Container _showBottomSheet() {
    String? title, description;
    return Container(
      color: Color(0xff363636),
      padding: EdgeInsets.fromLTRB(
          25, 25, 25, MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Add Task",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                if (value != null) {
                  title = value;
                }
              },
              autofocus: true,
              cursorColor: const Color(0xff979797),
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xffFFFFFF),
              ),
              decoration: InputDecoration(
                fillColor: Color(0xff363636),
                filled: true,
                hintText: "Add Title",
                hintStyle: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xffFFFFFF).withOpacity(0.87),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff979797))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff979797))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 22.25),
            child: TextField(
              onChanged: ((value) {
                if (value != null) {
                  description = value;
                }
              }),
              cursorColor: const Color(0xff979797),
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xffFFFFFF),
              ),
              decoration: InputDecoration(
                fillColor: Color(0xff363636),
                filled: true,
                hintText: "Add Description",
                hintStyle: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xffFFFFFF).withOpacity(0.87),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff979797))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff979797))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage("assets/icons/timer.png"),
                      color: Color(0xffFFFFFF).withOpacity(0.87),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage("assets/icons/tag.png"),
                      color: Color(0xffFFFFFF).withOpacity(0.87),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage("assets/icons/flag.png"),
                      color: Color(0xffFFFFFF).withOpacity(0.87),
                    )),
                Spacer(),
                IconButton(
                    onPressed: () {
                      if (title != null && description != null) {
                        _addTodoItem(title!, description!);
                        Navigator.pop(context);
                      }
                    },
                    icon: ImageIcon(
                      AssetImage("assets/icons/send.png"),
                      color: Color(0xff8687E7),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
  //     End

  void _addTodoItem(String title, String description) {
    setState(() {
      _todolist.add(
        Todo(
          title: title,
          description: description,
          todoTime: DateTime.now(),
        ),
      );
    });
  }

  // Appbar Function
  //     Start
  AppBar _showAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff121212),
      leading: Padding(
        padding: const EdgeInsets.only(left: 33),
        child: Image.asset('assets/icons/sort.png'),
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
