import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api/models/ApiGif.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(FlutterApi());
}

class FlutterApi extends StatefulWidget {
  FlutterApi({Key? key}) : super(key: key);

  @override
  _FlutterApiState createState() => _FlutterApiState();
}

class _FlutterApiState extends State<FlutterApi> {
  late Future<List<ApiGif>> _listaImg;
  Future<List<ApiGif>> _getImg() async {
    String cuerpo;
    final responsive = await http.get(
      //Uri.https("utecclass.000webhostapp.com", "post.php")
      Uri.parse("https://utecclass.000webhostapp.com/post.php"),
    );
    List<ApiGif> pict = [];
    if (responsive.statusCode == 200) {
      print(responsive.body);

      cuerpo = utf8.decode(responsive.bodyBytes);
      final jsonData = jsonDecode(cuerpo);
      print(jsonData);
      for (var item in jsonData) {
        //ApiGif apii = new ApiGif(item["content"], item["title"]);
        //pict.add(apii);
        pict.add(ApiGif(item["content"], item["title"]));
      }
      return pict;
    } else {
      throw Exception("No se puede conectar");
    }
  }

  void initState() {
    super.initState();
    _listaImg = _getImg();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi aplicación",
      home: Scaffold(
        appBar: AppBar(
          title: Text("API"),
        ),
        body: FutureBuilder(
          future: _listaImg,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              //print(snapshot.data);
              //return Text("Correcto");
              return ListView(
                children: _listaImgs(snapshot.data),
              );
            } else if (snapshot.hasError) {
              //print(snapshot.error);
              //return Text("Error");
            }
            print(snapshot.error);
            return Center(
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
              Text(itemg.content),
              Text(itemg.title),
            ],
          ),
        ),
      );
    }
    return imag;
  }
}
