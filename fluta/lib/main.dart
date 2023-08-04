import 'package:algo/src/home.dart';
import 'package:algo/src/login.dart';
import 'package:algo/src/loginpage.dart';
import 'package:algo/src/register.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open Sans',

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/homePage",
      routes: {
        "/": (context) => LoginPage(),
        "/loginPage": (context) => LoginLogin(),
        "/register": (context) => MyRegister(),
        "/homePage": (context) => HomePage(),

      },
    );
  }
}
