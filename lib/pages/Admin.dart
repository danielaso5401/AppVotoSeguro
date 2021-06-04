import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sub_pages/Admin_Candidato.dart';
import 'package:flutter_application_1/pages/sub_pages/Admin_Visitante.dart';

class Admin extends StatelessWidget {
  const Admin({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          opciones_admin(context),
          SizedBox(
            height: 200,
          ),
          retroceder(),
        ],
      ),
    ));
  }
}

Widget retroceder() {
  return Align(
    alignment: Alignment.bottomRight,
    child: BackButton(),
  );
}

Widget opciones_admin(BuildContext context) {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 140,
          ),
          titulo(),
          SizedBox(
            height: 40,
          ),
          logo(),
          SizedBox(
            height: 50,
          ),
          reg_cand(context),
          SizedBox(
            height: 5,
          ),
          reg_vis(context),
        ],
      ),
    ),
  );
}

Widget logo() {
  return Image.network(
    'https://image.flaticon.com/icons/png/512/1177/1177568.png',
    width: 120,
    height: 120,
  );
}

Widget titulo() {
  return Text("Administrador",
      style: TextStyle(
          color: Colors.blueGrey[300],
          fontSize: 35.0,
          fontWeight: FontWeight.bold));
}

Widget reg_cand(BuildContext context) {
  return FlatButton(
      color: Colors.blueGrey[600],
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Admin_Candidato()))
          },
      child: Text(
        "Registrar Candidato",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget reg_vis(BuildContext context) {
  return FlatButton(
      color: Colors.blueGrey[600],
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Admin_Visitante()))
          },
      child: Text(
        "Registrar Visitante",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}
