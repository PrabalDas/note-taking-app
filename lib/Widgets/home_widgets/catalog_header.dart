import 'package:flutter/cupertino.dart';
import 'package:note_taking_app/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .align(TextAlign.left)
            .xl5
            .bold
            .color(context.accentColor)
            .make(),
        "Trending Products".text.bold.xl.make()
      ],
    );
  }
}
