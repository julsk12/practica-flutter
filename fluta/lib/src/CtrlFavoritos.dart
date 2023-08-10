import 'package:flutter/material.dart';

class Favoritos {
  final String name;
  final double precio;
  final String description;
  final String imageUrl;

  Favoritos({
    required this.name,
    required this.precio,
    required this.description,
    required this.imageUrl,
  });
}

class FavItem {
  final Favoritos favoritos;
  int quantity;

  FavItem({required this.favoritos, required this.quantity});
}

class FavProvider extends ChangeNotifier {
  List<FavItem> _items = [];

  List<FavItem> get items => _items;

  void addToFav(Favoritos favoritos) {
    final existingFavItem = _items.firstWhere(
            (item) => item.favoritos.name == favoritos.name,
        orElse: () => FavItem(favoritos: favoritos, quantity: 0));
    if (existingFavItem.quantity == 0) {
      _items.add(FavItem(favoritos: favoritos, quantity: 1));
    } else {
      existingFavItem.quantity++;
    }

    notifyListeners();
  }

  void removeFav(Favoritos favoritos) {
    _items.removeWhere((item) => item.favoritos.name == favoritos.name);
    notifyListeners();
  }
}
