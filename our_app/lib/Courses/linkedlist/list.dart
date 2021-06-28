import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/Courses/linkedlist/exercice.dart';
import 'package:our_app/components/RoundedButton.dart';

class ListScreen extends StatelessWidget {
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
                                          text:
                                              'Introduction to Linked Lists: \n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'Linked lists make vast use of pointers since each node points to another in memory.the head  is the pointer to the first node and the tail  points to the last node.\n\ ',
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
                                                ' \n\ we will going to use a student record as our record structure to be stored in a linked list\n\ ',
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
                                                      text:
                                                          '>Type\n\  (*declaration of the linkedlist*)\n\	TStudRec = Record\n\		Name, Surname : String[450];\n\ 		ID, Age : Integer;\n\ >	End;\n\ >	TNodePtr = ^TNode;\n\	TNode = Record\n\		StudRec : TStudRec;\n\		NodePtr : TNodePtr;\n\	End;\n\Var\n\(*The head helps us find our first node in the list whereas the tail helps us to keep track of the last node in the list*) \n\> 	Head, Tail : TNodePtr;\n\>(*The SampRec will be used to pass it as an argument to linked list routines*)\n\>	SampRec : TStudRec; ',
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
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Now we do the initialisation part : \n\ ',
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
                                                      text:
                                                          '>Procedure InitLinkedList;\n\ Begin\n\     Head := nil;\n\     Tail := Head;\n\ End; ',
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
                                  return ExerciceScreen();
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
