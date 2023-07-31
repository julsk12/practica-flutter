import 'package:flutter/material.dart';
import 'package:algo/src/register.dart';
import 'package:algo/src/loginpage.dart';

class LoginPage extends StatelessWidget {
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
              'assets/images/loginregister.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Inicia sesión para acceder a tu cuenta y disfrutar de nuestros servicios de alquiler de sillas.',
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
                      Navigator.pushNamed(context, MyRegister.dy);
                    },
                    child: Text('Registrarse'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // Color de fondo del botón
                      onPrimary: Colors.white, // Color del texto del botón
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Open Sans',
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
                      Navigator.pushNamed(context, LoginLogin.liv);
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // Color de fondo del botón
                      onPrimary: Colors.white, // Color del texto del botón
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Open Sans',
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
