import 'package:appbys/src/loadingpage.dart';
import 'package:appbys/src/loginpage.dart';
import 'package:appbys/src/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      initialRoute: "/",
      routes: {
        "/": (context) => LoadingPage(),
        "/loginPage": (context) => LoginLogin(),
        "/register": (context) => MyRegister(),
      },
    );
  }
}

