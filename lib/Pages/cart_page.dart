import 'package:flutter/material.dart';
import 'package:note_taking_app/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart ';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
    );
  }
}
