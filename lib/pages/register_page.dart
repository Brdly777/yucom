import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController registerEmail = TextEditingController();
  TextEditingController registerPassword = TextEditingController();
  TextEditingController registerName = TextEditingController();
  TextEditingController registerSecondName = TextEditingController();
  TextEditingController registerThirdName = TextEditingController();
  TextEditingController registerUsername = TextEditingController();
  TextEditingController registerPhone = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17.0, right: 17.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: registerEmail,
                decoration: const InputDecoration(hintText: "Correo"),
              ),
              TextField(
                controller: registerPassword,
                decoration: const InputDecoration(hintText: "Contrasena"),
              ),
              TextField(
                controller: registerName,
                decoration: const InputDecoration(hintText: "Nombre"),
              ),
              TextField(
                controller: registerSecondName,
                decoration: const InputDecoration(hintText: "Apellido Paterno"),
              ),
              TextField(
                controller: registerThirdName,
                decoration: const InputDecoration(hintText: "Apellido Materno"),
              ),
              TextField(
                controller: registerUsername,
                decoration:
                    const InputDecoration(hintText: "Nombre de usuario"),
              ),
              TextField(
                controller: registerPhone,
                decoration:
                    const InputDecoration(hintText: "Numero de Telefono"),
              ),
              ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : () async {
                          setState(() {
                            isLoading = true;
                          });
                          await loginUser();
                          setState(() {
                            isLoading = false;
                          });
                        },
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : const Text("Registrarse"))
            ]),
      ),
    );
  }

  Future<void> loginUser() async {
    final String apiUrl = "https://localhost:7292/api/Cuentas/Login";
    final Map<String, String> data = {
      "id": "0",
      "email": registerEmail.text,
      "password": registerPassword.text,
      "nombre": registerName.text,
      "apellidoPaterno": registerSecondName.text,
      "apellidoMaterno": registerThirdName.text,
      "usuario": registerUsername.text,
      "telefono": registerPhone.text,
    };
    final String bodyJson = json.encode(data);
    final Uri urlParse = Uri.parse(apiUrl);
    final Response response = await http.post(
      urlParse,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: bodyJson,
    );
    final Map<String, dynamic> dataJson = jsonDecode(response.body);
    final String token = dataJson['token'];
    print(token);
    // add the token to headers for future requests
    final Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
    // example usage of token with a new request
    final Response userResponse = await http.get(
      Uri.parse('https://localhost:7292/api/Cuentas/Registrar'),
      headers: headers,
    );
    final Map<String, dynamic> userJson = jsonDecode(userResponse.body);
    print(userJson);
  }
}


/*import 'package:flutter/material.dart';
import 'package:yucom/widgets/forminput_widget.dart';
import 'package:yucom/widgets/formbtns_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Register'),
        ),
        body: formBody());
  }
}

Widget formBody() {
  return Container(
    child: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 77, 0, 0),
            child: formTitle(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 77),
            child: Text("Proceso para Registrarte"),
          ),
          formTextInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Nombre")),
            ],
          ),
          formRegisterEmailInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Correo")),
            ],
          ),
          formRegisterPasswordInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Contrasena")),
            ],
          ),
          formTextInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Apellido Paterno")),
            ],
          ),
          formTextInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Apellido Materno")),
            ],
          ),
          formTextInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Nombre de Usuario")),
            ],
          ),
          formTextInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Telefono")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
            child: Text(
              "Ya tienes una cuenta? Inicia Sesion",
              style: TextStyle(color: Colors.cyan),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27.0),
            child: btnRegister(),
          )
        ],
      ),
    ),
  );
}

Widget formTitle() {
  return Text(
    "Bievenido!",
    style: TextStyle(
        color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
  );
}*/
