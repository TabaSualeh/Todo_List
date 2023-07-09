import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/controller/todoContoller.dart';

class searchBar extends StatefulWidget {
  final ControllerTodo tController;
  final Function state;
  const searchBar({required this.tController, required this.state});

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff979797),
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: const Color(0xffFFFFFF),
      ),
      onChanged: (value) {
        widget.tController.searchTodo(value);
        widget.state();
      },
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
          color: const Color(0xffAFAFAF).withOpacity(0.65),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
      ),
    );
  }
}
