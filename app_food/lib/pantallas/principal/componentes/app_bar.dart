import 'package:flutter/material.dart';
import 'menu_item.dart';
import 'package:app_food/pantallas/principal/componentes/default_button.dart';

class NavBarApp extends StatelessWidget {
  const NavBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          offset: Offset(0, -2),
          blurRadius:30,
          color: Colors.black.withOpacity(0.16),
        ],
      ),
    );
  }
}
