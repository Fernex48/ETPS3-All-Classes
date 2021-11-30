import 'package:flutter/material.dart';
import 'Principal/pantalla/principal.dart';

void main() {
  runApp(const CafeeSv());
}

class CafeeSv extends StatelessWidget {
  const CafeeSv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Principal(),
    );
  }
}
