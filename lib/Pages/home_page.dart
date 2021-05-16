import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note_taking_app/Models.dart/catalog.dart';
import 'package:note_taking_app/Widgets/Item_widget.dart';
import 'package:note_taking_app/Widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Prabal";

  @override
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString('assets/files/catalog.json');
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData['products'];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Catalog App",
        ),
      ),
      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: CatalogModel.items[index],
                );
              },
              itemCount: CatalogModel.items.length,
            )
          : Center(child: CircularProgressIndicator()),
      drawer: MyDrawer(),
    );
  }
}
