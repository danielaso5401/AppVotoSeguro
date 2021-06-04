import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pages/Admin.dart';
import 'package:flutter_application_1/pages/Validar.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'VOTO SEGURO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final usuario = TextEditingController();
    final password = TextEditingController();
    String usu = '';
    String pas = '';
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            login(usuario, password, usu, pas, context),
            SizedBox(
              height: 5,
            ),
            page_admin(context),
          ],
        ),
      ),
    );
  }
}

Widget page_admin(BuildContext context) {
  return RaisedButton(
      shape: StadiumBorder(),
      color: Colors.blueGrey[600],
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Text(
        "Votar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Validar()));
      });
}

Widget login(usuario, password, usu, pas, BuildContext context) {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Login().titulo(),
          Login().nombre(),
          Login().campousuario(usuario),
          Login().campocontrasena(password),
          //Login().roles(),
          SizedBox(
            height: 30,
          ),
          Login().botonentrar(usu, pas, usuario, password, context),
          //registrar()
        ],
      ),
    ),
  );
}
