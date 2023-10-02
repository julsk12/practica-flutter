import 'package:flutter/material.dart';


class LoadingPage extends StatelessWidget {
  static String id = 'login_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/Analyze-fotor-20230928181033.png',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Bienvenido a B&S. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Inicia sesión para acceder a tu cuenta y disfrutar de nuestros servicios '
                    'de gestión y contabilidad',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            // Botones para registro y login
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.only(top: 200, bottom: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: Text('Registrarse', style: TextStyle(color: Colors.black,),),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFEC9FF), // Color de fondo del botón
                      onPrimary: Color(0xFFA8A4FF), // Color del texto del botón
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                      ),
                      side: BorderSide(
                        color: Color(0xFFFEC9FF), // Color del borde del botón
                        width: 2.0, // Ancho del borde
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30), right: Radius.zero),
                      ),
                      fixedSize: Size(150, 50),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/loginPage");
                    },
                    child: Text('Login',
                    style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFEC9FF), // Color de fondo del botón
                      onPrimary: Color(0xFF658762),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                      ),// Color del texto del botón
                      side: BorderSide(
                        color: Color(0xFFFEC9FF), // Color del borde del botón
                        width: 2.0, // Ancho del borde
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.zero, right: Radius.circular(30)),
                      ),
                      fixedSize: Size(150, 50),
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
