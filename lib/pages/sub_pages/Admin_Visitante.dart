import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pages/Visitante.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

String v_nombre = '';
String v_correo = '';
String v_contra = '';
final f_nombre = TextEditingController();
final f_correo = TextEditingController();
final f_contra = TextEditingController();

class Admin_Visitante extends StatelessWidget {
  const Admin_Visitante({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[300],
          title: const Text('Registro de visitanes',
              style: TextStyle(color: Colors.white)),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              registro_visitante(),
            ],
          ),
        ));
  }
}

Widget registro_visitante() {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          nom_visi(),
          correo(),
          SizedBox(
            height: 10,
          ),
          contra(),
          SizedBox(
            height: 10,
          ),
          enviar(),
        ],
      ),
    ),
  );
}

Widget nom_visi() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: TextField(
      controller: f_nombre,
      decoration: InputDecoration(
        hintText: "Nombre Completo",
        fillColor: Colors.blueGrey[600],
        filled: true,
        hintStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget correo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: TextField(
      controller: f_correo,
      decoration: InputDecoration(
        hintText: "Correo electronico",
        fillColor: Colors.blueGrey[600],
        filled: true,
        hintStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget contra() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: TextField(
      controller: f_contra,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.blueGrey[600],
        filled: true,
        hintStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget enviar() {
  return FlatButton(
      color: Colors.blueGrey[600],
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      onPressed: () {
        v_nombre = f_nombre.text;
        v_correo = f_correo.text;
        v_contra = f_contra.text;
        print(v_nombre);
        print(v_correo);
        print(v_contra);
        ingresar(v_nombre, v_correo, v_contra);
      },
      child: Text(
        "Guardar",
        style: TextStyle(fontSize: 17, color: Colors.white),
      ));
}

void ingresar(usuario, correo, contra) async {
  //var url = Uri.parse('http://127.0.0.1:8002/create_usuario');
  //var url = Uri.parse('http://192.168.0.14:8002/create_usuario');
  var url = Uri.parse('http://192.168.1.12:8002/create_usuario');

  var response = await http.post(url,
      headers: {
        "content-type": "application/json",
      },
      body: jsonEncode({
        "usuario_name": usuario,
        "usuario_usuario": correo,
        "usuario_contraseña": contra,
        "roles_idRoles": 4
      }));
}
