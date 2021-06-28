import 'package:flutter/material.dart';
import 'package:our_app/Courses/loops/Loops.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/Screens/Principale/Principale.dart';
import 'package:our_app/Screens/Profile/ProfileTeacher.dart';
import 'package:our_app/Screens/Search/search.dart';
import 'package:our_app/Screens/chating/chat.dart';
import 'package:our_app/Screens/Notification/notification.dart';
import 'package:our_app/components/RoundedButton.dart';

class StringsScreen extends StatefulWidget {
  @override
  _StringsScreenState createState() => _StringsScreenState();
}

class _StringsScreenState extends State<StringsScreen> {
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
                                          text: 'Strings manipulation:\n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '  Strings are defined as an array of characters. \n\The difference between a character array and a string is the string is terminated with a special character ‘\0’.\n\Declaring a string is as simple as declaring a one dimensional array.\n\Below is the basic syntax for declaring a string in Pascal:',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n\ > S: string; \n\ S: array [10] of char;  ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
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
                                                '> var\n\ s : string; \n\ begin \n\   s:=\'\Hello, dear\'\; \n\   writeln(s); \n\    s[1]:=\'\J`\'\;    { Replace the first character with J } \n\    s[5]:=\'\y\'\;    { Replace the fifth character with y }\n\    writeln(s);   { Jelly, dear } \n\    writeln(\'\The length of s is \'\,ord(s[0])); \n\ end. ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
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
                                          text: 'Practice \n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 18,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'RendezV program \n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'We introduce the type temps_t, the procedures ecriture(t : temps_t) and lecture(t : temps_t), and the function calc_ns(t : temps_t): integer.\n\And the types: \n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                            fontSize: 14,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '> CONSTMaxRdv= 20;\n\TYPERdv_t= Recordtitre: string[63];\n\debut,fin : temps_t;\n\End;\n\ TabRdv_t= array[1..MaxRdv]of Rdv_t;',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //analyse
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
                                                    text: '1Input: \n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'Create a procedure CreateRdv(r) which read from the keyboard the input of r:Rdv_t; by calling the procedure lecture()\n\ ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' 2)Display: \n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'Create a procedure AffichRdv(r) which display in the scree the fields of r:Rdv_t by calling ecriture() \n\ ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '3)Overlapping:  \n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'Create a boolean function  Chevauche(r1,r2) which send TRUE if the r1,r2:Rdv_t overlap. \n\ ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '4)"TestJournee" \n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'Create a procedure TestJournee(j,n) which detects and display the "rendez-vous" which overlap in one day, from the n "rendez-vous" stocked in j:TabRdv_t. \n\ ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '5)Principal program: \n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'The principal program "RendezV program" ask a number of "rendez-vous", read it from the keyboard, and display the list of "rendez-vous" which overlap. \n\ ',
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
                                  return LoopsScreen();
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
