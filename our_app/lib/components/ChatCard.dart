import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatCard extends StatelessWidget {
  final String name;
  final String messageText;
  final String image;
  ChatCard(
      {@required this.name, @required this.messageText, @required this.image});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 125,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: myLightWhite,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: CircleAvatar(
                        child: SvgPicture.asset(
                          image,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      name,
                    ),
                  ],
                ),
                Container(
                  child: Text(messageText),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      SvgPicture.asset(
                        "assets/icons/heart.svg",
                        height: 25,
                        width: 25,
                        color: myDarkBlue,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Likes",
                      ),
                      SizedBox(width: 25),
                      SvgPicture.asset(
                        "assets/icons/speech-bubble.svg",
                        height: 25,
                        width: 25,
                        color: myDarkBlue,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Comments",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
