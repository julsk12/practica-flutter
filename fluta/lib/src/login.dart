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
      body:Container(
        color: Colors.white,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
// Parte superior: Imagen
          Image.network(
            'https://www.experimenta.es/wp-content/uploads/2020/04/Ana-Hill-800x600.jpg',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
// Párrafo de bienvenida
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Bienvenido a EasySeat. ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
              ),
            ),
          ),
// Botones para registro y login
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ GestureDetector(
              onHorizontalDragEnd: (details){
                if(details.primaryVelocity !> 0){
                  // _redirectToLogin();
                }else if (details.primaryVelocity !< 0){
                  // -redirectToRegister();

                }
              },
            )
//               ElevatedButton(
//                 onPressed: () {
// // Acción al presionar el botón de registro
// // Aquí puedes redirigir a la pantalla de registro
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.black,
//                   onPrimary: Colors.white,
//                   elevation: 5,
//                   minimumSize: Size(150, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius:BorderRadius.circular(10),
//
//                   ),
//                 ),
//                 child: Text('Registro'),
//               ),
//               SizedBox(width: 16), // Espacio entre los botones
//               ElevatedButton(
//                 onPressed: () {
// // Acción al presionar el botón de login
// // Aquí puedes redirigir a la pantalla de login
//                 },
//                 child: Text('Login'),
//               ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}
