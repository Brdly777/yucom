import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  //static const String ROUTE = "/Inicio";

  InicioPage({Key? key, this.title}) : super(key: key);

  final String? title;
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Color.fromARGB(245, 68, 67, 65),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Teatros"),
        backgroundColor: Color.fromARGB(255, 255, 2, 2),
      ),
    );
  }
}
