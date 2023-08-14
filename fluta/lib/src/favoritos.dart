import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:algo/src/CtrlFavoritos.dart';

class favoritos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Favoritos'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
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
                Navigator.pushNamed(context, "/notificaciones");
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Mi cuenta'),
              onTap: () {
                // Navegar a la página de mi cuenta
                Navigator.pushNamed(context, "/micuenta");
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
                itemCount: favProvider.items.length,
                itemBuilder: (context, index) {
                  final favItem = favProvider.items[index];
                  return ListTile(
                    leading: Image.asset(favItem.favoritos.imageUrl),
                    title: Text(favItem.favoritos.name),
                    subtitle: Text(favItem.favoritos.description),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        favProvider.removeFav(favItem.favoritos);
                      },
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
