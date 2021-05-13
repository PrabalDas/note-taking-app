import 'package:flutter/material.dart';
import 'package:note_taking_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Prabal";

    // bool ismale = true;
    // num temp = 30.66;
    // var day = "Tueday";
    // const pi = 3.14;
    // final

    return MaterialApp(
      home: HomePage(),
    );
  }
}
