import 'package:flutter/material.dart';
import 'package:note_taking_app/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Prabal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days of flutter by $name'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
