import 'package:flutter/material.dart';
import 'package:our_app/components/RoundedButton.dart';
import 'package:our_app/Courses/Trees.dart';
import 'package:our_app/constants.dart';

class ExerciceScreen extends StatelessWidget {
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
                                          text: 'Practice: \n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 18,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' write a procedure in pascal wich will accept a student record that\'\s we use before and add the new node to the end of the list \n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Card(
                                    color: myLightWhite,
                                    margin: EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Solution:\n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        ' -We first test if the Head is nil. If it as such, then it means that our list is still empty and what we should do is create a new Head and Tail and set Head to point to the first node.\n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        ' Otherwise, if the linked list is not full, the tail dereferences to the last node\'\s pointer and set it to point to the new node\n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '-we should update the Tail and set it to point to the most recent added node  \n\ \n\ \n\  ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        ' Var\n\   Node : TNode;\n\ >Begin\n\   Node.StudRec := StudRec;\n\   New(Node.NodePtr);\n\ 	If Head = nil Then\n\   Begin\n\  	New(Head);\n\  	New(Tail);\n\ 		Head^ := Node;\n\	End\n\ Else\n\	Begin\n\		Tail^.NodePtr^ := Node;\n\	End;\n\	Tail^ := Node;\n\ End; ',
                                                    style: TextStyle(
                                                      color: Colors.black,
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
                                  return TreesScreen();
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
