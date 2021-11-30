import 'package:flutter/material.dart';

void main() => runApp(FlutterUtec());

class FlutterUtec extends StatelessWidget {
  const FlutterUtec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Mi app Flutter Utec", home: Inicio());
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
        appBar: AppBar(title: Text("Flutter UTEC")),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/c/c3/Rocket_League_logo.svg"),
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/c/c3/Rocket_League_logo.svg"),
            )
          ],
        ));
  }
}
