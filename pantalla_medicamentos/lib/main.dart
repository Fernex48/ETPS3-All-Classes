import 'package:flutter/material.dart';

void main() {
  runApp(AppMedicamentos());
}

class AppMedicamentos extends StatelessWidget {
  //const Medicamentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Medicamentos",
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
          contenedorMedicina(),
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
      color: const Color(0xAAFA94FD),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
    alignment: Alignment.center,
    child: Text(
      "Categoría seleccionada",
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
Widget contenedorMedicina() {
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
          "Medicinas",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        SizedBox(height: 15),
        botonMedicina(
            "img/med1.jpg", "ABRILAR JARABE CON MENTOL FRASCO X 200ML"),
        SizedBox(height: 15),
        botonMedicina(
            "img/med2.jpg", "AMBROXOL SUIZOS 15MG/5ML SOLUCION FRASCO 120ML"),
        SizedBox(height: 15),
        botonMedicina(
            "img/med3.jpg", "ANTIFLUDES JARABE INFANTIL FRASCO X 60 ML"),
        SizedBox(height: 15),
        /*botonMedicina("img/med4.jpg",
            "ANTIGRIP COMBINADO AM-PM X 6 SOBRES DE 2 TABLETAS"),
        SizedBox(height: 15),*/
      ],
    ),
  );
}

//Widget para la creación del botón de la categoría, al invocarlo, se debe brindar una cadena
//con el nombre que tendrá el botón. Esto para que no se deba codificar un widget por cada botón.

Widget botonMedicina(String fuente, String medicina) {
  // ignore: deprecated_member_use
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 25),
    child: ButtonTheme(
      minWidth: double.infinity,
      height: 45.0,
      child: FlatButton(
        color: Colors.white,
        //padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
        onPressed: () {},
        child: Container(
          child: Row(
            children: <Widget>[
              imagenBoton(fuente),
              SizedBox(width: 15),
              Flexible(
                child: Text(
                  medicina,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "Tahoma",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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

Widget imagenBoton(String url) {
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 120,
            width: 120,
            child: Image.asset(url),
          ),
        ],
      ),
    ],
  );
}
