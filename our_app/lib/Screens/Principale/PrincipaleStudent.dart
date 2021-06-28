import 'package:flutter/material.dart';
import 'package:our_app/Courses/Arrays.dart';
import 'package:our_app/Courses/loops/Loops.dart';
import 'package:our_app/Courses/Strings.dart';
import 'package:our_app/Courses/Trees.dart';
import 'package:our_app/Courses/linkedlist/linked_list.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/components/principalecoursestudent.dart';

class PrincipaleStudentScreen extends StatefulWidget {
  @override
  _PrincipaleStudentScreenState createState() =>
      _PrincipaleStudentScreenState();
}

class _PrincipaleStudentScreenState extends State<PrincipaleStudentScreen> {
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
                      Container(
                        child: Principalecoursestudent(
                          nCourse: "Course1",
                          name: "Strings",
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
                      ),
                      Principalecoursestudent(
                        nCourse: "Course2",
                        name: "Loops",
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
                      Principalecoursestudent(
                        nCourse: "Course3",
                        name: "Arrays",
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
                      Principalecoursestudent(
                        nCourse: "Course4",
                        name: "Linked_List",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LinkedlistScreen();
                              },
                            ),
                          );
                        },
                      ),
                      Principalecoursestudent(
                        nCourse: "Course5",
                        name: "Trees",
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
