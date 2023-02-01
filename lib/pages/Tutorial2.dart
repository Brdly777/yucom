import 'package:flutter/material.dart';
import 'Registrar.dart';
import 'Login.dart';
import 'Tutorial3.dart';

class Tutorial2 extends StatefulWidget {
  Tutorial2({Key? key}) : super(key: key);

  @override
  State<Tutorial2> createState() => _Tutorial2State();
}

class _Tutorial2State extends State<Tutorial2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(''), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Teatros Regionales ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "La Mejor eleccion de teatros en tu localidad ",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12), fontSize: 20),
              ),
              Text(
                "Diversos teatros regionales de la comunidad  ",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 100,
              ),
              Center(),
              Container(
                margin: EdgeInsets.only(top: 70),
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 223, 1),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "Siguiente",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Tutorial3()));
                  },
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
