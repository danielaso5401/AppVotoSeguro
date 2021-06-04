import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sub_pages/sub_sub_pages/Confirmarvoto.dart';

class Listvotocandidato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  Widget fotoscandidato1() {
    return Row(
        //padding: EdgeInsets.all(20.0),
        children: [
          Expanded(
            child: Image(
              image: NetworkImage(
                  'https://votoinformado.jne.gob.pe/voto/images/fotocandidato/27427864.jpg'),
              height: 200,
            ),
          ),
          Expanded(
            child: Image(
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Per%C3%BA_Libre_logo.svg/1200px-Per%C3%BA_Libre_logo.svg.png'),
              height: 120,
            ),
          ),
        ]);
  }

  Widget fotoscandidato2() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //padding: EdgeInsets.all(20.0),
        children: [
          Expanded(
            child: Image.network(
                'https://votoinformado.jne.gob.pe/voto/images/fotocandidato/10001088.jpg'),
          ),
          Expanded(
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Fuerza_popular.svg/1200px-Fuerza_popular.svg.png'),
          )
        ]);
  }

  Widget titulo() {
    return Center(
        child: Text("Seleccione su candidato",
            style: TextStyle(
                color: Colors.blueGrey[300],
                fontSize: 30.0,
                fontWeight: FontWeight.bold)));
  }

  Widget candidato1() {
    return Column(children: <Widget>[
      Text("PERÚ LIBRE",
          style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 23.0,
              fontWeight: FontWeight.bold)),
      Text("Jose Pedro Castillo Terrones",
          style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18.0,
              fontWeight: FontWeight.bold))
    ]);
  }

  Widget candidato2() {
    return Column(children: <Widget>[
      Text("FUERZA POPULAR",
          style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 23.0,
              fontWeight: FontWeight.bold)),
      Text("Keiko Sofia Fujimori Higuchi",
          style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18.0,
              fontWeight: FontWeight.bold))
    ]);
  }

  Widget botonvotar(BuildContext context) {
    return FlatButton(
        //highlightColor: Colors.white,
        //color: Colors.blueGrey[600],
        //padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),

        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Confirmavoto()));
        },
        child: Text(
          "Votar",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ));
  }
}
