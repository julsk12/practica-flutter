import 'package:flutter/material.dart';
import 'package:three/column.dart';
import 'package:three/dicckss.dart';
import 'package:three/listaaaa.dart';
import 'package:three/medieval.dart';
import 'package:three/row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          "/lista": (context) => MyListPage(),
          "/ships": (context) => SweetNight(),
          "/medievo": (context) => MedievoPage(),
          "/marry": (context) => MiBoda(),

        });
  }
}
