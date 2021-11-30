import 'package:app_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class ItemRedondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(
                  color: Colors.blue,
                  width: 3,
                ),
              ),
              child: ClipOval(
                child: Image.network(
                    "https://static2.srcdn.com/wordpress/wp-content/uploads/2018/04/Infinity-Gauntlet-Origins-MCU-Thanos.jpg?q=50&fit=crop&w=767&h=450&dpr=1.5"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
