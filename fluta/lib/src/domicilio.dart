import 'package:flutter/material.dart';

class Domicilios extends StatefulWidget {

  @override
  State<Domicilios> createState() => _DomiciliosState();
}

class _DomiciliosState extends State<Domicilios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0),
            margin: EdgeInsets.only(top: 20, bottom: 0, right: 10, left: 0),
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context, "/");
                  },
                  child: Image.asset(
                    'assets/images/flecha-izquierda.png',
                    width: 30,
                    height: 30,
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                SizedBox(width: 10),
                Text(
                  'Formulario de domicilio',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 160.0,
                height: 0.0,
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
                autofocus: true,
                decoration: InputDecoration(
                    hintText: 'Departamento',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Open sans',
                        fontWeight: FontWeight.bold),
                    labelText: 'Departamento',
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
                    hintText: 'Ciudad',
                    hintStyle:
                    TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Ciudad',
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
                    hintText: 'Barrio',
                    hintStyle:
                    TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Barrio',
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
                    hintText: 'Tipo de calle',
                    hintStyle:
                    TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Tipo de calle',
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
                    hintText: 'Carrera',
                    hintStyle:
                    TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Carrera',
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
                    hintText: 'Numero',
                    hintStyle:
                    TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Numero',
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
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/metodos");
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Siguiente',
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