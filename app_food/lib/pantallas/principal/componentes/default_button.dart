import 'package:flutter/material.dart';
import 'package:app_food/constantes.dart';

class DefaultButton extends StatelessWidget {
  final String texto = "";
  final Function press;
  const DefaultButton({Key? key, this.texto, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          color: kColorPrimario,
          onPressed: press,
          child: Text(texto.toUpperCase)),
    );
  }
}
