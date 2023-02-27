import 'package:flutter/material.dart';

class CardsPrincipal extends StatelessWidget {
  const CardsPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const image = 'images/Presentador1.jpeg';
    const image1 = 'images/Presentador2.jpg';
    const image2 = 'images/Presentador3.jpeg';
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/Informacion');
            },
            child: Column(
              children: [Image.asset(image), const Text('cuxum')],
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(3.0)),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Column(
            children: [Image.asset(image1), const Text('Dzereco y Nohoch')],
          ),
        ),
        const Padding(padding: EdgeInsets.all(3.0)),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Column(
            children: [Image.asset(image2), const Text('Pinole')],
          ),
        ),
      ],
    );
  }
}