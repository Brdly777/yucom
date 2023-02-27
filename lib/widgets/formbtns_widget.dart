import 'package:flutter/material.dart';

Widget btnLogin() {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.0),
          ),
          primary: Colors.red,
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 77, vertical: 17)),
      onPressed: () {},
      child: Text(
        "INICIAR SESION",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ));
}

Widget btnRegister() {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.0),
          ),
          primary: Colors.red,
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 77, vertical: 17)),
      onPressed: () {},
      child: const Text("REGISTRARSE",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)));
}
