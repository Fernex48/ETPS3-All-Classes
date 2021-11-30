// ignore_for_file: deprecated_member_use, camel_case_types
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medicinasyfarmacias/pantallas/sucursales.dart';
import '../funciones/funciones.dart';

Future firebaseiniciacion() async {
  FirebaseApp initialization = await Firebase.initializeApp();
  return initialization;
}

class Farmacias extends StatefulWidget {
  const Farmacias({Key? key}) : super(key: key);

  @override
  _FarmaciasState createState() => _FarmaciasState();
}

class _FarmaciasState extends State<Farmacias> {
  @override
  //INICIALIZAR LA INSTANCIA DE LA COLECCION A MOSTRAR
  CollectionReference coleccion =
      FirebaseFirestore.instance.collection('farmacias');
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpoApp(
          tituloPantalla("Farmacias"),
          campoBuscar("Buscar farmacia"),
          contenedorFarmacia(),
          const botonRegresar()),
      //bottomNavigationBar: barraFooter(),
    );
    //PARA MOSTRAR LOS DATOS DE FIREBASE
    StreamBuilder(
        stream: coleccion.doc('farmacias').snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            return Text(
              snapshot.data.data()['nombre'],
              style: TextStyle(
                fontSize: 50,
                color: Colors.red,
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}

//El contenedor para todos los botones de las categorías
Widget contenedorFarmacia() {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color(0xAAD2FEFF),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    alignment: Alignment.center,
    child: Column(
      children: const <Widget>[
        SizedBox(height: 15),
        Text(
          "",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        SizedBox(height: 20),
        botonFarmacia(nombreBoton: 'Farmacias Economicas'),
        SizedBox(height: 15),
        botonFarmacia(nombreBoton: 'Farmacias San Nicolas'),
        SizedBox(height: 15),
        botonFarmacia(nombreBoton: 'Farmacia CEFAFA'),
        SizedBox(height: 15),
        botonFarmacia(nombreBoton: 'Farmacialasamericas'),
        SizedBox(height: 15),
        botonFarmacia(nombreBoton: 'Farmacia Beethoven'),
        SizedBox(height: 15),
        botonFarmacia(nombreBoton: 'Farmacia La Salud'),
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

class botonFarmacia extends StatelessWidget {
  const botonFarmacia({Key? key, required this.nombreBoton}) : super(key: key);
  final String nombreBoton;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: ButtonTheme(
        minWidth: double.infinity,
        height: 45.0,
        child: FlatButton(
            color: Colors.blue[800],
            //padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Sucursales()));
            },
            child: Text(
              nombreBoton,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: "Tahoma",
              ),
            )),
      ),
    );
  }
}

/*Widget botonFarmacia2(String nombreBoton) {
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
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: "Tahoma",
            ),
          )),
    ),
  );
}*/

//Método para el botón "Regresar" más actualizado
class botonRegresar extends StatelessWidget {
  const botonRegresar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Regresar",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: "Verdana",
                ),
              ))),
    );
  }
}
