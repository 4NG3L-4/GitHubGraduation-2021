import 'package:flutter/material.dart';
import 'package:our_app/Screens/chating/chat.dart';
import 'package:our_app/constants.dart';

class Principalecoursestudent extends StatelessWidget {
  final String nCourse;
  final String name;
  final Function press;

  Principalecoursestudent({this.nCourse, this.name, this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        width: size.width * 0.95,
        height: size.height * 0.1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          // ignore: deprecated_member_use
          child: FlatButton(
            onPressed: press,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 2),
                  child: Container(
                    margin: EdgeInsets.only(right: 230),
                    child: Text(
                      nCourse,
                      style: TextStyle(
                        color: myLightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    name,
                    style: TextStyle(
                      color: myLightWhite,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: myDarkBlue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
