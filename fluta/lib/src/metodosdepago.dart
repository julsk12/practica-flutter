import 'package:flutter/material.dart';

class MetodosPago extends StatefulWidget {
  @override
  State<MetodosPago> createState() => _MetodosPagoState();
}

class _MetodosPagoState extends State<MetodosPago> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0),
              margin: EdgeInsets.only(top: 20, bottom: 0, right: 300, left: 0),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context, "/");
                },
                child: Image.asset('assets/images/flecha-izquierda.png',
                  width: 30,
                  height: 30,
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
              leading: Icon(Icons.attach_money, size: 60, color: Colors.black),
              title: Text(
                'PSE',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Navegar a la página de inicio
                Navigator.pushNamed(context, "/homePage");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
              leading: Icon(Icons.credit_card, size: 60, color: Colors.black),
              title: Text(
                'Tarjeta',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/tarjeta");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
              leading: Icon(Icons.local_shipping_outlined, size: 60, color: Colors.black),
              title: Text(
                'Contra entrega',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Navegar a la página de favoritos
                Navigator.pop(context, '/');
              },
            ),
          ],
        ),
      ),
    );

  }
}
