import 'package:flutter/material.dart';

class MyRowPage extends StatefulWidget {
  static String dy = 'MyRegister';

  @override
  State<MyRowPage> createState() => _MyRowPageState();
}

class _MyRowPageState extends State<MyRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Julieth Sierra',
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
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'asset/image/Captura de pantalla 2023-08-16 103708.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Text('¡NO! ¡NUNCA CONSEGUIRAN UN CENTAVO DE MI!'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyMichiHelado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Julieth Sierra',
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
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'asset/image/michiHelado.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Text('¡MICHI HELADO!'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class WrondaError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Julieth Sierra',
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
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'asset/image/dsadsad-1.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Text('WARNING'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
