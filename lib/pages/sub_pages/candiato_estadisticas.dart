import 'package:flutter/material.dart';

class Lista_candidatos extends StatelessWidget {
  const Lista_candidatos({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 59.0),
          candidato1(context),
          descripcion_candidato1(context),
          candidato2(context),
          descripcion_candidato2(context),
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

  Widget candidato1(BuildContext context) {
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

  Widget candidato2(BuildContext context) {
    return Row(
        //padding: EdgeInsets.all(20.0),
        children: [
          Expanded(
            child: Image(
              image: NetworkImage(
                  'https://votoinformado.jne.gob.pe/voto/images/fotocandidato/10001088.jpg'),
              height: 200,
            ),
          ),
          Expanded(
            child: Image(
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Fuerza_popular.svg/1200px-Fuerza_popular.svg.png'),
              height: 120,
            ),
          ),
        ]);
  }

  Widget descripcion_candidato1(BuildContext context) {
    return Column(children: <Widget>[
      Text("\nPERÚ LIBRE",
          style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 23.0,
              fontWeight: FontWeight.bold)),
      Text("Jose Pedro Castillo Terrones\n",
          style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18.0,
              fontWeight: FontWeight.bold))
    ]);
  }

  Widget descripcion_candidato2(BuildContext context) {
    return Column(children: <Widget>[
      Text("\nFUERZA POPULAR",
          style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 23.0,
              fontWeight: FontWeight.bold)),
      Text("Keiko Sofia Fujimori Higuchi\n",
          style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18.0,
              fontWeight: FontWeight.bold))
    ]);
  }
}
