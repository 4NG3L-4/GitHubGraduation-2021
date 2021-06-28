import 'package:flutter/material.dart';
import 'package:our_app/Courses/Strings.dart';
import 'package:our_app/constants.dart';

class CourseCard extends StatelessWidget {
  final String nCourse;
  final String name;

  CourseCard({this.nCourse, this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 2),
              child: Text(
                nCourse,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.08),
            Container(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: myLightWhite,
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return StringsScreen();
            },
          ),
        );
      },
    );
  }
}
