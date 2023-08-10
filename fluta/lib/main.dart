import 'package:algo/src/CtrlCart.dart';
import 'package:algo/src/CtrlFavoritos.dart';
import 'package:algo/src/airelibre.dart';
import 'package:algo/src/boda.dart';
import 'package:algo/src/favoritos.dart';
import 'package:algo/src/home.dart';
import 'package:algo/src/login.dart';
import 'package:algo/src/loginpage.dart';
import 'package:algo/src/micuenta.dart';
import 'package:algo/src/otros.dart';
import 'package:algo/src/register.dart';
import 'package:flutter/material.dart';
import 'package:algo/src/carrito.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => FavProvider()),
      ],
    child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open Sans',

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/loginPage": (context) => LoginLogin(),
        "/register": (context) => MyRegister(),
        "/homePage": (context) => HomePage(),
        "/bodas": (context) => CateBodas(),
        "/airelibre": (context) => CateAire(),
        "/otros": (context) => CateOtros(),
        "/carrito": (context) => Carrito(),
        "/favoritos": (context) => favoritos(),
        "/micuenta": (context) => MiCuentaPage(),

      },
    ),
    );
  }
}
