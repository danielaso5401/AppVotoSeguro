import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sub_pages/candiato_estadisticas.dart';
import 'package:flutter_application_1/pages/sub_pages/lista_candidatos.dart';

class Visitante extends StatelessWidget {
  const Visitante({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 200),
          logo(context),
          SizedBox(
            height: 70,
          ),
          lista_cand(context),
          SizedBox(height: 140),
          retroceder(),
        ],
      ),
    ));
  }

  Widget retroceder() {
    return Align(
      alignment: Alignment.bottomRight,
      child: BackButton(),
    );
  }

  Widget logo(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Image.network(
        "https://votoinformadohn.com/images/logo.png",
        height: 200.0,
      ),
    );
  }

  Widget lista_cand(BuildContext context) {
    return MaterialButton(
        shape: StadiumBorder(),
        highlightColor: Colors.white,
        color: Colors.blueGrey[600],
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Lista_candidatos()));
        },
        child: Text(
          "Lista de candidatos",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ));
  }
}
