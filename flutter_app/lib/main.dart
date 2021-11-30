import 'package:flutter/material.dart';

void main() {
  runApp(Filascol());
}

class Filascol extends StatelessWidget {
  const Filascol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Filas y Columnas",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filas y Columnas"),
      ),
      body: Center(
        child: RaisedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.access_alarm),
                SizedBox(
                  width: 5,
                ),
                Text("Hora actual"),
              ],
            ),
            onPressed: () {
              var hora = DateTime.now();
              print(hora);
            }),
      ),
/*
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text("Inicio", textAlign: TextAlign.center),
          ),
          Text("Col 1"),
          Text("Col 2"),
          Text("Col 3"),
          Text("Col 4"),
        ],
      ),
*/
    );
  }
}
