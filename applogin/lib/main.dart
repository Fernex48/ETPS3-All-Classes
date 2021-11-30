import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login App",
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
        title: Text("Login App"),
      ),
      body: cuerpoApp(),
    );
  }
}

Widget cuerpoApp() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('img/splash.png'), fit: BoxFit.cover),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          mensaje(),
          SizedBox(
            height: 30,
          ),
          camposUser(),
          SizedBox(
            height: 10,
          ),
          camposPass(),
          SizedBox(
            height: 20,
          ),
          botonEntrar(),
        ],
      ),
    ),
  );
}

Widget mensaje() {
  return Text(
    "Iniciar",
    style: TextStyle(
      color: Colors.blue,
      fontSize: 50,
    ),
  );
}

Widget camposUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "User", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget camposPass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget botonEntrar() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {},
      child: Text(
        "Enter",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: "Verdana",
        ),
      ));
}
