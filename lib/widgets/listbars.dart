// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/models/listforTodo.dart';

class ListBar extends StatelessWidget {
  final Todo listTodo;

  ListBar({
    required this.listTodo,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16, left: 24, right: 24),
      height: 72,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xff363636),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              'assets/icons/circle.png',
              width: 16,
              height: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${listTodo.title}',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Text(
                  '${listTodo.todoDate.day}-${listTodo.todoDate.month}-${listTodo.todoDate.year} ${listTodo.todoTime.hour}:${listTodo.todoTime.minute}',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffAFAFAF),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
