import 'package:flutter/material.dart';
import 'package:app_food/pantallas/principal/componentes/app_bar.dart';
import 'package:app_food/pantallas/principal/componentes/body.dart';

class PrincipalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size tamanio = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: tamanio.height,
        width: tamanio.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/ico/fast-food.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Aqui se llamaran los componentes
          ],
        ),
      ),
    );
  }
}
