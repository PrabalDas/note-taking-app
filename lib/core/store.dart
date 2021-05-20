import 'package:note_taking_app/Models.dart/cart.dart';
import 'package:note_taking_app/Models.dart/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  Cartmodel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = Cartmodel();

    cart.catalog = catalog;
  }
}
