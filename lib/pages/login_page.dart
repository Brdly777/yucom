import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17.0, right: 17.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: loginEmail,
                decoration: const InputDecoration(hintText: "Email"),
              ),
              TextField(
                controller: loginPassword,
                decoration: const InputDecoration(hintText: "Password"),
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
                      : const Text("Iniciar Sesion"))
            ]),
      ),
    );
  }

  Future<void> loginUser() async {
    final String apiUrl =
        "https://localhost:7292/api/Cuentas/Login"; // replace with your actual API URL
    final Map<String, String> data = {
      "email": loginEmail.text,
      "password": loginPassword.text,
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
      Uri.parse('https://localhost:7292/api/User'),
      headers: headers,
    );
    final Map<String, dynamic> userJson = jsonDecode(userResponse.body);
    print(userJson);
  }
}





/*class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginEmail = TextEditingController();
  final TextEditingController loginPassword = TextEditingController();

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17.0, right: 17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: loginEmail,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            TextField(
              controller: loginPassword,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            ElevatedButton(
              onPressed: () async {
                await loginUser();
              },
              child: const Text("Iniciar Sesion"),
            )
          ],
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    const apiUrl = "https://localhost:7292/api/Cuentas/Login";
    final data =
        UserLogin(email: loginEmail.text, password: loginPassword.text);
    final bodyJson = jsonEncode(data);
    final urlParse = Uri.parse(apiUrl);
    final response = await http.post(
      urlParse,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: bodyJson,
    );

    final dataJson = jsonDecode(response.body);
    final token = dataJson['token'] as String;

    // Store the token in Flutter Secure Storage
    await _storage.write(key: 'token', value: token);

    print('Token: $token');
  }
}

class UserLogin {
  final String email;
  final String password;

  UserLogin({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}*/




/*import 'package:flutter/material.dart';
import 'package:yucom/widgets/forminput_widget.dart';
import 'package:yucom/widgets/formbtns_widget.dart';
import 'package:yucom/dtos/responses/user_response_dto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Login'),
        ),
        body: formBody());
  }

  loginUser() async {
    var apiUrl = "https://localhost:7292/api/Cuentas/Login";
    var data = {"email": email.text, "password": pass.text};
    var body = json.encode(data);
    var urlParse = Uri.parse(apiUrl);
    Response response = await http.post();
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
            child: Text("Es bueno verte de Vuelta!"),
          ),
          formLoginEmailInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Correo")),
            ],
          ),
          formLoginPasswordInput(),
          Row(
            children: [
              SizedBox(width: 47),
              Align(
                  alignment: Alignment.centerLeft,
                  child: new Text("Ingresa tu Contrasena")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
            child: Text(
              "Olvidaste tu Contrasena?",
              style: TextStyle(color: Colors.cyan),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27.0),
            child: btnLogin(),
          )
        ],
      ),
    ),
  );
}

Widget formTitle() {
  return Text(
    "Inicio de Sesion",
    style: TextStyle(
        color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
  );
}*/
