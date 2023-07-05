// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: const Color(0xff8687E7),
            onPrimary: Colors.white,
            secondary: const Color(0xff363636),
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.white,
            background: Colors.black,
            onBackground: Colors.white,
            surface: Colors.black,
            onSurface: Colors.white,
          )),
      home: login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
