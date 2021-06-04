import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Confirmavoto extends StatelessWidget {
  //const Confirmavoto({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 170.0),
          logo(context),
          SizedBox(height: 8.0),
          mesage(),
          SizedBox(height: 53.0),
          home(context),
        ],
      ),
    ));
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

  Widget mesage() {
    return Text("VOTO CONFIRMADO",
        style: TextStyle(
            color: Colors.blueGrey[300],
            fontSize: 23.0,
            fontWeight: FontWeight.bold));
  }

  Widget home(BuildContext context) {
    return RaisedButton(
        shape: StadiumBorder(),
        color: Colors.blueGrey[600],
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          "Inicio",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
        });
  }
}
