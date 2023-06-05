// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/models/listforTodo.dart';

class ListBar extends StatefulWidget {
  final Todo listTodo;

  ListBar({
    required this.listTodo,
  });

  @override
  State<ListBar> createState() => _ListBarState();
}

class _ListBarState extends State<ListBar> {
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
            child: Checkbox(
                checkColor: Color(0xff363636),
                activeColor: Colors.white,
                shape: CircleBorder(),
                side: BorderSide(
                    width: 1.5, color: Color(0x0fffffff).withOpacity(0.87)),
                value: widget.listTodo.isComplete,
                onChanged: (bool? value) {
                  setState(() {
                    widget.listTodo.isComplete = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.listTodo.title,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Text(
                  // '${DateFormat.yMMMEd().format(now);}',
                  DateFormat('E, MMM dd yyyy  HH:mm')
                      .format(widget.listTodo.todoDate),
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
