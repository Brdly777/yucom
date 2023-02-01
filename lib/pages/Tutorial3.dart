import 'package:flutter/material.dart';
import 'Registrar.dart';
import 'Login.dart';

class Tutorial3 extends StatefulWidget {
  Tutorial3({Key? key}) : super(key: key);

  @override
  State<Tutorial3> createState() => _Tutorial3State();
}

class _Tutorial3State extends State<Tutorial3> {
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
                "Todo esto mientras convives con amigos y familia",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12), fontSize: 20),
              ),
              Text(
                  "Puedes comprar tus boletos in importar donde estes, facil,seguro y rapido    ",
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
                    color: Color.fromARGB(255, 3, 241, 3),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "Siguiente",
                    style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginPage()));
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
