import 'package:flutter/material.dart';
import 'package:app_flutter/componentes/navbar_superior.dart';

class MenuPrincipal extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        botones(),
        this.infoSerie(),
      ],
    );
  }

  Widget infoSerie() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <
        Widget>[
      SizedBox(width: 7.0),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 8.0),
      Text('Telenovelas',
          style: TextStyle(color: Colors.white, fontSize: 16.0)),
      SizedBox(width: 7.0),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 8.0),
      Text('Suspenso', style: TextStyle(color: Colors.white, fontSize: 16.0)),
      SizedBox(width: 7.0),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 8.0),
      Text('Acción', style: TextStyle(color: Colors.white, fontSize: 16.0)),
      SizedBox(width: 7.0),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 8.0),
      Text('Comedia', style: TextStyle(color: Colors.white, fontSize: 16.0)),
      SizedBox(width: 7.0),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 8.0),
      Text('Drama', style: TextStyle(color: Colors.white, fontSize: 16.0)),
      SizedBox(width: 7.0),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 8.0),
      Text('Infantil', style: TextStyle(color: Colors.white, fontSize: 16.0)),
    ]);
  }

  Widget infoPeli() {
    return Row();
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
            "https://static2.srcdn.com/wordpress/wp-content/uploads/2018/04/Infinity-Gauntlet-Origins-MCU-Thanos.jpg?q=50&fit=crop&w=767&h=450&dpr=1.5",
            height: 400,
            fit: BoxFit.cover),
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.black45,
              Colors.black,
            ],
          )),
        ),
        SafeArea(
          child: NavBarSuperior(),
        ),
      ],
    );
  }
}

Widget botones() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.thumb_up, color: Colors.white),
                SizedBox(width: 8.0),
                Icon(Icons.thumb_down, color: Colors.white),
              ],
            ),
            SizedBox(height: 3.0),
            Text(
              "Clasifica",
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          ],
        ),
        FlatButton.icon(
          onPressed: () {},
          color: Colors.white,
          icon: Icon(Icons.play_arrow, color: Colors.black),
          label: Text("Play"),
        ),
        FlatButton.icon(
          onPressed: () {},
          color: Colors.white38,
          icon: Icon(Icons.info_outline, color: Colors.grey),
          label: Text("Información"),
        ),
        //SizedBox(width: 15.0),
      ],
    ),
  );
}
