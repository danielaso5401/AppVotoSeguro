import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Admin.dart';
import 'package:flutter_application_1/pages/Visitante.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Login extends StatelessWidget {
  //const Login({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  Widget titulo() {
    return Image.network(
      'https://votoinformadohn.com/images/logo.png',
      width: 120,
      height: 120,
    );
  }

  Widget nombre() {
    return Text("Ingresar",
        style: TextStyle(
            color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold));
  }

  Widget campousuario(usuario) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        controller: usuario,
        decoration: InputDecoration(
          hintText: "usuario",
          fillColor: Colors.blueGrey[600],
          filled: true,
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget campocontrasena(password) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        controller: password,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "password",
          fillColor: Colors.blueGrey[600],
          filled: true,
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget botonentrar(usu, pas, usuario, password, BuildContext context) {
    return RaisedButton(
        shape: StadiumBorder(),
        highlightColor: Colors.white,
        color: Colors.blueGrey[600],
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        onPressed: () {
          usu = usuario.text;
          pas = password.text;
          //ingresar(usu, pas);
          print(usu);
          print(pas);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Visitante()));
          //context, MaterialPageRoute(builder: (context) => Admin()));
        },
        child: Text(
          "Ingresar",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ));
  }
}

void ingresar(usu, pas) async {
  //var url = Uri.parse('http://127.0.0.1:8002/create_usuario');
  var url = Uri.parse('http://192.168.0.14:8002/create_usuario');
  var response = await http.post(url,
      headers: {
        "content-type": "application/json",
      },
      body: jsonEncode({
        "usuario_name": usu,
        "usuario_usuario": "cod@ulasalle.edu.pe",
        "usuario_contraseña": pas,
        "roles_idRoles": 1
      }));
}
