import 'package:flutter/material.dart';

class MedievoPage extends StatefulWidget {


  @override
  State<MedievoPage> createState() => _MedievoPageState();
}

class _MedievoPageState extends State<MedievoPage> {
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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pink[100],
            child: const Text("u can with all"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pink[200],
            child: const Text('keep calm, all be ok'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pink[300],
            child: const Text('Be ok, not be ok'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pink[400],
            child: const Text('u can scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pink[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pink[600],
            child: const Text('Revolution, they...'),
          ),
        ],
      )

    );
  }
}
