import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:our_app/Screens/Login/login_screen.dart';
import 'package:our_app/Screens/Signup/SignUpScreen.dart';
import 'package:our_app/components/RoundedButton.dart';
import 'package:our_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: FlatButton(
                    onPressed: () {},
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Get Ready For ... ',
                            style: TextStyle(
                              color: myLightWhite,
                              fontSize: MediaQuery.of(context).size.height / 40,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //autre text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: FlatButton(
                    onPressed: () {},
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'LEARNING ADVENTURE... ',
                            style: TextStyle(
                              color: myLightWhite,
                              fontSize: MediaQuery.of(context).size.height / 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SvgPicture.asset("assets/icons/undraw_programmer_imem.svg"),
            Center(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: size.height * 0.5),
                      RoundedButton(
                        color: myLightWhite,
                        text: "LOGIN",
                        textColor: myDarkBlue,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ),
                          );
                        },
                      ),
                      RoundedButton(
                        text: "SIGN UP",
                        color: myDarkBlue,
                        textColor: Colors.white,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUpScreen();
                              },
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              height: 30,
                              width: 30,
                              color: myDarkBlue,
                            ),
                            SizedBox(width: 20),
                            SvgPicture.asset(
                              "assets/icons/instagram.svg",
                              height: 30,
                              width: 30,
                              color: myDarkBlue,
                            ),
                            SizedBox(width: 20),
                            SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              height: 30,
                              width: 30,
                              color: myDarkBlue,
                            ),
                          ],
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
