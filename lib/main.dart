import 'package:flutter/material.dart';
import 'package:note_taking_app/Pages/home_page.dart';
import 'package:note_taking_app/Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringvegetables(thaila: true);
    int days = 30;
    String name = "Prabal";

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}

bringvegetables({
  @required bool thaila,
  int rupees = 100,
}) {
  // Take Cycle
  //Go to sec 16
}
