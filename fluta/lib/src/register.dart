import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  static String dy = 'MyRegister';

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  margin: EdgeInsets.only(top: 70, bottom: 30),
                  child: Text(
                    '¡Registrate para ver más contenidos!',
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
                  'Para crear su cuenta ingrese todos su datos',
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
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Nombre completo',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Open sans',
                        fontWeight: FontWeight.bold),
                    labelText: 'Nombre completo',
                    filled: true,
                    fillColor: Colors.black,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Identificación',
                    hintStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Identificación',
                    filled: true,
                    fillColor: Colors.black,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Fecha de nacimiento',
                    hintStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Fecha de nacimiento',
                    filled: true,
                    fillColor: Colors.black,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Celular',
                    hintStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Celular',
                    filled: true,
                    fillColor: Colors.black,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Correo electronico',
                    hintStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Correo electronico',
                    filled: true,
                    fillColor: Colors.black,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                obscureText: true,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Contraseña',
                    hintStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Contraseña',
                    filled: true,
                    fillColor: Colors.black,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                margin: EdgeInsets.only(top: 0, bottom: 30),
                child: Text(
                  '¿Ya tienes una cuenta? Inicia sesión',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.5,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w500,
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
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Registrarse',
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
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
