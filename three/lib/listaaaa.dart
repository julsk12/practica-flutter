import 'package:flutter/material.dart';

class MyListPage extends StatefulWidget {


  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.rectangle),
              title: Text('Grid view'),
              onTap: () {
                Navigator.pushNamed(context, "/medievo");
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money_rounded),
              title: Text('Money money money'),
              onTap: () {
                Navigator.pushNamed(context, "/row");
              },
            ),
            ListTile(
              leading: Icon(Icons.warning),
              title: Text('Warning'),
              onTap: () {
                Navigator.pushNamed(context, "/wrong");
              },
            ),
            ListTile(
              leading: Icon(Icons.bedtime_rounded),
              title: Text('Bed time'),
              onTap: () {
                Navigator.pushNamed(context, "/ships");
              },
            ),
          ],
        ),

      ),

    );
  }
}
