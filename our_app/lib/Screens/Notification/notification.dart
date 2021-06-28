import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';

import 'notificationsItem.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myLightWhite,
        body: ListView.separated(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 12,
            itemBuilder: (context, index) {
              return NotificationTiles(
                title: 'Notification',
                subtitle: 'Thanks for download the app!',
                enable: true,
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            }),
      ),
    );
  }
}
