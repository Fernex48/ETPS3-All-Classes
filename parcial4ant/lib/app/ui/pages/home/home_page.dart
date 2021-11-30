// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_collection_literals

  final _initialCameraPosition =
      const CameraPosition(target: LatLng(13.7006742, -89.2038779), zoom: 14);

  final preset = [
    {
      "id": "chalchuapa",
      "lat": 13.986656,
      "lng": -89.678780,
      "titulo": "Chalchuapa",
      "desc": "Ave 2 de Abril Nte Chalchuapa"
    },
    {
      "id": "el_congo",
      "lat": 13.904165,
      "lng": -89.498815,
      "titulo": "El Congo",
      "desc": "Ave Teniente Ricando Mancía, El Congo"
    }
  ];

  String _selectedOffice = '';

  Iterable<Marker> _buildMarkers() {
    return preset.map((office) {
      return Marker(
          markerId: MarkerId(office['id'].toString()),
          position: LatLng(double.parse(office['lat'].toString()),
              double.parse(office['lng'].toString())),
          infoWindow: InfoWindow(
            title: office['titulo'].toString(),
            snippet: office['desc'].toString(),
          ),
          icon: office['id'] == _selectedOffice
              ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue)
              : BitmapDescriptor.defaultMarker,
          consumeTapEvents: false,
          onTap: () {
            setState(() {
              _selectedOffice = office['id'].toString();
            });
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ubicaciones Empresa DomiciliosSV"),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        markers: _buildMarkers().toSet(),
      ),
    );
  }
}
