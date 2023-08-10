import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String userName =
      'John Doe'; // Nombre de usuario (puedes obtenerlo dinámicamente)
  static String iwbf = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Inicio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Open Sans',
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Lógica para realizar la búsqueda
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
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    userName,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Navega a la segunda página cuando se presione la primera imagen
                Navigator.pushNamed(context, "/bodas");
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/bodas.jpeg', // Ruta y nombre de la primera imagen
                      width: 330,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Text(
                      'BODA',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navega a la tercera página cuando se presione la segunda imagen
                Navigator.pushNamed(context, "/airelibre");
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/eventos al aire libre.jpeg', // Ruta y nombre de la segunda imagen
                      width: 330,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Text(
                      'AIRE LIBRE',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navega a la tercera página cuando se presione la tercera imagen
                Navigator.pushNamed(context, "/otros");
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/otros.jpg', // Ruta y nombre de la tercera imagen
                      width: 330,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Text(
                      'OTROS',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
