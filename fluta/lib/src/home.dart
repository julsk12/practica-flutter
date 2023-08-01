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
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Carrito'),
                onTap: () {
                  // Navegar a la página de carrito
                  Navigator.pop(context);
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
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 25),
          margin: EdgeInsets.only(top: 200, bottom: 10),
          width: 1000,
          height: 2000, // Altura total del contenedor que contiene los botones
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 1000,
                height: 150,
                margin: EdgeInsets.only(top: 0, bottom: 100),// Tamaño del primer botón
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/bodas.jpeg',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.black,
                ),
              ),
              SizedBox(height: 10), // Espacio entre los botones
              Container(
                width: 200,
                height: 150,
                margin: EdgeInsets.only(top: 5, bottom: 200),// Tamaño del segundo botón
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/bodas.jpeg',
                        width: 200,
                        height: 150,
                      ),
                      Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
