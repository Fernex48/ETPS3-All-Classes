import 'package:flutter/material.dart';

void main() {
  runApp(AppCategorias());
}

class AppCategorias extends StatelessWidget {
  //const Medicamentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Categorías",
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
      body: cuerpoApp(),
      //bottomNavigationBar: barraFooter(),
    );
  }
}

//Todo el cuerpo de la app, en donde se mandan a invocar todos los elementos creados más abajo
Widget cuerpoApp() {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xAA00F4FF),
    ),
    child: Center(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          tituloPantalla(),
          SizedBox(
            height: 15,
          ),
          campoBuscar(),
          SizedBox(
            height: 15,
          ),
          contenedorCategoria(),
          SizedBox(
            height: 25,
          ),
          botonRegresar(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ),
  );
}

//Titulo de la pantalla
Widget tituloPantalla() {
  return Container(
    height: 55,
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xAACEFF4E),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
    alignment: Alignment.center,
    child: Text(
      "Medicamentos",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
  );
}

//Campo de texto para buscar productos
Widget campoBuscar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(30.0),
            ),
          ),
          prefixIcon: Icon(Icons.search),
          hintText: "Buscar producto",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

//El contenedor para todos los botones de las categorías
Widget contenedorCategoria() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xAAD2FEFF),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    alignment: Alignment.center,
    child: Column(
      children: <Widget>[
        SizedBox(height: 15),
        Text(
          "Categorías",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        SizedBox(height: 20),
        botonCategoria("Gripe, tos y asma"),
        SizedBox(height: 15),
        botonCategoria("Salud visual"),
        SizedBox(height: 15),
        botonCategoria("Primeros auxilios"),
        SizedBox(height: 15),
        botonCategoria("Nutrición y dieta"),
        SizedBox(height: 15),
        botonCategoria("Piel"),
        SizedBox(height: 15),
        botonCategoria("VItaminas y minerales"),
        SizedBox(height: 25),
        //Intento de hacer un listview que NO utilice toda la pantalla.
        /*Container(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              
            ],
          ),
        ),*/
      ],
    ),
  );
}

//Widget para la creación del botón de la categoría, al invocarlo, se debe brindar una cadena
//con el nombre que tendrá el botón. Esto para que no se deba codificar un widget por cada botón.

Widget botonCategoria(String nombreBoton) {
  // ignore: deprecated_member_use
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 25),
    child: ButtonTheme(
      minWidth: double.infinity,
      height: 45.0,
      child: FlatButton(
          color: Colors.blue[800],
          //padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
          onPressed: () {},
          child: Text(
            nombreBoton,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: "Tahoma",
            ),
          )),
    ),
  );
}

//Método para el botón "Regresar" más actualizado
Widget botonRegresar() {
  // ignore: deprecated_member_use
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 100),
    child: ButtonTheme(
      minWidth: double.infinity,
      height: 45.0,
      child: FlatButton(
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          //padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
          onPressed: () {},
          child: Text(
            "Regresar",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: "Tahoma",
            ),
          )),
    ),
  );
}

// Primer método del botón Regresar
/*Widget botonRegresar2() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      onPressed: () {},
      child: Text(
        "Regresar",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontFamily: "Arial",
        ),
      ));
}*/

//Una barra de navegación en la parte inferior que por el momento no se utiliza
/*BottomNavigationBar barraFooter() {
  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back_outlined), title: Text("Regresar")),
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Menu")),
    ],
  );
}*/
