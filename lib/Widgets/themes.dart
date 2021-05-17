import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      cardColor: Colors.white,
      canvasColor: creamcolor,
      buttonColor: darkBluishColor,
      accentColor: Colors.deepPurple,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: Theme.of(context).textTheme),
      primaryColor: Colors.deepPurple,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      fontFamily: GoogleFonts.poppins().fontFamily);

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      cardColor: Colors.black,
      brightness: Brightness.dark,
      canvasColor: darkcreamColor,
      accentColor: Colors.white,
      buttonColor: lightBluishColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          textTheme: Theme.of(context).textTheme.copyWith(
              headline6:
                  context.textTheme.headline6.copyWith(color: Colors.white))),
      primaryColor: Colors.deepPurple,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      fontFamily: GoogleFonts.poppins().fontFamily);

//colors
  static Color creamcolor = Color(0xfff5f5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
  static Color darkcreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
}
