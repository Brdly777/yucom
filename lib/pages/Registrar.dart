import 'package:flutter/material.dart';
import 'Login.dart';

class RegistroPage extends StatefulWidget {
  RegistroPage({Key? key}) : super(key: key);

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(245, 68, 67, 65),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Crear Cuenta"),
        backgroundColor: Color.fromARGB(255, 255, 2, 2),
      ),
      body: Container /*SinglechildScrollView*/ (
        child: _FormReport(),
      ),
    );
  }
}

class _FormReport extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final NombreController = TextEditingController();
  final ApellidoController = TextEditingController();
  final EdadController = TextEditingController();
  final CorreoController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    "¡Bienvenido! ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Proceso para registrarse ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: NombreController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Tiene que colocar Algun Texto";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 252, 3, 3)),
                        labelText: "Ingresa tu Nombre",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: ApellidoController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Tiene que colocar Algun Texto";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Ingresa tu Correo",
                        fillColor: Colors.white,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 252, 3, 3)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField( 
                    controller: EdadController,
                    validator: (value) {
               
               
               
               
                        if (value!.isEmpty) {
                        return " Tiene que colocar Algun Texto";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 252, 3, 3)),
                        labelText: "Ingresa Tu contraseña",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: PasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Tiene que colocar Algun Texto";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Confirmar Contraseña",
                        fillColor: Colors.white,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 252, 3, 3)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  /*TextFormField(
                    controller: CorreoController,
                    maxLines: 5,
                    maxLength: 1000,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Tiene que colocar Algun Texto";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 252, 3, 3)),
                        labelText: "Correo",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),*/
                  ElevatedButton(
                    child: Text("Registrar"),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 2, 2),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Valido:" +
                            NombreController.text +
                            ApellidoController.text +
                            EdadController.text +
                            CorreoController.text +
                            PasswordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 230, 0, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      child: Text(
                        "Cancelar",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                    ),
                  )
                ],
              ),
            )));
  }
}
