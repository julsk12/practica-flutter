import 'package:flutter/material.dart';

class notificaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Notificaciones'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
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
                  Navigator.pushNamed(context, "/favoritos");
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
                  Navigator.pushNamed(context, "/micuenta");
                },
              ),
            ],
          ),
        ),
        body: Dismissible(
          key: UniqueKey(),
          direction: DismissDirection.startToEnd,
          onDismissed: (direction) {
          },
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16),
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black45,
                width: 2.0,
              ),
            ),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/ofertas.jpeg',
                    width: 100,
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        height: 15.0,
                      ),
                      Text(
                        'Gran semana de ofertas',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Desde el 18 hasta el 30',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Aproveche la gran oportunidad',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
