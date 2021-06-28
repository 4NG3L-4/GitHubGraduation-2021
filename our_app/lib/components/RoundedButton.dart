import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double sizee;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = myDarkBlue,
    this.textColor = Colors.white,
    this.sizee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        // ignore: deprecated_member_use
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: sizee,
            ),
          ),
        ),
      ),
    );
  }
}
