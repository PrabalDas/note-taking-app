import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_taking_app/Pages/cart_page.dart';
import 'package:note_taking_app/Pages/home_detail_page.dart';
import 'package:note_taking_app/Pages/home_page.dart';
import 'package:note_taking_app/Pages/login_page.dart';
import 'package:note_taking_app/Widgets/themes.dart';
import 'package:note_taking_app/core/store.dart';
import 'package:note_taking_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';


void main() {
  runApp(VxState(
    
    store: MyStore(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringvegetables(thaila: true);
    int days = 30;
    String _name = "Prabal";

    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
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
