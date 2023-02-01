import 'package:flutter/material.dart';
import 'package:yucom/statemanager/carrusel.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    const String image = 'images/Destacado1.jpg';
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                padding: const EdgeInsets.all(1.0),
                onPressed: null,
                icon: Image.asset('images/logo.png', scale: 15));
          }),
          title: const Text(
            'Yucom',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              letterSpacing: 5,
              fontSize: 20,
            ),
          ),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.search, color: Colors.black, size: 30)),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.menu, color: Colors.black, size: 30))
          ],
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Image.asset(image),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 15, 15, 15),
              child: Text(
                'Un Yucateco en el pais del nunca WhatsApp',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                'Comedia Regional',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 15, 15, 15),
              child: Text(
                'INFORMACION',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 2),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 0, 15, 15),
              child: Text(
                  '🌟 ESTE VIERNES 28 DE AGOSTO 🎭 Show en tu establecimiento favorito! 🖥Teatro Cómico Yucateco 100% Familiar CUXUM Y Su Cía de Teatro Regional Presentan: AMLOnde Vamos a parar con la PANdemia VIERNES 28 de Agosto 8:30pm'),
            ),
            Padding(padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Card(
                color: Color.fromARGB(0, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const <Widget>[
                      Text('Teatro'),
                      Text("Armando Manzanero"),
                      Text('120 pesos'),
                      Padding(padding: EdgeInsets.fromLTRB(8, 25, 8, 15),
                      child: ElevatedButton(
                        onPressed: null,
                        child: Text('reservar')
                        )),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child: Carrusel(),)
                  ],
                )
              ),
            )
        ],
      )
    );
  }
}
