import 'package:flutter/material.dart';

import 'package:our_app/constants.dart';
import 'package:our_app/Courses/linkedlist/list.dart';
import 'package:our_app/components/RoundedButton.dart';

class PointerScreen extends StatelessWidget {
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
                                          text:
                                              'introduction to the pointers: \n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'every variable is a memory location and every memory location has its address defined which can be accessed using the name of the pointer variable, which denotes an address in memory.\n\  A pointer is a dynamic variable, whose value is the address of another variable.',
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
                                                ' \n\ In the implementation below we will intialise a pointer and use it.\n\ ',
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
                                                          '>Program Pointers_Example; \n\   Var  \n\ (*we are decalring an integer pointer*) \n\   int_ptr : ^Integer; \n\    Begin\n\    (*Dynamically creates and allocates space for int_ptr*)\n\                 new(int_ptr); \n\     (*stores the number 50 in the memory location pointed to by int_ptr*) \n\    int_ptr^ := 50; \n\     Writeln(\'\The pointer is pointing to a memory location storing\'\, int_ptr^);\n\   int_ptr^ := int_ptr^ + 1;\n\ 	 Writeln(\'\Now it is increased by 1:\'\, int_ptr^); \n\   >(*the integer pointer is disposed of when calling dispose(), \n\   When a pointer is disposed of, it won\'\t be possible to use it again*)\n\  >	dispose(int_ptr^);\n\ 	Writeln(\'\The pointer has no more significance: \'\, int_ptr^);\n\>End.\n\  ',
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
                                                '- assign a NIL value to a pointer variable in case you do not have exact address to be assigned. A pointer that is assigned NIL points to nowhere. \n\ ',
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
                                  return ListScreen();
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
