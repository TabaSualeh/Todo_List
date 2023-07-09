import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar {
  // Appbar Function
  //     Start
  AppBar showAppBar() {
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
}
  //End


