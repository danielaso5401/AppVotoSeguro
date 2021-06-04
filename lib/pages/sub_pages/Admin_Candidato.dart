import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

String c_nombre = "";
String c_partido = "";
String c_foto_cand = "";
String c_foto_part = "";
final f_nombre = TextEditingController();
final f_partido = TextEditingController();
final f_foto_cand = TextEditingController();
final f_foto_part = TextEditingController();

class Admin_Candidato extends StatelessWidget {
  const Admin_Candidato({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[300],
          title: const Text('Registro de Candidatos',
              style: TextStyle(color: Colors.white)),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              registro_candidato(),
            ],
          ),
        ));
  }
}

Widget registro_candidato() {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          nom_cand(),
          nom_part_pol(),
          SizedBox(
            height: 10,
          ),
          image_cand(),
          SizedBox(
            height: 10,
          ),
          image_partdio(),
          SizedBox(
            height: 10,
          ),
          enviar(),
        ],
      ),
    ),
  );
}

Widget nom_cand() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: TextField(
      controller: f_nombre,
      decoration: InputDecoration(
        hintText: "Nombre del candidato",
        fillColor: Colors.blueGrey[600],
        filled: true,
        hintStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget nom_part_pol() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: TextField(
      controller: f_partido,
      decoration: InputDecoration(
        hintText: "Nombre del Partido",
        fillColor: Colors.blueGrey[600],
        filled: true,
        hintStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget image_cand() {
  return FlatButton(
      color: Colors.blueGrey[600],
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      onPressed: () => {},
      child: Text(
        "Foto Candidato",
        style: TextStyle(fontSize: 17, color: Colors.white),
      ));
}

Widget image_partdio() {
  return FlatButton(
      color: Colors.blueGrey[600],
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      onPressed: () => {},
      child: Text(
        "Foto Partido",
        style: TextStyle(fontSize: 17, color: Colors.white),
      ));
}

Widget enviar() {
  return FlatButton(
      color: Colors.blueGrey[600],
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      onPressed: () {
        c_nombre = f_nombre.text;
        c_partido = f_partido.text;
        c_foto_cand = "";
        c_foto_part = "";
        ingresar_candidato(c_nombre, c_partido, c_foto_cand, c_foto_part);
      },
      child: Text(
        "Guardar",
        style: TextStyle(fontSize: 17, color: Colors.white),
      ));
}

void ingresar_candidato(nombre, partido, fotocan, fotopar) async {
  //var url = Uri.parse('http://127.0.0.1:8002/create_usuario');
  //var url = Uri.parse('http://192.168.0.14:8002/create_usuario');
  var url = Uri.parse('http://192.168.1.12:8002/create_candidato');

  var response = await http.post(url,
      headers: {
        "content-type": "application/json",
      },
      body: jsonEncode({
        "candidato_name": nombre,
        "candidato_dni": "76655328",
        "candidato_partpol": partido,
        "candidato_fotocant": fotocan,
        "candidato_fotopart": fotopar
      }));
}
