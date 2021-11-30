import 'package:app_food/constantes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FoodUtec());
}

class FoodUtec extends StatelessWidget {
  const FoodUtec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Food - UTEC',
      theme: ThemeData(
        primaryColor: kColorPrimario,
      ),
    );
  }
}
