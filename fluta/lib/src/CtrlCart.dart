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

class CartItem {
  final Product product;
  int quanty;

  CartItem({required this.product, required this.quanty});
}

class CartProvider extends ChangeNotifier {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addToCart(Product product) {
    final existingCartItem = _items.firstWhere(
        (item) => item.product.name == product.name,
        orElse: () => CartItem(product: product, quanty: 0));
    if (existingCartItem.quanty == 0) {
      _items.add(CartItem(product: product, quanty: 1));
    } else {
      existingCartItem.quanty++;
    }

    notifyListeners();
  }

  void removeCarrito(Product product) {
    _items.removeWhere((item) => item.product.name == product.name);
    notifyListeners();
  }

  double calculateTotal() {
    double total = 0;
    for (var item in _items) {
      total += (item.product.precio * item.quanty) as double;
    }
    return total;
  }
}
