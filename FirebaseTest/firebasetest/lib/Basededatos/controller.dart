// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';

CollectionReference collectionReference =
    FirebaseFirestore.instance.collection("usuarios");
/*Select */
void getUsuarios() async {
  //generar query snapshot
  QuerySnapshot usuarios = await collectionReference.get();
  if (usuarios.docs.isNotEmpty) {
    for (var documentos in usuarios.docs) {
      print(documentos.data());
      //user.add(documentos.data());
    }
  }
}

/*Insert */
void InsertarUsuario() async {
  return collectionReference
      .add({'nombre': 'Francisco López', 'ocupacion': 'Carpintero'})
      .then((value) => print("Registro agregado"))
      .catchError((error) => print("Fallo en insertar el registro: $error"));
}

/*Actualizar */
void ActualizarUsuario() async {
  return collectionReference
      .doc('prx5E6q6EXLJwRGo1E1l')
      .update({'ocupacion': 'Gerente'})
      .then((value) => print("Registro actualizado"))
      .catchError((error) => print("Fallo en actualizar el registro: $error"));
}

/*Borrar */
void BorrarUsuario() async {
  return collectionReference
      .doc('prx5E6q6EXLJwRGo1E1l')
      .delete()
      .then((value) => print("Registro eliminado"))
      .catchError((error) => print("Fallo en borrar el registro: $error"));
}
