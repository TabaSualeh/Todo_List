import 'package:flutter/material.dart';

class IconsInBottomSheet extends StatelessWidget {
  final String imageName;
  final VoidCallback? onPressedFunction;
  Color BorderColor = const Color(0xffFFFFFF);
  double? opacity = 1.0;

  IconsInBottomSheet(
      {required this.imageName,
      this.onPressedFunction,
      this.BorderColor = const Color(0xffFFFFFF),
      this.opacity = 1.0});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressedFunction,
        icon: ImageIcon(
          AssetImage("assets/icons/$imageName.png"),
          color: BorderColor.withOpacity(opacity!),
        ));
  }
}
