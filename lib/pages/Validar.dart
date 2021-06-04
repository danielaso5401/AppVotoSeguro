import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sub_pages/lista_candidatos.dart';

class Validar extends StatelessWidget {
  const Validar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 55.0),
          info(),
          SizedBox(height: 250.0),
          huella(),
          SizedBox(height: 100.0),
          botonvotar(context),
          SizedBox(height: 100.0),
          retroceder(),
        ],
      ),
    ));
  }

  Widget huella() {
    return Image.network(
      'https://img.icons8.com/ios/452/fingerprint.png',
      height: 100.0,
    );
  }

  Widget retroceder() {
    return Align(
      alignment: Alignment.bottomRight,
      child: BackButton(),
    );
  }

  Widget info() {
    return Center(
        child: Text(
            "Se comprobara su identidad \n por medio de la huella digital",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold)));
  }

  Widget botonvotar(BuildContext context) {
    return MaterialButton(
        shape: StadiumBorder(),
        highlightColor: Colors.white,
        color: Colors.blueGrey[600],
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Lista_Candidatos()));
        },
        child: Text(
          "Votar",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ));
  }
}
