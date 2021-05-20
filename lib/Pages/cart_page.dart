import 'package:flutter/material.dart';
import 'package:note_taking_app/Models.dart/cart.dart';
import 'package:note_taking_app/Widgets/themes.dart';
import 'package:note_taking_app/core/store.dart';
import 'package:pay/pay.dart';
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
    final _paymentItems = <PaymentItem>[];
    final Cartmodel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            mutations: {RemoveMutation},
            notifications: {},
            builder: (context, _) {
              _paymentItems
                  .add(PaymentItem(amount: _cart.totalPrice.toString(),
                  label: "Ease tech Product",
                  status: PaymentItemStatus.final_price));
              return "\$${_cart.totalPrice}"
                  .text
                  .color(context.theme.accentColor)
                  .xl5
                  .make();
            },
          ),
          30.widthBox,
          GooglePayButton(
            width: 200,height: 50,
            paymentConfigurationAsset: 'google_pay.json',
            paymentItems: _paymentItems,
            style: GooglePayButtonStyle.black,
            type: GooglePayButtonType.pay,
            margin: const EdgeInsets.only(top: 15.0),
            onPaymentResult: (s) {
              print(s);
            },
            loadingIndicator: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //         SnackBar(content: "Buying not supported yet!".text.make()));
          //   },
          //   child: "Buy".text.color(Colors.white).make(),
          //   style: ButtonStyle(
          //       backgroundColor:
          //           MaterialStateProperty.all(context.theme.buttonColor)),
          // ).w32(context)
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
    VxState.watch(context, on: [RemoveMutation]);

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
                    RemoveMutation(_cart.items[index]);
                  }),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
