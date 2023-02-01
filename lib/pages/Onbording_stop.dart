import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:teatros_rejionales/Utils/utils.dart';
class OnboardingStep extends StatelessWidget {
  OnboardingStep({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.color,
  }) : super(key: key);

  final String image;
  final String title;
  final String subtitle;
  final Color color;

  final TextStyle titleStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.0,
    color: CustomTheme.colorMaastrichtBlue,
  );
  final TextStyle subtitleStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w300,
    color: CustomTheme.colorSpanishGray,
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      color: CustomTheme.colorLightGray,
      child: Column(
        children: [
          SizedBox(height: 30.0),
          Image(
            image: AssetImage(image),
            width: size.width * 0.9,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 50.0),
          Container(
            width: size.width * 0.8,
            child: Text(
              title,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: size.width * 0.8,
            child: Text(
              subtitle,
              style: subtitleStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
