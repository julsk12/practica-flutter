import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:algo/src/CtrlCart.dart';

class Carrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Carrito de compras'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Se ha añadido a favoritos',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          // Cerrar el popup
                          Navigator.pop(context);
                        },
                        child: Text('Cerrar'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'John Doe', // Nombre de usuario
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                // Navegar a la página de inicio
                Navigator.pushNamed(context, "/homePage");
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Carrito'),
              onTap: () {
                // Navegar a la página de carrito
                Navigator.pushNamed(context, "/carrito");
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favoritos'),
              onTap: () {
                // Navegar a la página de favoritos
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notificaciones'),
              onTap: () {
                // Navegar a la página de notificaciones
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Mi cuenta'),
              onTap: () {
                // Navegar a la página de mi cuenta
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 16.0),
            Text(
              'Valor total con envio:    \$${cartProvider.calculateTotal().toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Open Sans',
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Cambia el color de fondo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Agrega borde redondeado
                ),
                minimumSize: Size(double.infinity, 50.0),
              ),
              child: Text('Alquilar'),
            ),
          ],
        ),
      ),
    );
  }
}
