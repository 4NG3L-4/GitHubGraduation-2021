import 'package:flutter/material.dart';
import 'package:our_app/Courses/loops/forloop.dart';
import 'package:our_app/Courses/loops/repeatloop.dart';
import 'package:our_app/Courses/loops/whileloop.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/components/RoundedButton.dart';

class LoopsScreen extends StatelessWidget {
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
            SingleChildScrollView(
              //widthFactor: double.infinity,
              //heightFactor: double.infinity,
              //box blanc
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
                      //partie cours
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Loops:\n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 17,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'Loops are control structures used to repeat a given section of code a certain number of timesor until a particular condition is met. \n\The main idea: it is often the case that we want an algorithm to run the same tasks multipletimes.\n\ The sequence is executed as long as the condition is true. The loop terminates when the condition is False.',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n\Types of loops :\n\  ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: RoundedButton(
                                    color: myLightWhite,
                                    text: 'For_do loop',
                                    textColor: myLightBlue,
                                    press: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return ForloopScreen();
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: RoundedButton(
                                    color: myLightWhite,
                                    text: 'While-do loop',
                                    textColor: myLightBlue,
                                    press: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WhileloopScreen();
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: RoundedButton(
                                    color: myLightWhite,
                                    text: ' Repeat-until loop',
                                    textColor: myLightBlue,
                                    press: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return RepeatloopScreen();
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
