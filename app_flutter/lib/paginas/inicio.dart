import 'package:flutter/material.dart';
import 'package:app_flutter/componentes/menu_principal.dart';
import 'package:app_flutter/componentes/object_roundStyle.dart';
import 'package:app_flutter/componentes/item_img.dart';

class InicioPagina extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          MenuPrincipal(),
          listadoH("Tendencias", ItemRedondo(), 12),
          SizedBox(
            height: 8,
          ),
          listadoH("Programas", ItemImagen(), 21),
          SizedBox(
            height: 8,
          ),
          listadoH("Acción", ItemImagen(), 21),
          SizedBox(
            height: 8,
          ),
          listadoH("Series", ItemImagen(), 21),
          SizedBox(
            height: 8,
          ),
          listadoH("Infantiles", ItemImagen(), 21),
          SizedBox(
            height: 8,
          ),
        ],
      ),
      bottomNavigationBar: barraFooter(),
    );
  }
}

BottomNavigationBar barraFooter() {
  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
    ],
  );
}

Widget listadoH(String tituloMovie, Widget obj, int cantidad) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Text(tituloMovie,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
      Container(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cantidad,
          itemBuilder: (context, index) {
            return obj;
          },
        ),
      ),
    ],
  );
}
