import 'package:flutter/material.dart';
import 'package:app_food/constantes.dart';
import 'package:flutter/painting.dart';
import 'package:app_food/pantallas/principal/componentes/default_button.dart';

class MenuItems extends StatelessWidget {
  final String titulo = "";
  final Function press;
  const MenuItems({
    Key key;
    this.titulo;
    this.press;
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        titulo.toUpperCase(),
        style: TextStyle(color: kTexto.withOpacity(0.3), fontWeight: FontWeight.bold),
      ),
    );
  }
}
