import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_taking_app/Pages/home_page.dart';
import 'package:note_taking_app/Pages/login_page.dart';
import 'package:note_taking_app/utils/routes.dart';

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
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage()
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
