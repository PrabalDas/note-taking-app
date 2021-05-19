import 'package:note_taking_app/Models.dart/catalog.dart';

class Cartmodel {
  //catalog field
  CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items to the cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

//Add item

  void addproducts(Item item) {
    _itemIds.add(item.id);
  }

//remove
  void removeproducts(Item item) {
    _itemIds.remove(item.id);
  }
}
