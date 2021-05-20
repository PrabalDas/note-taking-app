import 'package:flutter/material.dart';
import 'package:note_taking_app/Models.dart/cart.dart';
import 'package:note_taking_app/Widgets/themes.dart';
import 'package:note_taking_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart ';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [_CartList().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Cartmodel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .color(context.theme.accentColor)
              .xl5
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying not supported yet!".text.make()));
            },
            child: "Buy".text.color(Colors.white).make(),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
   final Cartmodel _cart = (VxState.store as MyStore).cart;

   
    return _cart.items.isEmpty
        ? "Nothing to show".text.makeCentered()
        : ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    _cart.removeproducts(_cart.items[index]);
                  }),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
