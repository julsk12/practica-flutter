import 'package:flutter/material.dart';

class Product {
  final String name;
  final double precio;
  final String description;
  final String imageUrl;

  Product({
    required this.name,
    required this.precio,
    required this.description,
    required this.imageUrl,
  });
}

class FavItem {
  final Product products;
  int quantity;

  FavItem({required this.products, required this.quantity});
}

class FavProvider extends ChangeNotifier {
  List<FavItem> _items = [];

  List<FavItem> get items => _items;

  void addToFav(Product products) {
    final existingFavItem = _items.firstWhere(
        (item) => item.products.name == products.name,
        orElse: () => FavItem(products: products, quantity: 0));
    if (existingFavItem.quantity == 0) {
      _items.add(FavItem(products: products, quantity: 1));
    } else {
      existingFavItem.quantity++;
    }

    notifyListeners();
  }

  void removeFav(Product product) {
    _items.removeWhere((item) => item.products.name == product.name);
    notifyListeners();
  }
}
