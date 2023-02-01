import 'package:flutter/material.dart';
import 'package:yucom/statemanager/cardticket.dart';
import 'package:yucom/statemanager/ticketprice.dart';

class ChooseTicket extends StatelessWidget {
  const ChooseTicket({super.key});

  @override
  Widget build(BuildContext context) {
    const String image = 'images/Destacado1.jpg';
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black,));
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
          const Padding(
              padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
              child: CardTicket(image: image)),
          const SizedBox(
            height: 400,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TicketPrice(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: (){
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text(
                    'Continuar',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}