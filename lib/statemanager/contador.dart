import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        IconButton(
            onPressed: null,
            color: Color.fromARGB(255, 209, 39, 39),
            icon: Icon(Icons.keyboard_arrow_down)),
        Text('Numero'),
        IconButton(
            onPressed: null,
            color: Colors.black,
            icon: Icon(Icons.expand_less)),
      ],
    );
  }
}