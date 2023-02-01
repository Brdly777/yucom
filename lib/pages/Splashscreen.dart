import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'Inicio.dart';
import 'Login.dart';
//import 'package:flutter_application_1/Pages/Welcome.dart';
import 'Tutorial1.dart';

class SplashScreen extends StatefulWidget {
  //SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(
      Duration(milliseconds: 2500),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (contex) => Tutorial1(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 2, 2),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Image.asset('assets/images/kawaibag.png'),
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .6,
                child: Image.asset('asset/images/Logo.PNG',
                    width: 300, height: 100),
                //child: Image.asset('images/logo.PNG'),
                //child: Image.file('image/logo.png')
                //child: Image.asset('assets/images/logo.png'),
                //child: Image.asset('assets/images/kawaibag.png'),
                //  child: FlutterLogo(size: 400),
              ),
            ),
            Spacer(),
            CircularProgressIndicator(),
            Spacer(),
            Text('Bienvenido')
          ],
        ),
      ),
    );
  }
}
