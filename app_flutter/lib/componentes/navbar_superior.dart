import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  const NavBarSuperior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'img/netflix1.png',
          width: 30,
        ),
        Text('Inicio', style: TextStyle(color: Colors.white, fontSize: 16.0)),
        Text('Series TV',
            style: TextStyle(color: Colors.white, fontSize: 16.0)),
        Text('Novedades',
            style: TextStyle(color: Colors.white, fontSize: 16.0)),
        Text('Peliculas',
            style: TextStyle(color: Colors.white, fontSize: 16.0)),
        Text('Mi lista', style: TextStyle(color: Colors.white, fontSize: 16.0)),

        /*Container(
          color: Colors.blue,
          height: 50.0,
          width: 50.0,
        ),
        Container(
          color: Colors.green,
          height: 50.0,
          width: 50.0,
        ),
        Container(
          color: Colors.red,
          height: 50.0,
          width: 50.0,
        ),*/
      ],
    );
  }
}
