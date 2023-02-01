import 'package:flutter/material.dart';
import 'package:yucom/pages/homeprincipal.dart';
import 'package:yucom/pages/information.dart';

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
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePrincipal(),
        '/Informacion' :(context) =>  const Information(),
        '/Chooseticket' :(context) => const ChooseTicket()
      },
    );
  }
}
