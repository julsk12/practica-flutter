import 'package:flutter/material.dart';

class MiBoda extends StatefulWidget {
  @override
  _MiBodaState createState() => _MiBodaState();
}

class _MiBodaState extends State<MiBoda> {
  List<TituloConElementos> _items = [
    TituloConElementos("HOGAR", ["Vajilla", "Vasos", "Copas de vidrio", "Licuadora"]),
    TituloConElementos("MODA", ["Vestido", "Corbata", "Zapatos", "Bolso"]),
    TituloConElementos("OTROS", ["Vajilla", "Vasos", "Copas de vidrio", "Licuadora"]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Julieth Sierra, matrimonio', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          elevation: 1,
          expandedHeaderPadding: EdgeInsets.all(0),
          dividerColor: Colors.grey,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !isExpanded;
            });
          },
          children: _items.map<ExpansionPanel>((TituloConElementos item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.titulo),
                );
              },
              body: ListTile(
                title: Column(
                  children: item.elementos.map<Widget>((elemento) {
                    return ListTile(
                      title: Text(elemento),
                    );
                  }).toList(),
                ),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class TituloConElementos {
  String titulo;
  List<String> elementos;
  bool isExpanded;

  TituloConElementos(this.titulo, this.elementos, {this.isExpanded = false});
}
