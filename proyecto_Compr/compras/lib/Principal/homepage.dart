// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'Contenidos/UploadPhoto.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Principal"),
      ),
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_a_photo),
                iconSize: 40,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const SubirFoto();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
