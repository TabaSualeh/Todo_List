import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/widgets/IconsInBottomSheet.dart';

class CustomBottomSheet extends StatefulWidget {


  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff363636),
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
            child: showTextFieldinBottom("Add Title", true),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 22.25),
            child: showTextFieldinBottom("Add Description", false),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: Row(
              children: [
                IconsInBottomSheet(
                    imageName: 'timer',
                    onPressedFunction: _selectDateTimeTogether,
                    opacity: 0.87),
                IconsInBottomSheet(
                    imageName: 'tag', onPressedFunction: () {}, opacity: 0.87),
                IconsInBottomSheet(
                    imageName: 'flag', onPressedFunction: () {}, opacity: 0.87),
                Spacer(),
                IconsInBottomSheet(
                    imageName: 'send',
                    onPressedFunction: () => tController.sendButton(
                        title!, description!, todoDate!, context),
                    BorderColor: Color(0xff8687E7))
              ],
            ),
          ),
        ],
      ),
    );
    
  }
}