// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'formulario.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CRUD",
      home: Formulario(),
    );
  }
}
