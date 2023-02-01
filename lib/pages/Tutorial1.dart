import 'package:flutter/material.dart';
import 'Registrar.dart';
import 'Login.dart';
import 'Tutorial2.dart';

class Tutorial1 extends StatefulWidget {
  Tutorial1({Key? key}) : super(key: key);

  @override
  State<Tutorial1> createState() => _Tutorial1State();
}

class _Tutorial1State extends State<Tutorial1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/logo.png'), fit: BoxFit.cover)),
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
                "Gran variedad de comediantes y eventos ",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12), fontSize: 20),
              ),
              Text(
                "De todo tipo y para todos los generos y puedes adquirir los boletos desde casa   ",
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
                    color: Color.fromARGB(255, 1, 108, 248),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "Siguiente",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Tutorial2()));
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
