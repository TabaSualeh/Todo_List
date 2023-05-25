import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? callback;
  final double? fontsize;
  final double? width;
  final double? height;
  final Color? buttonBackgroundColor;
  final Color? fontColor;
  final double leftMargin;
  final double rightMargin;
  final double topMargin;
  final double bottomMargin;
  final double bottompad;
  final double toppad;
  final double leftpad;
  final double rightpad;

  MyButton({
    required this.btnName,
    this.callback,
    this.height = 40.0,
    this.width = 90.0,
    this.fontsize = 20,
    this.buttonBackgroundColor = Colors.white,
    this.fontColor = const Color(0xff2F80ED),
    this.bottomMargin = 0.0,
    this.leftMargin = 0.0,
    this.topMargin = 0,
    this.rightMargin = 0,
    this.bottompad = 0,
    this.leftpad = 0,
    this.rightpad = 0,
    this.toppad = 0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: EdgeInsets.only(
          left: leftpad,
          right: rightpad,
          bottom: bottompad,
          top: toppad,
        ),
        margin: EdgeInsets.only(
          left: leftMargin,
          right: rightMargin,
          bottom: bottomMargin,
          top: topMargin,
        ),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: buttonBackgroundColor,
        ),
        child: Center(
          child: Text(
            btnName,
            style: GoogleFonts.lato(
              fontSize: fontsize,
              color: fontColor,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
