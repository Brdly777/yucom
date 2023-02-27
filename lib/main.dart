import 'package:flutter/material.dart';
import 'package:yucom/pages/login_page.dart';
import 'package:yucom/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yucom',
      theme: ThemeData(primarySwatch: Colors.red),
      home: RegisterPage(),
    );
  }
}
