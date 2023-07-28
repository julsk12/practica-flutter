import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              'assets/images/loginregister.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(0.0),
              child: Text(
                'Bienvenido a EasySeat. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 25, bottom: 200),
                child: Text(
                  'Inicia sesión para acceder a tu cuenta y disfrutar de nuestros servicios de alquiler de sillas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
            ),
// Botones para registro y login
            Row(
              // width: double.infinity,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onHorizontalDragEnd: (details) {
                    if (details.primaryVelocity! > 0) {
                      // _redirectToLogin(); // Redirigir a la página de login
                    } else if (details.primaryVelocity! < 0) {
                      // _redirectToRegister(); // Redirigir a la página de registro
                    }
                  },
                  child: Container(
                    height: 55,
                    width: 170,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50.5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(30) , right: Radius.zero),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16.5, fontFamily: 'Open Sans', fontWeight: FontWeight.bold,),
                    ),
                  ),
                ),
                // SizedBox(width: 20), // Espacio entre los botones
                GestureDetector(
                  onHorizontalDragEnd: (details) {
                    if (details.primaryVelocity! > 0) {
                      // _redirectToLogin(); // Redirigir a la página de login
                    } else if (details.primaryVelocity! < 0) {
                      // _redirectToRegister(); // Redirigir a la página de registro
                    }
                  },
                  child: Container(
                    height: 55,
                    width: 170,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.horizontal(left: Radius.zero , right: Radius.circular(30)),
                    ),
                    child: Text(
                      'Registro',
                      style: TextStyle(color: Colors.white, fontSize: 16.5, fontFamily: 'Open Sans', fontWeight: FontWeight.bold,),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
