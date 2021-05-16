import 'package:flutter/material.dart';
import 'package:note_taking_app/Models.dart/catalog.dart';
import 'package:note_taking_app/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        backgroundColor: MyTheme.creamcolor,
        body: SafeArea(
          child: Column(
            children: [
              Hero(
                      tag: catalog.id.toString(),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      height: 30,
                      child: Container(
                          width: context.screenWidth,
                          color: Colors.white,
                          child: Column(
                            children: [
                              catalog.name.text.xl4
                                  .color(MyTheme.darkBluishColor)
                                  .bold
                                  .make()
                                  .pOnly(left: 8),
                              catalog.desc.text.xl
                                  .textStyle(context.captionStyle)
                                  .make()
                                  .pOnly(left: 8),
                            ],
                          ).py64())))
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child:
              ButtonBar(alignment: MainAxisAlignment.spaceBetween, children: [
            "\$${catalog.price}".text.bold.red800.xl4.make(),
            ElevatedButton(
                onPressed: () {},
                child: "Buy".text.make(),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                )).wh(100, 50)
          ]).p16(),
        ));
  }
}
