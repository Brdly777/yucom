/*import 'package:flutter/material.dart';
import 'package:teatros_rejionales/Utils/utils.dart';

class NextButton extends StatelessWidget {
  NextButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  final customBorder = BorderRadius.only(
    bottomLeft: Radius.circular(30.0),
    topLeft: Radius.circular(30.0),
  );

  final customGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      CustomTheme.colorBlue,
      CustomTheme.colorGreen,
    ],
  );

  final customTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  final customShadow = [
    BoxShadow(
      color: CustomTheme.colorBlue,
      blurRadius: 20.0,
      offset: Offset(0.0, 5.0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: customBorder,
        boxShadow: customShadow,
      ),
      child: Material(
        borderRadius: customBorder,
        child: InkWell(
          onTap: onPressed,
          splashColor: CustomTheme.colorGreen,
          borderRadius: customBorder,
          child: Ink(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              gradient: customGradient,
              borderRadius: customBorder,
            ),
            child: Text(
              'NEXT',
              style: customTextStyle,
            ),
          ),
        ),
      ),
    );
    
  }
}
*/
