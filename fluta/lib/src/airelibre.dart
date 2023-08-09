import 'package:flutter/material.dart';

class CateAire extends StatelessWidget {
  final String userName = 'John Doe';
  final List<Sillas> products = [
    Sillas(
        'Producto 1', 'Descripción del producto 1', 'assets/images/aire1.jpeg'),
    Sillas(
        'Producto 2', 'Descripción del producto 2', 'assets/images/aire2.jpeg'),
    Sillas(
        'Producto 3', 'Descripción del producto 3', 'assets/images/aire3.jpeg'),
    Sillas(
        'Producto 1', 'Descripción del producto 1', 'assets/images/aire4.jpeg'),
    Sillas(
        'Producto 2', 'Descripción del producto 2', 'assets/images/aire5.jpeg'),
    Sillas(
        'Producto 3', 'Descripción del producto 3', 'assets/images/aire6.jpeg'),
    Sillas(
        'Producto 2', 'Descripción del producto 2', 'assets/images/eventos al aire libre.jpeg'),
    Sillas(
        'Producto 3', 'Descripción del producto 3', 'assets/images/aire7.jpeg'),
  ];
  final List<Detalles2> Details2 = [
    Detalles2(
        'Producto 1',
        'Descripción del producto 1',
        'assets/images/aire1.jpeg',
        'Cantidad disponible: 1 (500 unidades)',
        'XR',
        'Metal'),
    Detalles2(
        'Producto 2',
        'Descripción del producto 2',
        'assets/images/aire2.jpeg',
        'Cantidad disponible: 1 (200 unidades)',
        'MBX3',
        'Madera de bambú'),
    Detalles2(
        'Producto 3',
        'Descripción del producto 3',
        'assets/images/aire3.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Madera de roble'),
    Detalles2(
        'Producto 1',
        'Descripción del producto 1',
        'assets/images/aire4.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Metal con diseño amaderado'),
    Detalles2(
        'Producto 2',
        'Descripción del producto 2',
        'assets/images/aire5.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Metal negro'),
    Detalles2(
        'Producto 3',
        'Descripción del producto 3',
        'assets/images/aire6.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Madera caoba'),
    Detalles2(
        'Producto 2',
        'Descripción del producto 2',
        'assets/images/eventos al aire libre.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Madera de roble blanco'),
    Detalles2(
        'Producto 3',
        'Descripción del producto 3',
        'assets/images/aire7.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Madera de roble'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Bodas',
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
                Navigator.pop(context, "/");
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Número de columnas en la cuadrícula
          crossAxisSpacing: 10.0, // Espacio entre las columnas
          mainAxisSpacing: 10.0, // Espacio entre las filas
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navegar a la página de detalles del producto cuando se hace clic
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailPage(Details: Details2[index]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(products[index].imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.black.withOpacity(0.7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index].name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          products[index].description,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Sillas {
  final String name;
  final String description;
  final String imageUrl;

  Sillas(this.name, this.description, this.imageUrl);
}

class Detalles2 {
  final String name;
  final String description;
  final String imageUrl;
  final String unidadProducto;
  final String modelo;
  final String material;

  Detalles2(this.name, this.description, this.imageUrl, this.unidadProducto,
      this.modelo, this.material);
}

class ProductDetailPage extends StatelessWidget {
  final Detalles2 Details;

  ProductDetailPage({required this.Details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Detalles del Producto'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(Details.imageUrl),
                        SizedBox(height: 8),
                        Text(
                          Details.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          Details.description,
                          style: TextStyle(fontSize: 16),
                        ),
                        // Otros detalles del producto...
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Details.imageUrl),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Details.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    Details.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 400,
                        height: 50,
                        child: Text(
                          Details.unidadProducto,
                          style: TextStyle(fontSize: 16),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                          BorderRadius.circular(25), // Border radius
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 400,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Alquilar ahora',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      backgroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 400,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Carrito',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      backgroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Información del producto',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans'),
                  ),
                  Text(
                    Details.modelo,
                    style: TextStyle(fontSize: 16, fontFamily: 'Open Sans'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    Details.material,
                    style: TextStyle(fontSize: 16, fontFamily: 'Open Sans'),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 400,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Para mas información no olvide en contactarse',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      backgroundColor: Colors.black,
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
