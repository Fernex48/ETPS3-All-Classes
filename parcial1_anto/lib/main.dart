import 'package:flutter/material.dart';

void main() {
  runApp(ParcialPrimera());
}

class ParcialPrimera extends StatelessWidget {
  const ParcialPrimera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial 1 pantalla",
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
        title: Text("Agregar usuario"),
      ),
      body: cuerpoApp(),
    );
  }
}

Widget cuerpoApp() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('img/splash.jpg'), fit: BoxFit.cover),
    ),
    child: Center(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          imagenCabecera(),
          SizedBox(
            height: 15,
          ),
          mensaje(),
          SizedBox(
            height: 35,
          ),
          carnetText(),
          SizedBox(
            height: 10,
          ),
          nombreText(),
          SizedBox(
            height: 10,
          ),
          apellidosText(),
          SizedBox(
            height: 10,
          ),
          direccionText(),
          SizedBox(
            height: 10,
          ),
          passText(),
          SizedBox(
            height: 10,
          ),
          passRepeatText(),
          SizedBox(
            height: 10,
          ),
          correoText(),
          SizedBox(
            height: 10,
          ),
          guardarBoton(),
          SizedBox(
            height: 10,
          ),
          cancelarBoton(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ),
  );
}

Widget imagenCabecera() {
  return Column(
    children: <Widget>[Image.asset('img/iconouser.png')],
  );
}

Widget mensaje() {
  return Center(
    child: Text(
      "DATOS PERSONALES",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontFamily: "Arial Black",
      ),
    ),
  );
}

Widget carnetText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Carnet",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget nombreText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Nombre",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget apellidosText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Apellidos",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget direccionText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      keyboardType: TextInputType.multiline,
      maxLines: 5,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Direccion",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget passText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Password",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget passRepeatText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Repetir Password",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget correoText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Correo electronico",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget guardarBoton() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      onPressed: () {},
      child: Text(
        "Guardar",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontFamily: "Arial",
        ),
      ));
}

Widget cancelarBoton() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blueGrey,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      onPressed: () {},
      child: Text(
        "Cancelar",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontFamily: "Arial",
        ),
      ));
}
