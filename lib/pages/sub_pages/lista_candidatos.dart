import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sub_pages/Listvotocandidato.dart';

class Lista_Candidatos extends StatelessWidget {
  const Lista_Candidatos({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 55.0),
          Listvotocandidato().titulo(),
          Listvotocandidato().fotoscandidato1(),
          Listvotocandidato().candidato1(),
          Listvotocandidato().botonvotar(context),
          Listvotocandidato().fotoscandidato2(),
          Listvotocandidato().candidato2(),
          Listvotocandidato().botonvotar(context),
        ],
      ),
    );
  }
}
