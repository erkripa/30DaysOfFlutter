import 'package:awesom/models/catalog.dart';

class CartModel {
//Singlaton calasses

  static final cartModel = CartModel.internal();
  CartModel.internal();

  factory CartModel() => cartModel;

// CataLog Fields
  CatalogModel _catalog;

// Collections of IDS of each Items
  final List<int> _itemIds = [];

  // Get CataLog
  CatalogModel get catalog => _catalog;

  // Set Catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }
  // Get Items in the Cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
