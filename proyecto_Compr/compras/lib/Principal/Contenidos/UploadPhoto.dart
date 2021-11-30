// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'dart:io';
import 'package:firebase/firebase.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:firebase_picture_uploader/firebase_picture_uploader.dart';

class SubirFoto extends StatefulWidget {
  const SubirFoto({Key? key}) : super(key: key);

  @override
  _subirFotoState createState() => _subirFotoState();
}

class _subirFotoState extends State<SubirFoto> {
  File? sampleImage;
  String? campo;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subir Fotografia"),
        centerTitle: true,
      ),
      body: Center(
        child: sampleImage == null
            ? const Text("Seleccionar Imagen")
            : enableUpload(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: "Agregar Imagen",
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }

  Future getImage() async {
    final imgPicker = ImagePicker();
    var imgGallery = await imgPicker.pickImage(source: ImageSource.gallery);
    setState(() {
      sampleImage = File(imgGallery!.path);
    });
  }

  Widget enableUpload() {
    return Container(
      child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Image.file(sampleImage!, height: 300.0, width: 600.0),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Descripcion"),
                validator: (value) {
                  return value!.isEmpty ? "El campo es requerido" : null;
                },
                onSaved: (value) {
                  campo = value;
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: const Text("Guardar"),
                onPressed: subirImg,
              ),
            ],
          )),
    );
  }

//Método para almacenar la info en la BD
  void subirImg() async {
    if (validarGuardar()) {
      final StorageReference imgUpload = FirebaseStorage.instance
          .ref()
          .child("Post Images") as StorageReference;
      var horaKey = DateTime.now();
      imgUpload.child(horaKey.toString() + ".png").put(sampleImage);
      //var imgRuta = await (await UploadTask.onComplete).ref.getDownloadURL();
    }
  }

  bool validarGuardar() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
