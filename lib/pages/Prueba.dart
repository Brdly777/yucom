import 'package:flutter/material.dart';
import 'Inicio.dart';
import 'Registrar.dart';

class PruebaPage extends StatefulWidget {
  static String get routeName => '@routes/login';

  // static const String ROUTE = "/Login";

  PruebaPage({Key? key}) : super(key: key);

  @override
  _PruebaPageState createState() => _PruebaPageState();
}

class _PruebaPageState extends State<PruebaPage> {
  final _formKey = GlobalKey<FormState>();
  final CorreoController = TextEditingController();
  final PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 194, 3, 3),
          Color.fromARGB(255, 250, 9, 9),
          Color.fromARGB(255, 243, 79, 79)
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Wellcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200))),
                                child: TextFormField(
                                  controller: CorreoController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return " Tiene que colocar Algun Texto";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200))),
                                child: TextFormField(
                                  controller: PasswordController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return " Tiene que colocar Algun Texto";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70),
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 230, 0, 0),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              /* if (_formKey.currentState!.validate()) {
                                print("Valido:" +
                                    CorreoController.text +
                                    PasswordController.text);
                              }*/
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => InicioPage()));
                            },
                          ),
                        ),
                        Text(
                          "Continue with social media",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 50),
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 248, 244, 244),
                                    borderRadius: BorderRadius.circular(50)),
                                child: TextButton(
                                  child: Text(
                                    "¿Eres nuevo Usuario?",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 0, 0)),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistroPage()));
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
