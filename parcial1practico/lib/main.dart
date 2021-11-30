import 'package:flutter/material.dart';

void main() {
  runApp(Parcial1App());
}

class Parcial1App extends StatelessWidget {
  const Parcial1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pantalla para Parcial 1",
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
        title: Text("Registro"),
      ),
      body: cuerpoApp(),
    );
  }
}

Widget cuerpoApp() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('img/fondomar.jpg'), fit: BoxFit.cover),
    ),
    child: Center(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          cabecera(),
          SizedBox(
            height: 15,
          ),
          mensaje(), //El mensaje de bienvenida
          SizedBox(
            height: 30,
          ),
          campoCarnet(),
          SizedBox(
            height: 10,
          ),
          campoNombre(),
          SizedBox(
            height: 10,
          ),
          campoApellidos(),
          SizedBox(
            height: 10,
          ),
          campoDireccion(),
          SizedBox(
            height: 10,
          ),
          campoCorreo(),
          SizedBox(
            height: 10,
          ),
          campoPassword(),
          SizedBox(
            height: 10,
          ),
          campoRePassword(),
          SizedBox(
            height: 10,
          ),
          botonGuardar(),
          SizedBox(
            height: 10,
          ),
          botonCancelar(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ),
  );
}

Widget cabecera() {
  return Column(
    children: <Widget>[Image.asset('img/usuario.png')],
  );
}

Widget mensaje() {
  return Center(
    child: Text(
      "Datos personales",
      style: TextStyle(
        color: Colors.white,
        fontSize: 60,
      ),
    ),
  );
}

Widget campoCarnet() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.keyboard),
          hintText: "Carnet",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget campoNombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box),
          hintText: "Nombre",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget campoApellidos() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box_outlined),
          hintText: "Apellidos",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget campoDireccion() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
    child: TextField(
      keyboardType: TextInputType.multiline,
      maxLines: 5,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.add_location_rounded),
          hintText: "Direccion",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget campoPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          hintText: "Password",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget campoRePassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          hintText: "Repetir Password",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget campoCorreo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
    child: TextField(
      keyboardType: TextInputType.multiline,
      maxLines: 1,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Correo",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

//Este sería para crear los botones //Gracias xD
Widget botonGuardar() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {},
      child: Text(
        "Guardar",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: "Verdana",
        ),
      ));
}

Widget botonCancelar() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.greenAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {},
      child: Text(
        "Cancelar",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: "Verdana",
        ),
      ));
}
