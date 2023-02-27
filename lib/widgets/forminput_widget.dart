import 'package:flutter/material.dart';
import 'package:yucom/pages/login_page.dart';

Widget formLoginEmailInput() {
  TextEditingController emailController = TextEditingController();
  return Container(
    height: 37,
    padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
    child: TextField(
      controller: emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(27.0),
        ),
        fillColor: Color.fromARGB(255, 200, 200, 200),
        filled: true,
      ),
    ),
  );
}

Widget formLoginPasswordInput() {
  TextEditingController passwordController = TextEditingController();
  return Container(
    height: 37,
    padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
    child: TextField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(27.0),
        ),
        fillColor: Color.fromARGB(255, 200, 200, 200),
        filled: true,
      ),
    ),
  );
}

Widget formRegisterEmailInput() {
  TextEditingController emailController = TextEditingController();
  return Container(
    height: 37,
    padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
    child: TextField(
      controller: emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(27.0),
        ),
        fillColor: Color.fromARGB(255, 200, 200, 200),
        filled: true,
      ),
    ),
  );
}

Widget formRegisterPasswordInput() {
  TextEditingController passwordController = TextEditingController();
  return Container(
    height: 37,
    padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
    child: TextField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(27.0),
        ),
        fillColor: Color.fromARGB(255, 200, 200, 200),
        filled: true,
      ),
    ),
  );
}
