
import 'package:flutter/material.dart';

class LoginLogin extends StatefulWidget {
  static String liv = 'login_login';

  @override
  State<LoginLogin> createState() => _LoginLoginState();
}

class _LoginLoginState extends State<LoginLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                margin: EdgeInsets.only(top: 10, bottom: 0, right: 300, left: 0),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context, "/");
                  },
                  child: Image.asset('assets/images/flecha-izquierda.png',
                    width: 20,
                  height: 20,),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  child: Text(
                    '¡Inicia sesion!',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                margin: EdgeInsets.only(top: 0, bottom: 30),
                child: Text(
                  'Bienvenido de vuelta. Inicia sesión para ver las novedades.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              TextField(
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Open Sans',
                  color: Colors.black,
                ),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  hintText: 'Correo o numero de telefono',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Open sans',
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: 'Correo o celular',
                  filled: true,
                  fillColor: Color(0xFFFEC9FF), // Color del fondo
                  hoverColor: Color(0xFFFEC9FF), // Color del borde cuando se pasa el mouse (web)
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFFA8A4FF)), // Color del borde
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFFA8A4FF)), // Color del borde cuando está enfocado
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFFA8A4FF)), // Color del borde cuando no está enfocado
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                ),
              ),
              Divider(
                height: 15.0,
                color: Colors.white,
              ),
              TextField(
                obscureText: true,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Open Sans',
                  color: Colors.black,
                ),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Open sans',
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: 'Contraseña',
                  filled: true,
                  fillColor: Color(0xFFFEC9FF), // Color del fondo
                   // Color del borde cuando está enfocado
                  hoverColor: Color(0xFFFEC9FF), // Color del borde cuando se pasa el mouse (web)
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFFFEC9FF)), // Color del borde
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFFA8A4FF)), // Color del borde cuando está enfocado
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFFA8A4FF)), // Color del borde cuando no está enfocado
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                ),
              ),
              Divider(
                height: 330.0,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                margin: EdgeInsets.only(top: 0, bottom: 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/register");
                  },
                  child: Text(
                    '¿No tienes cuenta? Registrate',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Divider(
                height: 0.0,
                color: Colors.white,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),

                      ),
                      child: Text(
                        'Iniciar sesion',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      backgroundColor: Color(0xFFFEC9FF),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
