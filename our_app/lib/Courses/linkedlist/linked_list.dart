import 'package:flutter/material.dart';
import 'package:our_app/Courses/linkedlist/exercice.dart';
import 'package:our_app/Courses/linkedlist/list.dart';
import 'package:our_app/Courses/linkedlist/pointer.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/components/RoundedButton.dart';

class LinkedlistScreen extends StatelessWidget {
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
                child: RoundedButton(
              color: myLightWhite,
              text: 'Pointer',
              textColor: myLightBlue,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PointerScreen();
                    },
                  ),
                );
              },
            )),
            Center(
                child: RoundedButton(
              color: myLightWhite,
              text: 'Linked List',
              textColor: myLightBlue,
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
            )),
            Center(
                child: RoundedButton(
              color: myLightWhite,
              text: 'Exercice',
              textColor: myLightBlue,
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
            )),
          ],
        ),
      ),
    );
  }
}
