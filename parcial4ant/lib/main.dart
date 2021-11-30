import 'package:flutter/material.dart';
import 'package:parcial4ant/app/ui/pages/home/home_page.dart';

void main() {
  runApp(const AppMaps());
}

class AppMaps extends StatelessWidget {
  const AppMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapa sucursales Domicilios SV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
