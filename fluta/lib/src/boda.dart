import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:algo/src/CtrlCart.dart';
import 'package:algo/src/CtrlFavoritos.dart';

class CateBodas extends StatelessWidget {
  final String userName = 'John Doe';
  final List<Sillas> products = [
    Sillas(
        'Sillas con adorno de tela y flor blanca',
        '50.000x40',
        'silla de metal adornada con tela '
            'palo de rosa y flor blanca adornando el moño',
        'assets/images/bodas.jpeg'),
    Sillas('Sillas "forever" "always"', '50.000x40', '',
        'assets/images/boda1.png'),
    Sillas('Sillas de madera "Mr" y "Mrs"', '50.000x40',
        'Descripción del producto 3', 'assets/images/boda2.jpeg'),
    Sillas('Sillas con adorno de tela rosa pastel', '50.000x40',
        'Descripción del producto 1', 'assets/images/boda3.jpeg'),
    Sillas('Sillas de madera negra con adorno de tela blanco', '50.000x40',
        'Descripción del producto 2', 'assets/images/boda4.jpeg'),
    Sillas('Sillas con adorno natural, hojas y flores blancas', '50.000x40',
        'Descripción del producto 3', 'assets/images/boda5.jpeg'),
    Sillas('Sillas de bambú blanco con girnalda de flores', '50.000x40',
        'Descripción del producto 2', 'assets/images/boda6.jpeg'),
    Sillas('Sillas de madera blanca', '50.000x40', 'Descripción del producto 3',
        'assets/images/boda7.jpeg'),
  ];
  final List<Detalles1> Details = [
    Detalles1(
        'Sillas con adorno de tela y flor blanca',
        '50.000',
        'silla de metal adornada con tela '
            'palo de rosa y flor blanca adornando el moño',
        'assets/images/bodas.jpeg',
        'Cantidad disponible: 1 (500 unidades)',
        'XR',
        'Metal'),
    Detalles1(
        'Sillas "forever" "always"',
        '50.000',
        'Sillas con estampado en el espaldar de "forever" "always"'
            'con guirnalda de flores en la cabecera',
        'assets/images/boda1.png',
        'Cantidad disponible: 1 (200 unidades)',
        'MBX3',
        'Madera de bambú blanco'),
    Detalles1(
        'Sillas de madera "Mr" y "Mrs"',
        '50.000',
        'Sillas de madera de roble con colgante '
            'de iniciales de "Mr" y "Mrs" dorada, con colgantes de flores',
        'assets/images/boda2.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Madera de roble'),
    Detalles1(
        'Sillas con adorno de tela rosa pastel',
        '50.000',
        'Sillas con hermosa decoración de tela cruzada de color '
            'rosa pastel, sillas doradas, con un moño a mitad'
            'de la tela',
        'assets/images/boda3.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Metal con diseño amaderado'),
    Detalles1(
        'Sillas con adorno de tela blanco',
        '50.000',
        'Sillas de metal con adorno de tela blanco'
            'semitransparente con decoracion de rosas naranja y blanca',
        'assets/images/boda4.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Metal negro'),
    Detalles1(
        'Sillas con adorno natural',
        '50.000',
        'Sillas con adornos de hojas y rosas blancas, '
            'con listones blancos, silla de madera café',
        'assets/images/boda5.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Madera caoba'),
    Detalles1(
        'Sillas de bambú con girnalda de flores',
        '50.000',
        'Sillas de bambú blanco con girnalda de rosas rosadas'
            ' y hojas',
        'assets/images/boda6.jpeg',
        'Cantidad disponible: 1 (300 unidades)',
        'MDR',
        'Madera de roble blanco'),
    Detalles1(
        'Sillas de madera blanca',
        '50.000',
        'Sillas de madera cuadrada blanco',
        'assets/images/boda7.jpeg',
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
                // Navegar a la página de mi cuenta
                Navigator.pushNamed(context, "/micuenta");
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailPage(Detailss: Details[index]),
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
                          products[index].precio,
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
  final String precio;
  final String description;
  final String imageUrl;

  Sillas(this.name, this.precio, this.description, this.imageUrl);
}

class Detalles1 {
  final String name;
  final String precio;
  final String description;
  final String imageUrl;
  final String unidadProducto;
  final String modelo;
  final String material;

  Detalles1(this.name, this.precio, this.description, this.imageUrl,
      this.unidadProducto, this.modelo, this.material);
}

class ProductDetailPage extends StatelessWidget {
  final Detalles1 Detailss;

  ProductDetailPage({required this.Detailss});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Detalles del Producto'),
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
                    'John Doe',
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
                // Navegar a la página de mi cuenta
                Navigator.pushNamed(context, "/micuenta");
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Detailss.imageUrl),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        Detailss.name,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {
                          double price = double.parse(Detailss.precio);
                          Favoritos favProduct = Favoritos(
                              name: Detailss.name,
                              precio: price,
                              description: Detailss.description,
                              imageUrl: Detailss.imageUrl);
                          Provider.of<FavProvider>(context, listen: false)
                              .addToFav(favProduct);
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
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {

                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Cerrar',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    Detailss.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    Detailss.precio,
                    style: TextStyle(fontSize: 16),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        width: 400,
                        height: 50,
                        child: Text(
                          Detailss.unidadProducto,
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
                      onPressed: () {
                        Navigator.pushNamed(context, "/domicilios");
                      },
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
                      onPressed: () {
                        double price = double.parse(Detailss.precio);
                        Product product = Product(
                            name: Detailss.name,
                            precio: price,
                            description: Detailss.description,
                            imageUrl: Detailss.imageUrl);
                        Provider.of<CartProvider>(context, listen: false)
                            .addToCart(product);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(Detailss.imageUrl),
                                  SizedBox(height: 8),
                                  Text(
                                    Detailss.name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    Detailss.description,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/domicilios");
                                  },
                                  child: Text('Alquilar ahora'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/carrito");
                                  },
                                  child: Text('Carrito'),
                                ),
                              ],
                            );
                          },
                        );
                      },
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
                    Detailss.modelo,
                    style: TextStyle(fontSize: 16, fontFamily: 'Open Sans'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    Detailss.material,
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
