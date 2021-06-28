import 'package:flutter/material.dart';
import 'package:our_app/Courses/loops/repeatloop.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/components/RoundedButton.dart';

class WhileloopScreen extends StatelessWidget {
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
                                          text: 'A while-do loop: \n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 17,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '  statement in Pascal allows repetitive computations till some test condition is satisfied. In other words, it repeatedly executes a target statement as long as a given condition is true.\n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '-Syntax:\n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '>while (condition) do S; \n\ ',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        TextSpan(
                                          text:
                                              ' \n\Where, condition is a Boolean or relational expression whose value would be true or false and S is a simple statement or group of statements within BEGIN ... END block.\n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //exemple
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Expanded(
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                //mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Exemple:\n\ ',
                                            style: TextStyle(
                                              color: myLightWhite,
                                              fontSize: 17,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                '>while number>0 do \n\ begin\n\      sum := sum + number;\n\      number := number - 2;\n\ end; ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                '\n\When the condition becomes false, program control passes to the line immediately    following the loop.\n\ ',
                                            style: TextStyle(
                                              color: myDarkBlue,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //exercice
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              //mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Flow diagram:\n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Image.network(
                                      'https://www.tutorialspoint.com/pascal/images/pascal_while_do_loop.jpg'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 220),
                        width: 120,
                        child: RoundedButton(
                          color: myDarkBlue,
                          text: 'Next',
                          textColor: myLightWhite,
                          sizee: 14,
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
    );
  }
}
