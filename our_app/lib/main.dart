import 'package:flutter/material.dart';
import 'package:our_app/Screens/Welcome/welcome_screen.dart';
import 'package:our_app/constants.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: myDarkBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: WelcomeScreen(),
        );
      },
    );
  }
}
