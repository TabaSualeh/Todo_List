import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class imageOnEmpty extends StatelessWidget {
  const imageOnEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage("assets/icons/checkList.png"),
          width: 227,
          height: 227,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            "What do you want to do Today?",
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: const Color(0xffFFFFFF).withOpacity(0.87)),
          ),
        ),
        Text(
          "Tap + to add your tasks",
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color(0xffFFFFFF).withOpacity(0.87)),
        )
      ],
    );
  }
}