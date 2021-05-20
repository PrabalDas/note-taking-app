import 'package:flutter/material.dart';
import 'package:note_taking_app/Models.dart/cart.dart';
import 'package:note_taking_app/Models.dart/catalog.dart';
import 'package:note_taking_app/Pages/home_detail_page.dart';
import 'package:note_taking_app/Widgets/themes.dart';
import 'package:note_taking_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Hero(
          tag: catalog.id.toString(),
          child: CatalogImage(
            catalog: catalog,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg
                .color(context.accentColor)
                .bold
                .make()
                .pOnly(left: 8),
            catalog.desc.text
                .textStyle(context.captionStyle)
                .make()
                .pOnly(left: 8),
            ButtonBar(alignment: MainAxisAlignment.spaceBetween, children: [
              "\$${catalog.price}".text.make(),
              _AddToCart(
                catalog: catalog,
              )
            ])
          ],
        ))
      ],
    ).p16())
        .color(context.cardColor)
        .rounded
        .square(152)
        .make()
        .py16();
  }
}

class _AddToCart extends StatelessWidget {
  final Item catalog;

  _AddToCart({Key key, this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]);
    final Cartmodel _cart = (VxState.store as MyStore).cart;

    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isInCart){
        
          AddMutation(catalog);}
       
          // setState(() {});
        },
        child: isInCart ? Icon(Icons.done) : "Buy".text.make(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
        ));
  }
}

class CatalogImage extends StatelessWidget {
  final Item catalog;

  const CatalogImage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      catalog.image,
    ).box.rounded.p8.color(context.canvasColor).make().w32(context);
  }
}
