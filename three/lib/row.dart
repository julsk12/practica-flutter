import 'package:flutter/material.dart';

class MyRowPage extends StatefulWidget {
  @override
  State<MyRowPage> createState() => _MyRowPageState();
}

class _MyRowPageState extends State<MyRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          'Julieth Sierra',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Open Sans',
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'asset/image/Captura de pantalla 2023-08-16 103708.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/lista');
                    },
                    child: Text('¡NO! ¡NUNCA CONSEGUIRAN UN CENTAVO DE MI!',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyMichiHelado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          'Julieth Sierra',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Open Sans',
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'asset/image/michiHelado.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Text('¡MICHI HELADO!'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class WrondaError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          'Julieth Sierra',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Open Sans',
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'asset/image/dsadsad-1.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Text('WARNING'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SweetNight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF252440),
        foregroundColor: Colors.white,
        title: Text(
          'Julieth Sierra',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Open Sans',
          ),
        ),
      ),
      body: Container(
        color: Color(0xFF1C4C96),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'asset/image/icon_198x278.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Text("On my pillow ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.5)),
                ),
                Container(
                  child: Text(
                      "Can't get me tired ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.5)),
                ),
                Container(
                  child: Text(
                          "Sharing my fragile truth",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.5)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
