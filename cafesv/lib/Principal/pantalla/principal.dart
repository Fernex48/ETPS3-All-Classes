import 'package:flutter/material.dart';
import 'package:cafesv/Principal/componetes/cafelista.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: cafeLista(), //Text("Saludos"),
      ),
    );
  }
}
