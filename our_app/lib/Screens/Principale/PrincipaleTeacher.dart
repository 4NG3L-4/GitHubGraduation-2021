import 'package:flutter/material.dart';
import 'package:our_app/Courses/Arrays.dart';
import 'package:our_app/Courses/loops/Loops.dart';
import 'package:our_app/Courses/Strings.dart';
import 'package:our_app/Courses/Trees.dart';
import 'package:our_app/Courses/linkedlist/linked_list.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/components/RoundedButton.dart';

class PrincipaleTeacherScreen extends StatefulWidget {
  @override
  _PrincipaleTeacherScreenState createState() =>
      _PrincipaleTeacherScreenState();
}

class _PrincipaleTeacherScreenState extends State<PrincipaleTeacherScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xFF424874), const Color(0xFFA6B1E1)],
                ),
              ),
            ),
            Center(
              widthFactor: double.infinity,
              heightFactor: double.infinity,
              child: Card(
                color: myLightWhite,
                margin: EdgeInsets.only(top: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      RoundedButton(
                        color: myDarkBlue,
                        text: "Strings",
                        textColor: myLightWhite,
                        sizee: size.width * 0.06,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return StringsScreen();
                              },
                            ),
                          );
                        },
                      ),
                      RoundedButton(
                        color: myDarkBlue,
                        text: "Loops",
                        textColor: myLightWhite,
                        sizee: size.width * 0.06,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoopsScreen();
                              },
                            ),
                          );
                        },
                      ),
                      RoundedButton(
                        color: myDarkBlue,
                        text: "Arrays",
                        textColor: myLightWhite,
                        sizee: size.width * 0.06,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ArraysScreen();
                              },
                            ),
                          );
                        },
                      ),
                      RoundedButton(
                        color: myDarkBlue,
                        text: "Linked-List",
                        textColor: myLightWhite,
                        sizee: size.width * 0.06,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                //return LinkedlistScreen();
                              },
                            ),
                          );
                        },
                      ),
                      RoundedButton(
                        color: myDarkBlue,
                        text: "Trees",
                        textColor: myLightWhite,
                        sizee: size.width * 0.06,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return TreesScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
