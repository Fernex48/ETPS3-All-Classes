import 'package:flutter/material.dart';
import 'package:flutter_geoo/app/ui/pages/home/painter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;
import 'dart:typed_data';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();
  Map<MarkerId, Marker> _markers = Map();

  final _initialCameraPosition = const CameraPosition(
    target: LatLng(13.7026093, -89.2229604),
    zoom: 17,
  );
  _onTap(LatLng position) {
    final markerId = MarkerId(_markers.length.toString());
    final marker = Marker(markerId: markerId, position: position);
    setState(() {
      _markers[markerId] = marker;
    });
  }

  Future<Uint8List> myPainterToBitmap(String label) async {
    ui.PictureRecorder recorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(recorder);
    Painter myPainter = Painter();
    myPainter.paint(canvas, Size(300, 70));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:

          /*Center(
        child: Container(
          width: 200,
          height: 50,
          child: CustomPaint(
            painter: Painter(),
          ),
        ),*/

          GoogleMap(
        onMapCreated: _controller.onMapCreated,
        initialCameraPosition: _initialCameraPosition,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: true,
        mapType: MapType.normal,
        markers: Set.of(_markers.values),
        onTap: _onTap,
        compassEnabled: false,
      ),
    );

    /*Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: GoogleMap(
              initialCameraPosition: _initialCameraPosition,
              myLocationButtonEnabled: false,
            ),
          ),
        ],
      ),*/
  }
}
