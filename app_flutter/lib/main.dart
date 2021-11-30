import 'package:flutter/material.dart';
import 'package:app_flutter/paginas/inicio.dart';

void main() {
  runApp(appPeli());
}

// ignore: camel_case_types
class appPeli extends StatelessWidget {
  const appPeli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InicioPagina(),
    );
  }
}
