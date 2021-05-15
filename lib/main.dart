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
    String _name = "Prabal";

    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepPurple,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: MyRoutes.homeRoute,
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
