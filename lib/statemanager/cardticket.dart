import 'package:flutter/material.dart';

class CardTicket extends StatelessWidget {
  const CardTicket({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 12,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 5, 3),
              child: Image.asset(
                image,
                scale: 5,
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: InformationEvent(),
              ),
            ),
          ],
        ));
  }
}

class InformationEvent extends StatelessWidget {
  const InformationEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'Un Yucateco en el pais del nunca WhatsApp',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'Pase: Entrada General',
            style: TextStyle(fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'Teatro: Armando Manzanero',
            style: TextStyle(fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'Fecha: Sabado 2 de Febrero de 2023',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}