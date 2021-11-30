import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late List data;

  Future<String> getData() async {
    var response = await http.get(
        //Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        Uri.parse("https://utecclass.000webhostapp.com/post"),
        headers: {"Accept": "application/json"});

    setState(() {
      data = json.decode(response.body);
    });
    //print(data[1]["title"]);

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listviews"),
      ),
      body: ListView.builder(
        // ignore: unnecessary_null_comparison
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Text(data[index]["id"]),
          );
        },
      ),
    );
  }
}
