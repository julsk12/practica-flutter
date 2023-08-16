import 'package:flutter/material.dart';
import 'package:three/column.dart';
import 'package:three/row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejercicio iconos',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => MyHomePage(),
          "/row": (context) => MyRowPage(),
          "/michi": (context) => MyMichiHelado(),
          "/wrong": (context) => WrondaError(),

        });
  }
}
