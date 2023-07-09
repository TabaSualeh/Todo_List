import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/widgets/BottomSheet.dart';

class showAddTaskSheet {
  final BuildContext context;
  showAddTaskSheet({required this.context});

  AddTaskSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (context) {
          return CustomBottomSheet();
        });
  }

  
}