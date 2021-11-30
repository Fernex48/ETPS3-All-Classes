// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:parcial2practico/models/ApiGif.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(const ParcialDos());
}

class ParcialDos extends StatefulWidget {
  const ParcialDos({Key? key}) : super(key: key);

  @override
  _ParcialDosState createState() => _ParcialDosState();
}

class _ParcialDosState extends State<ParcialDos> {
  late Future<List<ApiGif>> _listaImg;
  Future<List<ApiGif>> _getImg() async {
    String cuerpo;
    final responsive = await http.get(
      Uri.parse("https://utecclass.000webhostapp.com/post.php"),
    );
    List<ApiGif> pict = [];
    if (responsive.statusCode == 200) {
      print(responsive.body);
      cuerpo = utf8.decode(responsive.bodyBytes);
      final jsonData = jsonDecode(cuerpo);

      for (var item in jsonData["id"]) {
        pict.add(
            ApiGif(item["content"], item["title"] /*["downsized"]["url"]*/));
      }
      return pict;
      //print(jsonData["data"][0]["type"]);

    } else {
      throw Exception("No se puede conectar");
    }
  }

  @override
  void initState() {
    super.initState();
    _listaImg = _getImg();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial 2",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Parcial 2"),
        ),
        body: FutureBuilder(
          future: _listaImg,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              //print(snapshot.data);
              //return const Text("Correcto");
              return ListView(
                children: _listaImgs(snapshot.data),
              );
            } else if (snapshot.hasError) {
              //print(snapshot.error);
              //return Text("Error");
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _listaImgs(data) {
    List<Widget> imag = [];
    for (var itemg in data) {
      imag.add(
        Card(
          child: Column(
            children: [
              Text(itemg.content, style: const TextStyle(fontSize: 14.0)),
              Text(itemg.title),
            ],
          ),
        ),
      );
    }
    return imag;
  }
}
