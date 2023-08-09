import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:algo/src/CtrlCart.dart';

class Carrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de compras'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartProvider.items.length,
              itemBuilder: (context, index) {
                final cartItem = cartProvider.items[index];
                return ListTile(
                  leading: Image.asset(cartItem.product.imageUrl),
                  title: Text(cartItem.product.name),
                  subtitle: Text(cartItem.product.description),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      cartProvider.removeCarrito(cartItem.product);
                    },
                  ),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Valor total: \$${cartProvider.calculateTotal().toStringAsFixed(2)}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Open Sans'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Alquilar'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
